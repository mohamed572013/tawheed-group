<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel_Room extends Model {

    public $table = "hotels_rooms";

    public function rooms() {
        return $this->belongsTo("App\Room", "room_id");
    }

    public function hotels() {
        return $this->belongsToMany("App\Hotel");
    }

    public function currency() {
        return $this->belongsTo("App\Currency", "currency_id");
    }

}
