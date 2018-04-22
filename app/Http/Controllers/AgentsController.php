<?php

namespace App\Http\Controllers;
use App\Agent;
use App\Country;
class AgentsController extends Controller
{
       /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $agents = Agent::all();
         $countries = Country::all();
        return view("front.main_content.agents.index", compact('agents','countries'));
    }
    
     public function details($id) {
        $agent = Agent::find($id);
      
        return view("front.main_content.agents.details", compact('agent'));
    }
}
