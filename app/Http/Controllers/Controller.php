<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Setting;
use App\News;
use App\City;
use App\Currency;
use Session;

class Controller extends BaseController {

    use AuthorizesRequests,
        DispatchesJobs,
        ValidatesRequests;

    public $_settings;
    public $_lang;
    public $slug;
    public $_currencies;

    public function __construct() {
        $currentLocale = app('laravellocalization')->getCurrentLocale();
        $settings_all = Setting::all();
        $new_array = null;
        foreach ($settings_all as $one) {
            $new_array[$one->key] = $one->value;
        }
        $this->_settings = (object) $new_array;
        $this->_lang = $currentLocale;
        $this->manage_slug();
        $news = News::orderBy("id", "desc")->limit(2)->get();
        $destinations = City::orderBy("id", "asc")->limit(3)->get();
        $this->_currencies = Currency::all();
        if (Session::get("currency_id") == null || Session::get("currency_price") == null || Session::get("currency_sign") == null) {
            Session::put('currency_id', $this->_currencies[0]->id);
            Session::put('currency_price', $this->_currencies[0]->price);
            Session::put('currency_sign', $this->_currencies[0]->sign);
        }
        view()->share("settings", $this->_settings);
        view()->share("lang", $currentLocale);
        view()->share("latest_news", $news);
        view()->share("slug", $this->slug);
        view()->share("currencies", $this->_currencies);
        view()->share("destinations", $destinations);
    }

    public function manage_slug() {
        $data = null;
        $data['title'] = "title_" . $this->_lang;
        $data['about_us'] = "about_us_" . $this->_lang;
        $data['vision'] = "vision_" . $this->_lang;
        $data['mission'] = "mission_" . $this->_lang;
        $data['why_us'] = "why_us_" . $this->_lang;
        $data['goal'] = "goal_" . $this->_lang;
        $data['content'] = "content_" . $this->_lang;
        $data['site_title'] = "site_title_" . $this->_lang;
        $data['site_address'] = "site_address_" . $this->_lang;
        $data['keywords'] = "keywords_" . $this->_lang;
        $data['description'] = "description_" . $this->_lang;
        $data['site_keywords'] = "site_keywords_" . $this->_lang;
        $data['site_description'] = "site_description_" . $this->_lang;
        $this->slug = (Object) $data;
    }

    // uncascading delete admin area
    public function checkAvailabilityToDelete($array_data) {
        foreach ($array_data as $key => $one) {
            // if table has this id
            if ($key > 0) {
                $data['type'] = "خطأ";
                $data['message'] = "لا يمكن الحذف لوجود $one متعلقة به";
                return $data;
            }
        }
        // if not
        return FALSE;
    }

    public function decodeCities($data, $city_id) {
        foreach ($data as $one) {
            $currentValue = json_decode($one);
            if (in_array($city_id, $currentValue)) {
                return false;
            }
        }
        return true;
    }

    // end uncascading delete
}
