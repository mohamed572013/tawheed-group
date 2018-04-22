<?php

namespace App\Http\Controllers;

use Session;
use Illuminate\Http\Request;
use App\Slider;
use App\Review;
use App\Partner;
use App\Agent;
use App\Gallery;
use App\Country;
use App\Hotel;
use App\City;
use App\Program;
use App\Room;
use App\Programservice;
use App\Category;
use App\Subscriber;

class HomeController extends Controller {

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $sliders = Slider::all();
        $reviews = Review::all();
        $partners = Partner::all();
        $agents = Agent::all();
        $gallery = Gallery::all();
        $hotels = Hotel::all();
        $cities = City::all();
        $sightseeing = \App\Sightseeing::all();
        $packages = Program::whereHas('dates', function ($query) {
                    $today = date("Y-m-d");
                    //$query->where("currency_id", Session::get("currency_id"));
                    $query->where("start_date", ">", $today);
                })
                ->with("dates")
                ->get();
        $countries = Country::has('agents')->get();
        return view("front.index", compact('sightseeing', 'cities', 'sliders', 'reviews', 'partners', 'agents', 'countries', 'gallery', 'hotels', 'packages'));
    }

    public function about() {
       // $settings = \App\Setting::all();
        return view("front.main_content.about.index");
    }

    public function search_agent($id) {
        if ($id != 0) {
            $agents = Agent::where("country_id", $id)->get();
        } else {
            $agents = Agent::all();
        }
        echo json_encode($agents);
        die();
    }
   public function gallery() {
        
            $galleries = Gallery::all();
            return view("front.main_content.galleries.index", compact('galleries'));
     
    }
    public function make_your_umrah() {
        $categories = Category::all();
        $rooms = Room::all();
        $meals = \App\Meal::all();
        $services = Programservice::all();
        return view("front.main_content.make_umra.index", compact('meals', 'categories', 'rooms', 'services'));
    }

    public function make_your_umrah_group() {
        $categories = Category::all();
        $rooms = Room::all();
        $meals = \App\Meal::all();
        $services = Programservice::all();
        return view("front.make_your_umrah_group.index", compact('meals', 'categories', 'rooms', 'services'));
    }

    public function send_make_your_umrah(Request $request) {
       // echo $request;        die();
        $make_your_umrah = new \App\MakeUmrah();
        $make_your_umrah->season_id = $request->season_id;
        $make_your_umrah->makka_hotel = $request->makka_hotel;
        $make_your_umrah->makka_nights = $request->makka_nights;
        $make_your_umrah->makka_arrive = $request->makka_arrive;
        $make_your_umrah->madina_hotel = $request->madina_hotel;
        $make_your_umrah->madina_nights = $request->madina_nights;
        $make_your_umrah->madina_arrive = $request->madina_arrive;
        $make_your_umrah->services = json_encode(['2']);
        $make_your_umrah->rooms = json_encode($request->rooms);
        $make_your_umrah->number_of_rooms = json_encode($request->number_of_rooms);
        $make_your_umrah->number_of_adults = json_encode($request->number_of_adults);
        $make_your_umrah->number_of_children = json_encode($request->number_of_children);
        $make_your_umrah->number_of_infants = json_encode($request->number_of_infants);
        $make_your_umrah->meals = json_encode($request->meals);
        $make_your_umrah->name = $request->name;
        $make_your_umrah->email = $request->email;
        $make_your_umrah->phone = $request->phone;
        $make_your_umrah->notes = $request->notes;
        $make_your_umrah->type = $request->type;
        $save = $make_your_umrah->save();
        
        if ($save) {
            
           //section to be done
//        $flightUmra = new \App\FlightUmra();
//        $flightUmra->departure_city = $request->flight_direction_from;
//        $flightUmra->arrival_city = $request->flight_direction_to;
//        $flightUmra->back_from = $request->direction_of_return_from;
//        $flightUmra->back_to = $request->direction_of_return_to;
//        $flightUmra->umra_id = $save->id;
//        $saveF = $flightUmra->save();
        //if ($saveF) {
        
            echo  1;
        die();
        
        }else {
            echo 0;
            die();
        }
//        } else {
//            echo 0;
//            die();
//        }
    }

    public function get_more_make() {
        $lang = $_GET['lang'];
        $rooms = Room::all();
        $meals = \App\Meal::all();
         
         echo view("front.main_content.make_umra.render", compact('rooms', 'meals'))->render();
        die();
        echo json_encode($data);
        die();
    }

    public function change_currency($id, $price, $sign) {
        Session::put('currency_id', $id);
        Session::put('currency_price', $price);
        Session::put('currency_sign', $sign);
    }

    public function subscribe($email) {
        $count = Subscriber::where("email", $email)->count();
        if ($count > 0) {
            echo 0;
            die(); // already subscribed
        } else {
            $subscribe = new Subscriber();
            $subscribe->email = $email;
            $add = $subscribe->save();
            if ($add) {
                echo 1;
                die();  // successfully added
            }
        }
    }

}
