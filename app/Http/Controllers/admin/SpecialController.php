<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Special;
use Validator;

/**
 * Description of SpecialsController
 *
 * @author mhmudhsham
 */
class SpecialController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $special = Special::orderBy('id', 'desc')->get();
        return view('admin.special.index', compact("special"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('admin.special.add');
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
        $special = new Special;

        $special->active = $request->active;

        if (!empty($request->image)) {
            $file = $request->image;
            $filename = str_random(6) . '_' . time() . '_' . $file->getClientOriginalName();
            $path = 'images/special';
            $file->move($path, $filename);
            $special->image = $path . '/' . $filename;
        }
        $special->save();
        return redirect()->route('admin_special');
    }

    public function edit($id) {
        $edit = Special::find($id);
        return view('admin.special.edit', compact("id", 'edit'));
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
        $special = Special::find((int) $id);

        $special->active = $request->active;

        if (!empty($request->image)) {
            $file = $request->image;
            $filename = str_random(6) . '_' . time() . '_' . $file->getClientOriginalName();
            $path = 'images/special';
            $file->move($path, $filename);
            $special->image = $path . '/' . $filename;
        }
        $special->save();
        return redirect()->route('admin_special');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $special = Special::destroy((int) $id);
        $data = null;
        if ($special) {
            $data['type'] = "success";
            $data['message'] = "تم الحذف بنجاح";
        } else {
            $data['type'] = "error";
            $data['message'] = "لم يتم الحذف";
        }
        echo json_encode($data);
        die();
    }

    public function book() {
        $book = \App\Specialbook::all();
        return view("admin.special.book", compact('book'));
    }

    public function reserv_details($id) {
        $details = \App\Specialbook::find($id);
        return view("admin.special.book_details", compact('details'));
    }

}
