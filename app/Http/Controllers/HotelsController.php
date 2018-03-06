<?php

namespace App\Http\Controllers;

use Session;
use DB;
use Illuminate\Http\Request;
use App\Hotel;
use App\Feature;
use App\Room;
use App\City;
use App\Hotel_Room;
use App\Hotelreservation;

/**
 * Description of HotelsController
 *
 * @author mhmudhsham
 */
class HotelsController extends Controller {

    public function index() {
        $hotels_count = Hotel::get()->count();
        $start_date = date("Y-m-d");   // default start date is today
        $hotels = Hotel::orderBy("id", "desc")
                ->with("hotel_rooms")
                ->whereHas("hotel_rooms", function($query) use($start_date) {    // get hotels only have rooms
                    $query->where("start_date", ">", $start_date);
                    $query->where("currency_id", Session::get("currency_id"));
                })
                ->limit(9)
                ->get();
        $count = Hotel::with("hotel_rooms")   // get with the rooms of the hotel
                ->whereHas("hotel_rooms", function($query) use($start_date) {    // get hotels only have rooms
                    $query->where("start_date", ">=", $start_date);
                    $query->where("currency_id", Session::get("currency_id"));
                })
                ->orderBy("id", "desc")
                ->get()
                ->count();
        $cities = City::all();
        $rooms = Room::all();
        return view("front.hotels.index", compact('hotels', 'hotels_count', 'cities', 'rooms', 'count'));
    }

    public function details($id, $title) {
        $start_date = date("Y-m-d");   // default start date is today
        $details = Hotel::orderBy("id", "desc")
                ->with("hotel_rooms")
                ->whereHas("hotel_rooms", function($query) use($start_date) {    // get hotels only have rooms
                    $query->where("start_date", ">", $start_date);
                    $query->where("currency_id", Session::get("currency_id"));
                })
                ->with("country")
                ->with("city")
                ->with("slider")
                ->find($id);
        // check if the same room with meal but in another date remove it from the array
        $filtered_array = array();
        $contained_array = array();
        foreach ($details->hotel_rooms as $one) {
            if (in_array($one->meal_id, $filtered_array) && array_key_exists($one->room_id, $filtered_array)) {
                continue;
            }
            $filtered_array[$one->room_id] = $one->meal_id;
            array_push($contained_array, $one->id);
        }
        $features = json_decode($details->features);
        $rooms = Room::all();
        $features_array = Feature::whereIn("id", $features)->get();
        $similar_hotels = Hotel::orderBy("id", "desc")->where("id", "!=", $id)->limit(9)->get();
        return view("front.hotels.details", compact('details', 'features_array', 'similar_hotels', 'rooms', 'id', 'contained_array'));
    }

    public function getHotelRooms($hotel_id) {
        $details = Hotel::with("hotel_rooms")->find($hotel_id);
        // check if the same room with meal but in another date remove it from the array
        $filtered_array = array();
        $contained_array = array();
        foreach ($details->hotel_rooms as $one) {
            if (in_array($one->meal_id, $filtered_array) && array_key_exists($one->room_id, $filtered_array)) {
                continue;
            }
            $filtered_array[$one->room_id] = $one->meal_id;
            $contained_array[$one->id] = $one->rooms->{$this->slug->title} . "-" . $one->meal->{$this->slug->title};
        }
        echo json_encode($contained_array);
        die();
    }

    public function calculatePrice(Request $request) {
        $data = json_decode($request->data);
        $start_date_decoded = $data->start_date;
        $end_date_decoded = $data->end_date;
        // get days between 2 dates
        $start_date = explode("/", $data->start_date);
        $end_date = explode("/", $data->end_date);
        $new_start_date = $start_date[2] . "-" . $start_date[1] . "-" . $start_date[0];
        $new_end_date = $end_date[2] . "-" . $end_date[1] . "-" . $end_date[0];
        // to get number of days
        $datediff = $new_end_date - $new_start_date;
        $days = round($datediff / (60 * 60 * 24));
        // end number of days
        $rooms_count = $data->rooms_count;
        $rooms = $data->room_type;

        $rooms_hotels_meals_array = array();
        foreach ($rooms as $id) {
            $row = Hotel_Room::find($id);
            $rooms_hotels_meals_array[] = array(
                "hotel_id" => $row->hotel_id,
                "room_id" => $row->room_id,
                "meal_id" => $row->meal_id
            );
        }
        $total_price = 0;
        $days_array = $this->getDays($new_start_date, $new_end_date);
        foreach ($days_array as $one) {
            foreach ($rooms_hotels_meals_array as $key => $value) {
                $price = Hotel_Room::
                        where("start_date", "<=", $one)
                        ->where("end_date", ">=", $one)
                        ->where("hotel_id", $value['hotel_id'])
                        ->where("meal_id", $value['meal_id'])
                        ->where("room_id", $value['room_id'])
                        ->where("currency_id", Session::get("currency_id"))
                        ->pluck("price");
                $count_of_one = $rooms_count[$key];
                $total_price += (int) $price[0] * $count_of_one;
            }
        }
        echo $total_price . " " . Session::get("currency_sign");
        die();
    }

    function getDays($startDate, $endDate) {
        $startDate = date("Y-m-d", strtotime($startDate));
        $endDate = date("Y-m-d", strtotime($endDate));
        $Days[] = $startDate;
        $currentDate = $startDate;
        while ($currentDate < $endDate) {
            $currentDate = date("Y-m-d", strtotime("+1 day", strtotime($currentDate)));
            $Days[] = $currentDate;
        }
        return $Days;
    }

    public function book_now(Request $request) {
        $reservation = new Hotelreservation();
        $reservation->hotel_id = $request->hotel_id;
        $reservation->start_date = $request->start_date;
        $reservation->end_date = $request->end_date;
        $reservation->name = $request->name;
        $reservation->email = $request->email;
        $reservation->phone = $request->phone;
        $reservation->notes = $request->notes;
        $reservation->room_type = json_encode($request->room_type);
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

    public function filter(Request $request) {
        $filter = json_decode($request->filter);  // decode the filter object from JSON to be object
        $city_id = City::pluck("id");  // default cities id is all id of cities
        $rooms = Room::pluck("id");    // default rooms id is all id of rooms
        $end_date = $this->getTheLatestDate();  // default end date is the latest date in table
        if (isset($filter->destination) && $filter->destination != "") {
            $city_id = Array($filter->destination);  // if we have city from the filter and convert it to array
        }
        $start_date = date("Y-m-d");   // default start date is today
        if (isset($filter->check_in_day) && isset($filter->check_in_month) && $filter->check_in_day != "" && $filter->check_in_month != "") {
            // load the start date from ajax
            $start_date = date("Y") . '-' . $filter->check_in_month . "-" . $filter->check_in_day;
        }
        if (isset($filter->check_out_day) && isset($filter->check_out_month) && $filter->check_out_day != "" && $filter->check_out_month != "") {
            $end_date = date("Y") . '-' . $filter->check_out_month . "-" . $filter->check_out_day;
        }
        if (isset($filter->rooms) && $filter->rooms[0] != "") {
            $rooms = $filter->rooms;
        }
        $offset = 0;
        if (isset($filter->offset) && $filter->offset != "") {
            $offset = $filter->offset;
        }
// get all hotels that has start date before this start date
        $hotels = Hotel::whereIn("city_id", $city_id)                //  get hotels of cities array
                ->with("hotel_rooms")   // get with the rooms of the hotel
                ->whereHas("hotel_rooms", function($query) use($start_date, $rooms) {    // get hotels only have rooms
                    $query->where("start_date", "<=", $start_date);
                    $query->whereIn("room_id", $rooms);
                    $query->where("currency_id", Session::get("currency_id"));
                })
                ->orderBy("id", "desc")
                ->limit(9)
                ->offset($offset)
                ->get();
        // filter hotels according to these end date
        $hotels_filtered = array();
        foreach ($hotels as $key => $one) {
            $count = $this->getEndDateOfHotel($one->id, $end_date);
            if ($count > 0) {
                $hotels_filtered[$key] = $one->id;
            }
        }
        // get count of hotels after this start date
        $count_hotels = Hotel::whereIn("city_id", $city_id)                //  get hotels of cities array
                ->with("hotel_rooms")   // get with the rooms of the hotel
                ->whereHas("hotel_rooms", function($query) use($start_date, $rooms) {    // get hotels only have rooms
                    $query->where("start_date", "<=", $start_date);
                    $query->whereIn("room_id", $rooms);
                    $query->where("currency_id", Session::get("currency_id"));
                })
                ->orderBy("id", "desc")
                ->get()
                ->pluck("id");
        // count hotels to compare in filter
        $count = 0;
        foreach ($count_hotels as $key => $one) {
            $current = $this->getEndDateOfHotel($one->id, $end_date);
            if ($current > 0) {
                $count++;
            }
        }
        if ($request->lang == "en") {
            echo view("front.hotels.render", compact('hotels', 'count', 'hotels_filtered'))->render();
            die();
        } else {
            echo view("front.hotels.render_ar", compact('hotels', 'count', 'hotels_filtered'))->render();
            die();
        }
    }

    // check if there is end date after the searched end date fot this hotel
    public function getEndDateOfHotel($hotel_id, $end_date) {
        $date = Hotel_Room::where("hotel_id", $hotel_id)
                ->where("end_date", ">=", $end_date)
                ->pluck("end_date");
        return count($date);
    }

    public function getTheLatestDate() {
        $latest_date = Hotel_Room::orderBy("end_date", "desc")->limit(1)->pluck("end_date");
        return $latest_date[0];
    }

}
