<?php

namespace App\Http\Controllers;

use Session;
use Illuminate\Http\Request;
use App\Program;
use App\Programservice;
use App\Hotel;
use App\City;
use App\Special;
use App\Room;
use App\Programdate;
use App\Programreservation;
use App\Nationality;
use App\Category;

/**
 * Description of Programs
 *
 * @author mhmudhsham
 */
class ProgramsController extends Controller {

    public $_dates;
    public $_max_price;
    public $_min_price;
    public $from;
    public $to;

    public function index(Request $request) {
        //$currency_id = Session::get("currency_id");
        $today = date("Y-m-d");
        // get all current programs
        $programs_count = Program::with("dates")
                        ->whereHas('dates', function ($query) {
                            $today = date("Y-m-d");
                            $query->where("start_date", ">", $today);
                        })->get()->count();

        // get all programs with date larger than today + currency
        $programs = Program::with("dates")
                ->whereHas('dates', function ($query) {
                    $today = date("Y-m-d");
                   
                    $query->where("start_date", ">", $today);
                })
                ->orderBy("id", "desc")
                
                ->get();


        $dates = Programdate::where("start_date", ">", $today)
                ->orderBy("start_date", "asc")
                ->get();
        $new_dates = $new_dates_array = array();
        foreach ($dates as $one) {
            if (in_array($one->start_date, $new_dates))
                continue;
            $new_dates[] = $one->start_date;
            $new_dates_array[] = $one;
        }
        $hotels = Hotel::all();
        $services = Programservice::all();
        $categories = Category::withCount('programs')->get();
        $minMaxPriceArray = $this->getMinMaxPrice($dates);
// get all prices in one array
        $pricesArray = $this->makePricesArray($minMaxPriceArray);
        $minPrice = 0;
        $maxPrice = 2000;
        if (!empty($pricesArray)) {
            $minPrice = min($pricesArray);
            $maxPrice = max($pricesArray);
        }
        $current_sign = Session::get("currency_sign");

        return view("front.main_content.programs.index", compact("today", "currency_id", "minPrice", "maxPrice", "current_sign", "new_dates_array", "hotels", 'programs', 'programs_count', 'categories', 'services'));
    }

    public function makePricesArray($data) {
        $pricesArray = array();
        foreach ($data as $one) {
            $pricesArray[] = $one[0];
        }
        return $pricesArray;
    }

// get array of all prices and make new array of converted prices
    public function getMinMaxPrice($dates) {
        $prices = array();
        foreach ($dates as $one) {
            
                $pricesConverted = $this->convertPrice($one->price, $one->currency->price);
                $pricesConvertedArray = explode("-", $pricesConverted);
                $prices[] = array($pricesConvertedArray[0], $pricesConvertedArray[1]);
            
        }
        return $prices;
    }

// convert the prices
    public function convertPrice($money, $price) {
        $desired_currency_price = Session::get("currency_price");
        $desired_currency_sign = Session::get("currency_sign");
        $semi_converted = $money * $price;
        $fully_converted = $semi_converted / $desired_currency_price;
        return $fully_converted . "-" . $desired_currency_sign;
    }

    public function handleFilter(Request $request) {
        //echo $request->s;; die();
        $filter = array();
        $currency_id = Session::get("currency_id");
        $today = date("Y-m-d");
        $this->from=date("Y-m-d");
         $filter['from']=  $this->from ;
        $d=mktime(11, 14, 54, 8, 12, 2030);
        
        $this->to=date("Y-m-d", $d);
        $filter['to']= $this->to ;
        $seasons = $this->getDefaultSeasons();
        $this->_dates = $this->getAllDates();
       
       $this->_min_price=0;
       $this->_max_price=10000;
        $offset = 0;
         if (isset($request->fromdates) && $request->fromdates != "") {
             $this->from = $request->fromdates;
            $filter['from']= $this->from;
        }
       
        if (isset($request->todates) && $request->todates != "") {
            $this->to = $request->todates;
            $filter['to']= $this->to ;
           
        }
        
        if (isset($request->season) && $request->season != "") {
            $seasons = $request->season;
            $filter['s']=$seasons;
        }
       
//        if (isset($request->dates) && $request->dates != "") {
//            $this->_dates = $request->dates;
//            $filter['d']= $this->_dates ;
//            $dat=true;
//        }
        if (isset($request->price) && $request->price != "") {
             $explode= explode(",",$request->price);
             $this->_min_price = $explode['0'];
              $this->_max_price = $explode['1'];
             $filter['p']= $explode ;
        }
//       return json_encode($filter);
//       die();
        // $programs = Program::all();
        
        
       $programs = Program::with("dates")
                        ->whereHas('dates', function ($query) {
                           
                            $query->whereBetween('price', [$this->_min_price, $this->_max_price]);
                            $query->whereBetween("start_date",[ $this->from,$this->to]);
                            //$query->where("start_date", "=", $this->_dates);
                            })
                          ->whereIn("category_id",$seasons) ->limit(12)
               ->offset($offset)
                ->orderBy("id", "desc")->get();
//          return json_encode($programs);
//           die();
        echo view("front.main_content.programs.render", compact('programs', 'currency_id', 'today'))->render();
        die();
    }

    // get id of all seasons
    public function getDefaultSeasons() {
        return Category::pluck("id");
    }

    // get all dates that after today
    public function getAllDates() {
        $today = date("Y-m-d");
        return Programdate::where("start_date", ">", $today)->pluck("start_date");
    }

    public function details($id) {
        $today = date("Y-m-d");
        $details = Program::with("country")->with("slider")->with("dates")->with("transport")->find($id);
//        dd($details);
       $services = json_decode($details->services);
        $city_ids = json_decode($details->city_id);
        $hotel_ids = json_decode($details->hotel_id);
        $nights = json_decode($details->nights);
        $services_array = Programservice::whereIn("id", $services)->get();
        $cities = City::whereIn("id", $city_ids)->get();
        $hotels = Hotel::whereIn("id", $hotel_ids)->get();
        $dates = Programdate::with("nationality")
                ->orderBy("start_date", "asc")
                ->where("program_id", $id)
                ->where("start_date", ">", $today)
                ->get();
        $nationalities = null;
        foreach ($dates as $one) {
// to get the nationalities of only the first date
            if ($dates[0]->start_date == $one->start_date)
                $nationalities[$one->nationality->id] = $one->nationality->{$this->slug->title};
        }
// to remove dublicated dates
        $new_dates = $new_dates_array = array();
        foreach ($dates as $one) {
            if (in_array($one->start_date, $new_dates))
                continue;
            $new_dates[] = $one->start_date;
            $new_dates_array[] = $one;
        }
        $rooms = Room::all();
        $meals = \App\Meal::all();
        $similar_programs = $this->getSimilarPrograms($id);
        return view("front.main_content.programs.details", compact('nights', 'meals', 'id', 'nationalities', 'rooms', 'new_dates_array', 'details', 'services_array', 'cities', 'hotels', 'similar_programs'));
    }

    public function getNationalitiesOfDate($id, $lang) {
        $dates = Programdate::with("nationality")->where("start_date", $id)->get();
        $nationalities = null;
        $title = "title_" . $lang;
        foreach ($dates as $one) {
// to get the nationalities of only the first date
            if ($dates[0]->start_date == $one->start_date)
                $nationalities[$one->nationality->id] = $one->nationality->$title;
        }
        $options = "";
        foreach ($nationalities as $key => $one) {
            $options .= "<option " . $key . ">" . $one . "</option>";
        }
        echo $options;
        die();
    }

    public function getPriceByNationality($program_id, $nationality_id, $date_of_trip) {
//        echo $program_id;
//        die();
        $dates = Programdate::with("nationality")
                ->with("currency")
                ->where("start_date", $date_of_trip)
                ->where("program_id", $program_id)
                ->where("nationality_id", $nationality_id)
                ->first();
        $price["price"] = $dates->price;
        $price["currency"] = $dates->currency->price;
        echo json_encode($price);
        die();
    }

    public function getSimilarPrograms($id) {
        $today = date("Y-m-d");
        $programs = Program::orderBy("id", "desc")->where("id", "!=", $id)->limit(3)->get();
        return $programs;
    }

    public function book_now(Request $request) {

        $reservation = new Programreservation();
        $reservation->program_id = $request->program_id;
        $reservation->date_id = $request->date_of_trip;
        $reservation->nationality_id = $request->nationality;
        $reservation->name = $request->name;
        $reservation->email = $request->email;
        $reservation->phone = $request->phone;
        $reservation->notes = $request->program_details;
        $reservation->room_type = json_encode($request->room_type);
        $reservation->meals = json_encode($request->meals);
        $reservation->number_of_rooms = json_encode($request->number_of_rooms);
        $reservation->adults = json_encode($request->adults);
        $reservation->children = json_encode($request->children);
        $reservation->infants = json_encode($request->infants);
        $result = $reservation->save();
        if ($result) {
            echo 1;
            die();
        } else {
            echo 0;
            die();
        }
    }

    public function special_offers(Request $request) {
        $special_count = Special::where("active", 1)->get()->count();
        $special = Special::where("active", 1)->orderBy("id", "desc")->limit(12)->get();
        if ($request->ajax()) {
            $offset = $request->offset;
            $special = Special::where("active", 1)->orderBy("id", "desc")->limit(12)->offset($offset)->get();
            $view = view("front.main_content.specials.special_render", compact('special'))->render();
            echo $view;
            die();
        }
        $other_special = Special::where("active", 1)->orderBy("id", "asc")->limit(12)->get();
//        dd(count($other_special));
        return view("front.main_content.specials.index", compact('special', 'special_count', 'other_special'));
    }

    public function special_details($id) {
        $details = Special::find($id);
        return view("front.main_content.specials.details", compact('details', 'id'));
    }

    public function special_offers_book(Request $request) {
//        echo $request;
//            die();
        $special = new \App\Specialbook();
        $special->special_id = $request->id;
        $special->name = $request->name;
        $special->email = $request->email;
        $special->phone = $request->subject;
        $special->message = $request->message;
        $saved=$special->save();
        if($saved){
            echo 1;
            die();
        }else{
            echo 0;
            die();
        }
    }

}
