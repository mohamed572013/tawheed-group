<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Specialbook extends Model {

    public $table = "special_offers_book";

    public function offer() {
        return $this->belongsTo("App\Special", "special_id");
    }

}
