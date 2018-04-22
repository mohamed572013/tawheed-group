<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Meal;

/**
 * Description of MealsController
 *
 * @author mhmudhsham
 */
class MealsController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $meals = Meal::orderBy('id', 'desc')->get();
        return view('admin.meals.index', compact("meals"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('admin.meals.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $meals = new Meal;
        $meals->title_ar = $request->title_ar;
        $meals->title_en = $request->title_en;
        $meals->title_fr = $request->title_fr;
        $meals->title_ur = $request->title_ur;

        $meals->save();
        //return redirect()->route('sliders-web');
        return redirect()->route('admin_meals');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $edit = Meal::find($id);
        return view('admin.meals.edit', compact("id", 'edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {

        $meals = Meal::find((int) $id);

        $meals->title_ar = $request->title_ar;
        $meals->title_en = $request->title_en;
        $meals->title_fr = $request->title_fr;
        $meals->title_ur = $request->title_ur;
        $meals->save();
        return redirect()->route('admin_meals');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $meals_count = \App\Hotel_Room::where("meal_id", $id)->count();
        $meals_programs = \App\Programreservation::pluck("meals");
        $meals_programs_make = \App\MakeUmrah::pluck("meals");
        $count_array = array(
            $meals_count => "أسعار فنادق",
        );
        $data = $this->checkAvailabilityToDelete($count_array);
        if ($data) {
            echo json_encode($data);
            die();
        } else {
            $meals = $this->decodeCities($meals_programs, $id);
            $meals_programs_ee = $this->decodeCities($meals_programs_make, $id);
            if ($meals && $meals_programs_ee) {
                Meal::destroy((int) $id);
                $data['type'] = "success";
                $data['message'] = "تم الحذف بنجاح";
                echo json_encode($data);
                die();
            } else {
                if (!$meals) {
                    $data['type'] = "خطأ";
                    $data['message'] = "لا يمكن الحذف لوجود حجز برامج متعلقة به";
                    echo json_encode($data);
                    die();
                }
                if (!$meals_programs_ee) {
                    $data['type'] = "خطأ";
                    $data['message'] = "لا يمكن الحذف لوجود حجز صمم عمرتك متعلقة به";
                    echo json_encode($data);
                    die();
                }
            }
        }
    }

}
