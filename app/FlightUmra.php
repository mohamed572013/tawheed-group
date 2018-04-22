<?php

namespace App;

/**
 * Description of MakeUmrah
 *
 * @author mhmudhsham
 */
use Illuminate\Database\Eloquent\Model;

class FlightUmra extends Model {

    public $table = "designs_flight";

    public function makeUmrah() {
        return $this->belongsTo("App\MakeUmrah", "umra_id");
    }

}
