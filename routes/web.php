<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */
Route::get('/',  function () {
    return redirect('/ar');
});
Route::get('/ar',  "HomeController@index");
Auth::routes();
Route::group(['middleware' => 'auth'], function () {
// Admin area
    Route::get('admin', "admin\AdminController@index")->name('admin');
// sliders  admin
    Route::get('admin/sliders', "admin\SlidersController@index")->name("admin_sliders");
    Route::get('admin/sliders/add', "admin\SlidersController@create");
    Route::post('admin/sliders/store', "admin\SlidersController@store");
    Route::get('admin/sliders/edit/{id}', "admin\SlidersController@edit");
    Route::post('admin/sliders/update/{id}', "admin\SlidersController@update");
    Route::get('admin/sliders/delete/{id}', "admin\SlidersController@destroy");
    Route::get('admin/sliders/slider/{id}', "admin\SlidersController@slider")->name("sliders_slider");
    Route::post('admin/sliders/store_slider', "admin\SlidersController@store_slider");
    Route::get('admin/sliders/deleteslider/{id}', "admin\SlidersController@deleteslider");

// currencies admin
    Route::get('admin/currencies', "admin\CurrenciesController@index")->name("admin_currencies");
    Route::get('admin/currencies/add', "admin\CurrenciesController@create");
    Route::post('admin/currencies/store', "admin\CurrenciesController@store");
    Route::get('admin/currencies/edit/{id}', "admin\CurrenciesController@edit");
    Route::post('admin/currencies/update/{id}', "admin\CurrenciesController@update");
    Route::get('admin/currencies/delete/{id}', "admin\CurrenciesController@destroy");


// transportations admin
    Route::get('admin/transportations', "admin\TransportationsController@index")->name("admin_transportations");
    Route::get('admin/transportations/add', "admin\TransportationsController@create");
    Route::post('admin/transportations/store', "admin\TransportationsController@store");
    Route::get('admin/transportations/edit/{id}', "admin\TransportationsController@edit");
    Route::post('admin/transportations/update/{id}', "admin\TransportationsController@update");
    Route::get('admin/transportations/delete/{id}', "admin\TransportationsController@destroy");

// services admin
    Route::get('admin/services', "admin\ServicesController@index")->name("admin_services");
    Route::get('admin/services/add', "admin\ServicesController@create");
    Route::post('admin/services/store', "admin\ServicesController@store");
    Route::get('admin/services/edit/{id}', "admin\ServicesController@edit");
    Route::post('admin/services/update/{id}', "admin\ServicesController@update");
    Route::get('admin/services/delete/{id}', "admin\ServicesController@destroy");

// news admin
    Route::get('admin/news', "admin\NewsController@index")->name("admin_news");
    Route::get('admin/news/add', "admin\NewsController@create");
    Route::post('admin/news/store', "admin\NewsController@store");
    Route::get('admin/news/edit/{id}', "admin\NewsController@edit");
    Route::post('admin/news/update/{id}', "admin\NewsController@update");
    Route::get('admin/news/delete/{id}', "admin\NewsController@destroy");

// agents admin
    Route::get('admin/agents', "admin\AgentsController@index")->name("admin_agents");
    Route::get('admin/agents/add', "admin\AgentsController@create");
    Route::post('admin/agents/store', "admin\AgentsController@store");
    Route::get('admin/agents/edit/{id}', "admin\AgentsController@edit");
    Route::post('admin/agents/update/{id}', "admin\AgentsController@update");
    Route::get('admin/agents/delete/{id}', "admin\AgentsController@destroy");

// reviews admin
    Route::get('admin/reviews', "admin\ReviewsController@index")->name("admin_reviews");
    Route::get('admin/reviews/add', "admin\ReviewsController@create");
    Route::post('admin/reviews/store', "admin\ReviewsController@store");
    Route::get('admin/reviews/edit/{id}', "admin\ReviewsController@edit");
    Route::post('admin/reviews/update/{id}', "admin\ReviewsController@update");
    Route::get('admin/reviews/delete/{id}', "admin\ReviewsController@destroy");

// nationalities admin
    Route::get('admin/nationalities', "admin\NationalitiesController@index")->name("admin_nationalities");
    Route::get('admin/nationalities/add', "admin\NationalitiesController@create");
    Route::post('admin/nationalities/store', "admin\NationalitiesController@store");
    Route::get('admin/nationalities/edit/{id}', "admin\NationalitiesController@edit");
    Route::post('admin/nationalities/update/{id}', "admin\NationalitiesController@update");
    Route::get('admin/nationalities/delete/{id}', "admin\NationalitiesController@destroy");

// agents admin
    Route::get('admin/partners', "admin\PartnersController@index")->name("admin_partners");
    Route::get('admin/partners/add', "admin\PartnersController@create");
    Route::post('admin/partners/store', "admin\PartnersController@store");
    Route::get('admin/partners/edit/{id}', "admin\PartnersController@edit");
    Route::post('admin/partners/update/{id}', "admin\PartnersController@update");
    Route::get('admin/partners/delete/{id}', "admin\PartnersController@destroy");

// gallery admin
    Route::get('admin/gallery', "admin\GalleryController@index")->name("admin_gallery");
    Route::get('admin/gallery/add', "admin\GalleryController@create");
    Route::post('admin/gallery/store', "admin\GalleryController@store");
    Route::get('admin/gallery/edit/{id}', "admin\GalleryController@edit");
    Route::post('admin/gallery/update/{id}', "admin\GalleryController@update");
    Route::get('admin/gallery/delete/{id}', "admin\GalleryController@destroy");

// special offers admin
    Route::get('admin/special', "admin\SpecialController@index")->name("admin_special");
    Route::get('admin/special_book', "admin\SpecialController@book");
    Route::get('admin/special/reserv_details/{id}', "admin\SpecialController@reserv_details");
    Route::get('admin/special/add', "admin\SpecialController@create");
    Route::post('admin/special/store', "admin\SpecialController@store");
    Route::get('admin/special/edit/{id}', "admin\SpecialController@edit");
    Route::post('admin/special/update/{id}', "admin\SpecialController@update");
    Route::get('admin/special/delete/{id}', "admin\SpecialController@destroy");


// countries admin
    Route::get('admin/countries', "admin\CountriesController@index")->name("admin_countries");
    Route::get('admin/countries/add', "admin\CountriesController@create");
    Route::post('admin/countries/store', "admin\CountriesController@store");
    Route::get('admin/countries/edit/{id}', "admin\CountriesController@edit");
    Route::post('admin/countries/update/{id}', "admin\CountriesController@update");
    Route::get('admin/countries/delete/{id}', "admin\CountriesController@destroy");

// cities
    Route::get('admin/cities/{id}', "admin\CitiesController@index");
    Route::get('admin/cities/add/{id}', "admin\CitiesController@create");
    Route::post('admin/cities/store/{id}', "admin\CitiesController@store");
    Route::get('admin/cities/edit/{id}', "admin\CitiesController@edit");
    Route::post('admin/cities/update/{id}', "admin\CitiesController@update");
    Route::get('admin/cities/delete/{id}', "admin\CitiesController@destroy");


// sightseeing
    Route::get('admin/sightseeing/{id}', "admin\SightseeingController@index");
    Route::get('admin/sightseeing/add/{id}', "admin\SightseeingController@create");
    Route::post('admin/sightseeing/store/{id}', "admin\SightseeingController@store");
    Route::get('admin/sightseeing/edit/{id}', "admin\SightseeingController@edit");
    Route::post('admin/sightseeing/update/{id}', "admin\SightseeingController@update");
    Route::get('admin/sightseeing/delete/{id}', "admin\SightseeingController@destroy");


    // start hotels area
// rooms
    Route::get('admin/rooms', "admin\RoomsController@index")->name("admin_rooms");
    Route::get('admin/rooms/add', "admin\RoomsController@create");
    Route::post('admin/rooms/store', "admin\RoomsController@store");
    Route::get('admin/rooms/edit/{id}', "admin\RoomsController@edit");
    Route::post('admin/rooms/update/{id}', "admin\RoomsController@update");
    Route::get('admin/rooms/delete/{id}', "admin\RoomsController@destroy");

// meals
    Route::get('admin/meals', "admin\MealsController@index")->name("admin_meals");
    Route::get('admin/meals/add', "admin\MealsController@create");
    Route::post('admin/meals/store', "admin\MealsController@store");
    Route::get('admin/meals/edit/{id}', "admin\MealsController@edit");
    Route::post('admin/meals/update/{id}', "admin\MealsController@update");
    Route::get('admin/meals/delete/{id}', "admin\MealsController@destroy");


// features
    Route::get('admin/features', "admin\FeaturesController@index")->name("admin_features");
    Route::get('admin/features/add', "admin\FeaturesController@create");
    Route::post('admin/features/store', "admin\FeaturesController@store");
    Route::get('admin/features/edit/{id}', "admin\FeaturesController@edit");
    Route::post('admin/features/update/{id}', "admin\FeaturesController@update");
    Route::get('admin/features/delete/{id}', "admin\FeaturesController@destroy");


// hotels
    Route::get('admin/hotels', "admin\HotelsController@index")->name("admin_hotels");
    Route::get('admin/hotels/add', "admin\HotelsController@create");
    Route::post('admin/hotels/store', "admin\HotelsController@store");
    Route::get('admin/hotels/edit/{id}', "admin\HotelsController@edit");
    Route::post('admin/hotels/update/{id}', "admin\HotelsController@update");
    Route::get('admin/hotels/delete/{id}', "admin\HotelsController@destroy");
    Route::get('admin/hotels/getCitiesByCountry/{id}', "admin\HotelsController@getCitiesByCountry");
    Route::get('admin/hotels/slider/{id}', "admin\HotelsController@slider")->name("hotels_slider");
    Route::post('admin/hotels/store_slider', "admin\HotelsController@store_slider");
    Route::get('admin/hotels/deleteslider/{id}', "admin\HotelsController@deleteslider");
    Route::get('admin/hotels/reservations', "admin\HotelsController@reservations");
    Route::get('admin/hotels/rooms/{id}', "admin\HotelsController@rooms");
    Route::get('admin/hotels/add_room/{id}', "admin\HotelsController@add_room");
    Route::post('admin/hotels/store_room/{id}', "admin\HotelsController@store_room");
    Route::get('admin/hotels/edit_room_price/{id}', "admin\HotelsController@edit_room_price");
    Route::post('admin/hotels/update_room/{id}', "admin\HotelsController@update_room");
    Route::get('admin/hotels/reserv_details/{id}', "admin\HotelsController@reserv_details");


    // end hotels area
    // start programs area
    // categories
    Route::get('admin/categories', "admin\CategoriesController@index")->name("admin_categories");
    Route::get('admin/categories/add', "admin\CategoriesController@create");
    Route::post('admin/categories/store', "admin\CategoriesController@store");
    Route::get('admin/categories/edit/{id}', "admin\CategoriesController@edit");
    Route::post('admin/categories/update/{id}', "admin\CategoriesController@update");
    Route::get('admin/categories/delete/{id}', "admin\CategoriesController@destroy");

// programdates
    Route::get('admin/programdates/index/{id}', "admin\ProgramdatesController@index")->name("admin_programdates");
    Route::get('admin/programdates/add/{id}', "admin\ProgramdatesController@create");
    Route::post('admin/programdates/store/{id}', "admin\ProgramdatesController@store");
    Route::get('admin/programdates/edit/{id}', "admin\ProgramdatesController@edit");
    Route::post('admin/programdates/update/{id}', "admin\ProgramdatesController@update");
    Route::get('admin/programdates/delete/{id}', "admin\ProgramdatesController@destroy");

    // services
    Route::get('admin/programservices', "admin\ProgramservicesController@index")->name("admin_programservices");
    Route::get('admin/programservices/add', "admin\ProgramservicesController@create");
    Route::post('admin/programservices/store', "admin\ProgramservicesController@store");
    Route::get('admin/programservices/edit/{id}', "admin\ProgramservicesController@edit");
    Route::post('admin/programservices/update/{id}', "admin\ProgramservicesController@update");
    Route::get('admin/programservices/delete/{id}', "admin\ProgramservicesController@destroy");


    // programs
    Route::get('admin/programs', "admin\ProgramsController@index")->name("admin_programs");
    Route::get('admin/programs/reservations', "admin\ProgramsController@reservations");
    Route::get('admin/programs/reserv_details/{id}', "admin\ProgramsController@reserv_details");
    Route::get('admin/programs/make_your_umrah', "admin\ProgramsController@make_your_umrah");
    Route::get('admin/programs/view_make/{id}', "admin\ProgramsController@view_make");
    Route::get('admin/programs/add', "admin\ProgramsController@create");
    Route::post('admin/programs/store', "admin\ProgramsController@store");
    Route::get('admin/programs/edit/{id}', "admin\ProgramsController@edit");
    Route::post('admin/programs/update/{id}', "admin\ProgramsController@update");
    Route::get('admin/programs/delete/{id}', "admin\ProgramsController@destroy");
    Route::get('admin/programs/getCitiesByCountry/{id}', "admin\ProgramsController@getCitiesByCountry");
    Route::get('admin/programs/getHotelsByCity/{id}', "admin\ProgramsController@getHotelsByCity");
    Route::get('admin/programs/slider/{id}', "admin\ProgramsController@slider")->name("programs_slider");
    Route::post('admin/programs/store_slider', "admin\ProgramsController@store_slider");
    Route::get('admin/programs/deleteslider/{id}', "admin\ProgramsController@deleteslider");

    //visa
    
    Route::get('admin/visa_types', "admin\ProgramsController@index");
    Route::get('admin/visa_periods', "admin\ProgramsController@reservations");
    Route::get('admin/visa_jobs', "admin\ProgramsController@index");
    Route::get('admin/visa_documents', "admin\ProgramsController@reservations");
    Route::get('admin/visa_create', "admin\ProgramsController@index");
    Route::get('admin/visas_reservation', "admin\ProgramsController@reservations");
    

// settings
    Route::get('admin/settings', "admin\SettingsController@index")->name("admin_settings");
    Route::post('admin/settings/update', "admin\SettingsController@update");

// messages
    Route::get('admin/contacts', "admin\ContactsController@index")->name("admin_contact");

// subscribers
    Route::get('admin/subscribers', "admin\SubscribersController@index")->name("admin_subscribers");
});

#######################################################################################################
// front area
    Route::post('/contact/send', 'ContactsController@send');
     Route::post('/programs/book_now', 'ProgramsController@book_now');
     Route::post('/home/send_make_your_umrah', 'HomeController@send_make_your_umrah');
   
    // Route::any('/programs/handleDates', 'ProgramsController@handleDates');
     Route::post('/special_offers/book', 'ProgramsController@special_offers_book');
Route::group(
[
	'prefix' => LaravelLocalization::setLocale(),
	'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ,'localize']
], function() {
    /** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP * */
   // Route::get(LaravelLocalization::transRoute('/'), "HomeController@index");
      Route::get('/home/get_more_make', 'HomeController@get_more_make');
   Route::post('/programs/handleFilter', 'ProgramsController@handleFilter');
    Route::get(LaravelLocalization::transRoute('/make_your_umrah'), "HomeController@make_your_umrah");
    Route::get(LaravelLocalization::transRoute('/make_umrah'), "HomeController@make_your_umrah_group");

    Route::get(LaravelLocalization::transRoute('/about'), "HomeController@about");

    Route::get(LaravelLocalization::transRoute('/services'), "ServicesController@index");
    Route::get(LaravelLocalization::transRoute('/services/details/{id}/{title}'), "ServicesController@details");

    Route::get(LaravelLocalization::transRoute('/news'), "NewsController@index");
    Route::get(LaravelLocalization::transRoute('/news/details/{id}/{title}'), "NewsController@details");

    Route::get(LaravelLocalization::transRoute('/partners'), "PartnersController@index");
     Route::get(LaravelLocalization::transRoute('/agents'), "AgentsController@index");
     Route::get(LaravelLocalization::transRoute('/agents/details/{id}'), "AgentsController@details");
      Route::get(LaravelLocalization::transRoute('/gallery'), "HomeController@gallery");

    Route::get(LaravelLocalization::transRoute('/contact'), "ContactsController@index");



    Route::get(LaravelLocalization::transRoute('/hotels'), "HotelsController@index");
    Route::get(LaravelLocalization::transRoute('/hotels/details/{id}/{title}'), "HotelsController@details");
    Route::post('/hotels/book_now', 'HotelsController@book_now');
    Route::post('/hotels/filter', 'HotelsController@filter');
    Route::get('/hotels/getHotelRooms/{hotel_id}', 'HotelsController@getHotelRooms');
    Route::post('/hotels/calculatePrice', 'HotelsController@calculatePrice');
//    Route::get('/hotels/one_hotel/{id}/{rel}', 'HotelsController@one_hotel');

    Route::get(LaravelLocalization::transRoute('/programs'), "ProgramsController@index");
    Route::get(LaravelLocalization::transRoute('/special_offers'), "ProgramsController@special_offers");
    Route::get(LaravelLocalization::transRoute('/programs/special_details/{id}'), "ProgramsController@special_details");
    Route::get(LaravelLocalization::transRoute('/programs/details/{id}/{title}'), "ProgramsController@details");
   
   
  
   
    Route::get('/programs/getNationalitiesOfDate/{date_id}/{lang}', 'ProgramsController@getNationalitiesOfDate');
    Route::get('/programs/getPriceByNationality/{program_id}/{nationality_id}/{date_of_trip}', 'ProgramsController@getPriceByNationality');


    Route::get(LaravelLocalization::transRoute('/destinations'), "DestinationsController@index");
    Route::get(LaravelLocalization::transRoute('/destinations/details/{id}/{title}'), "DestinationsController@details");
    Route::get(LaravelLocalization::transRoute('/destinations/sightseeing/{id}/{title}'), "DestinationsController@sightseeing");

    Route::post('/home/make_your_umrah_group', 'HomeController@send_make_your_umrah');
    
    Route::get('/search_agent/{id}', 'HomeController@search_agent');
    Route::get('/home/subscribe/{email}', 'HomeController@subscribe');
    Route::get('/change_currency/{id}/{price}/{sign}', 'HomeController@change_currency');


    Route::get('/lang/{lang}', 'HomeController@lang')->name("lang");
    Route::get('/image', 'HomeController@image');
    
    
    
  
  

  
//    Route::get('/image', function() {
//
//    });
});


//members login routes
Route::get('member', 'Member\LoginController@showLoginForm')->name('member.login');
Route::post('member', 'Member\LoginController@login')->name('member.dologin');
Route::post('member/logout', 'Member\LoginController@logout')->name('member.logout');

// Registration Routes...
Route::get('member/register', 'Member\RegisterController@showRegistrationForm')->name('member.register');
Route::post('member/register', 'Member\RegisterController@register')->name('member.doregister');

//// Password Reset Routes...
//Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm');
//Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
//Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm');
//Route::post('password/reset', 'Auth\ResetPasswordController@reset');
