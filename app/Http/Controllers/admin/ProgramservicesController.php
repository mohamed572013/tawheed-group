<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Programservice;
use Validator;

/**
 * Description of ProgramservicesController
 *
 * @author mhmudhsham
 */
class ProgramservicesController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $programservices = Programservice::orderBy('id', 'desc')->get();
        return view('admin.programservices.index', compact("programservices"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('admin.programservices.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
//        dd($request->all());
        $rules['image'] = 'image|mimes:jpeg,jpg,bmp,png|max:100000';
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $programservices = new Programservice;

        $programservices->title_ar = $request->title_ar;
        $programservices->title_en = $request->title_en;
        $programservices->title_fr = $request->title_fr;
        $programservices->title_ur = $request->title_ur;

        if (!empty($request->image)) {
            $file = $request->image;
            $filename = str_random(6) . '_' . time() . '_' . $file->getClientOriginalName();
            $path = 'images/programservices';
            $file->move($path, $filename);
            $programservices->image = $path . '/' . $filename;
        }
        $programservices->save();
        //return redirect()->route('sliders-web');
        return redirect()->route('admin_programservices');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $edit = Programservice::find($id);
        return view('admin.programservices.edit', compact("id", 'edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $rules['image'] = 'image|mimes:jpeg,jpg,bmp,png|max:100000';
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $programservices = Programservice::find((int) $id);

        $programservices->title_ar = $request->title_ar;
        $programservices->title_en = $request->title_en;
        $programservices->title_fr = $request->title_fr;
        $programservices->title_ur = $request->title_ur;

        if (!empty($request->image)) {
            $file = $request->image;
            $filename = str_random(6) . '_' . time() . '_' . $file->getClientOriginalName();
            $path = 'images/programservices';
            $file->move($path, $filename);
            $programservices->image = $path . '/' . $filename;
        }
        $programservices->save();
        return redirect()->route('admin_programservices');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $meals_programs = \App\Program::pluck("services");
        $meals_programs_make = \App\MakeUmrah::pluck("services");

        $meals = $this->decodeCities($meals_programs, $id);
        $meals_programs_ee = $this->decodeCities($meals_programs_make, $id);
        if ($meals && $meals_programs_ee) {
            Programservice::destroy((int) $id);
            $data['type'] = "success";
            $data['message'] = "تم الحذف بنجاح";
            echo json_encode($data);
            die();
        } else {
            if (!$meals) {
                $data['type'] = "خطأ";
                $data['message'] = "لا يمكن الحذف لوجود  برامج متعلقة به";
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
