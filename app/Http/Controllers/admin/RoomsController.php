<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Room;

/**
 * Description of RoomsController
 *
 * @author mhmudhsham
 */
class RoomsController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $rooms = Room::orderBy('id', 'desc')->get();
        return view('admin.rooms.index', compact("rooms"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('admin.rooms.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $rooms = new Room;
        $rooms->title_ar = $request->title_ar;
        $rooms->title_en = $request->title_en;
        $rooms->title_fr = $request->title_fr;
        $rooms->title_ur = $request->title_ur;

        $rooms->save();
        //return redirect()->route('sliders-web');
        return redirect()->route('admin_rooms');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $edit = Room::find($id);
        return view('admin.rooms.edit', compact("id", 'edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {

        $rooms = Room::find((int) $id);

        $rooms->title_ar = $request->title_ar;
        $rooms->title_en = $request->title_en;
         $rooms->title_fr = $request->title_fr;
        $rooms->title_ur = $request->title_ur;
        $rooms->save();
        return redirect()->route('admin_rooms');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        $meals_count = \App\Hotel_Room::where("room_id", $id)->count();
        $make_umrah = \App\MakeUmrah::pluck("rooms");
        $hotel_reserv = \App\Hotelreservation::pluck("room_type");
        $program_reserv = \App\Programreservation::pluck("room_type");
        $count_array = array(
            $meals_count => "أسعار فنادق",
        );
        $data = $this->checkAvailabilityToDelete($count_array);
        if ($data) {
            echo json_encode($data);
            die();
        } else {
            $make_umrah_ee = $this->decodeCities($make_umrah, $id);
            $hotel_reserv_ee = $this->decodeCities($hotel_reserv, $id);
            $program_reserv_ee = $this->decodeCities($program_reserv, $id);
            if ($make_umrah_ee && $hotel_reserv_ee && $program_reserv_ee) {
                Room::destroy((int) $id);
                $data['type'] = "success";
                $data['message'] = "تم الحذف بنجاح";
                echo json_encode($data);
                die();
            } else {
                if (!$make_umrah_ee) {
                    $data['type'] = "خطأ";
                    $data['message'] = "لا يمكن الحذف لوجود حجز صمم عمرتك متعلقة به";
                    echo json_encode($data);
                    die();
                }
                if (!$hotel_reserv_ee) {
                    $data['type'] = "خطأ";
                    $data['message'] = "لا يمكن الحذف لوجود حجز فنادق متعلقة به";
                    echo json_encode($data);
                    die();
                }
                if (!$program_reserv_ee) {
                    $data['type'] = "خطأ";
                    $data['message'] = "لا يمكن الحذف لوجود حجز برامج متعلقة به";
                    echo json_encode($data);
                    die();
                }
            }
        }
    }

}
