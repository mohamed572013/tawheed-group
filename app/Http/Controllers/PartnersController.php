<?php

namespace App\Http\Controllers;

use App\Partner;

class PartnersController extends Controller {

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $partners = Partner::all();
        return view("front.main_content.partners.index", compact('partners'));
    }

}
