<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Transportation;

/**
 * Description of NationalitiesController
 *
 * @author mhmudhsham
 */
class TransportationsController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $transportations = Transportation::orderBy('id', 'desc')->get();
        return view('admin.transportations.index', compact("transportations"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('admin.transportations.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $transportations = new Transportation;
        $transportations->title_ar = $request->title_ar;
        $transportations->title_en = $request->title_en;
        $transportations->title_ur = $request->title_ur;

        $transportations->save();
        //return redirect()->route('sliders-web');
        return redirect()->route('admin_transportations');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $edit = Transportation::find($id);
        return view('admin.transportations.edit', compact("id", 'edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {

        $transportations = Transportation::find((int) $id);

        $transportations->title_ar = $request->title_ar;
        $transportations->title_en = $request->title_en;
        $transportations->title_ur = $request->title_ur;
        $transportations->save();
        return redirect()->route('admin_transportations');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $transportations = \App\Program::where("transportation_id", $id)->count();
        $count_array = array(
            $transportations => "برامج",
        );
        $data = $this->checkAvailabilityToDelete($count_array);
        if ($data) {
            echo json_encode($data);
            die();
        } else {
            Transportation::destroy((int) $id);
            $data['type'] = "success";
            $data['message'] = "تم الحذف بنجاح";
            echo json_encode($data);
            die();
        }
    }

}
