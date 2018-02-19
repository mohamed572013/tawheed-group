<?php

namespace App\Http\Controllers;

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
        $rooms2 = Room::pluck("id");    // default rooms id is all id of rooms
        $end_date = $this->getTheLatestDate();  // default end date is the latest date in table
        $start_date = date("Y-m-d");   // default start date is today
        $hotels = Hotel::orderBy("id", "desc")
                ->with("hotel_rooms")
                ->whereHas("hotel_rooms", function($query) use($start_date, $end_date, $rooms2) {    // get hotels only have rooms
                    $query->where("start_date", ">=", $start_date);
                    $query->where("end_date", "<", $end_date);
                    $query->whereIn("room_id", $rooms2);
                })
                ->limit(9)
                ->get();
        $count = Hotel::with("hotel_rooms")   // get with the rooms of the hotel
                ->whereHas("hotel_rooms", function($query) use($start_date, $end_date, $rooms2) {    // get hotels only have rooms
                    $query->where("start_date", ">=", $start_date);
                    $query->where("end_date", "<", $end_date);
                    $query->whereIn("room_id", $rooms2);
                })
                ->orderBy("id", "desc")
                ->get()
                ->count();

        $cities = City::all();
        $rooms = Room::all();
        return view("front.hotels.index", compact('hotels', 'hotels_count', 'cities', 'rooms', 'count'));
    }

    public function details($id, $title) {
        $details = Hotel::with("country")->with("city")->with("slider")->find($id);
        $features = json_decode($details->features);
        $rooms = Room::all();
        $features_array = Feature::whereIn("id", $features)->get();
        $similar_hotels = Hotel::orderBy("id", "desc")->where("id", "!=", $id)->limit(9)->get();
        return view("front.hotels.details", compact('details', 'features_array', 'similar_hotels', 'rooms', 'id'));
    }

    public function book_now(Request $request) {
//        dd($request->all());
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
        $hotels = Hotel::whereIn("city_id", $city_id)                //  get hotels of cities array
                ->with("hotel_rooms")   // get with the rooms of the hotel
                ->whereHas("hotel_rooms", function($query) use($start_date, $end_date, $rooms) {    // get hotels only have rooms
                    $query->where("start_date", ">=", $start_date);
                    $query->where("end_date", "<", $end_date);
                    $query->whereIn("room_id", $rooms);
                })
                ->orderBy("id", "desc")
                ->limit(9)
                ->offset($offset)
                ->get();
        $count = Hotel::whereIn("city_id", $city_id)                //  get hotels of cities array
                ->with("hotel_rooms")   // get with the rooms of the hotel
                ->whereHas("hotel_rooms", function($query) use($start_date, $end_date, $rooms) {    // get hotels only have rooms
                    $query->where("start_date", ">=", $start_date);
                    $query->where("end_date", "<", $end_date);
                    $query->whereIn("room_id", $rooms);
                })
                ->orderBy("id", "desc")
                ->get()
                ->count();
        echo view("front.hotels.render", compact('hotels', 'count'))->render();
        die();
    }

    public function getTheLatestDate() {
        $latest_date = Hotel_Room::orderBy("end_date", "desc")->limit(1)->pluck("end_date");
        return $latest_date[0];
    }

}
