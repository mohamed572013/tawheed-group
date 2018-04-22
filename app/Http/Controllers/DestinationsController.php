<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\City;
use App\Sightseeing;

/**
 * Description of DestinationsController
 *
 * @author mhmudhsham
 */
class DestinationsController extends Controller {

    public function index(Request $request) {
        $destinations_count = City::get()->count();
        $destinations = City::orderBy("id", "desc")->limit(9)->get();
        if ($request->ajax()) {
            $offset = $request->offset;
            $destinations = City::orderBy("id", "desc")->limit(9)->offset($offset)->get();
            $view = view("front.destinations.render", compact('destinations'))->render();
            echo $view;
            die();
        }
        return view("front.main_content.destinations.index", compact('destinations', 'destinations_count'));
    }

    public function details($id, $title) {
        $details_count = City::with("sightseeing")->get()->count();
        $details = City::with("sightseeing")->find($id);
        return view("front.main_content.destinations.details", compact('details','details_count'));
    }

    public function sightseeing($id, $title) {
         $details_count = City::with("sightseeing")->get()->count();
        $details = Sightseeing::with("city")->find($id);
        return view("front.main_content.destinations.details", compact('details','details_count'));
    }

}
