<?php

    if (!empty($_GET)) {
        $page = $_GET['page'];
    } else {
        $page = 'index';
    }
    switch ($page) {
        case 'error':
            $main_content = 'error';
            include 'layout.php';
            break;
        case 'error_en':
            $main_content = 'error_en';
            include 'layout_en.php';
            break;
/***********************************************************/  
        case 'index':
            $main_content = 'index';
            include 'layout.php';
            break;
        case 'index_en':
            $main_content = 'index_en';
            include 'layout_en.php';
            break;
/***********************************************************/
        case 'contact':
            $main_content = 'contact';
            include 'layout.php';
            break;
        case 'contact_en':
            $main_content = 'contact_en';
            include 'layout_en.php';
            break;
/***********************************************************/      
        case 'about':
            $main_content = 'about';
            include 'layout.php';
            break;
        case 'about_en':
            $main_content = 'about_en';
            include 'layout_en.php';
            break;
/***********************************************************/       
        case 'visa':
            $main_content = 'visa';
            include 'layout.php';
            break;
        case 'visa_en':
            $main_content = 'visa_en';
            include 'layout_en.php';
            break;
/***********************************************************/     
        case 'login':
            $main_content = 'login';
            include 'layout.php';
            break;
        case 'login_en':
            $main_content = 'login_en';
            include 'layout_en.php';
            break;
/***********************************************************/  
        case 'register':
            $main_content = 'register';
            include 'layout.php';
            break;
        case 'register_en':
            $main_content = 'register_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'partners':
            $main_content = 'partners';
            include 'layout.php';
            break;
        case 'partners_en':
            $main_content = 'partners_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'agents':
            $main_content = 'agents';
            include 'layout.php';
            break;
        case 'agents_en':
            $main_content = 'agents_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'sightseening':
            $main_content = 'sightseening';
            include 'layout.php';
            break;
        case 'sightseening_en':
            $main_content = 'sightseening_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'omra_programs':
            $main_content = 'omra_programs';
            include 'layout.php';
            break;
        case 'omra_programs_en':
            $main_content = 'omra_programs_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'prog_details':
            $main_content = 'prog_details';
            include 'layout.php';
            break;
        case 'prog_details_en':
            $main_content = 'prog_details_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'hotels':
            $main_content = 'hotels';
            include 'layout.php';
            break;
        case 'hotels_en':
            $main_content = 'hotels_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'hotels_details':
            $main_content = 'hotels_details';
            include 'layout.php';
            break;
        case 'hotels_details_en':
            $main_content = 'hotels_details_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'services':
            $main_content = 'services';
            include 'layout.php';
            break;
        case 'services_en':
            $main_content = 'services_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'services_body':
            $main_content = 'services_body';
            include 'layout.php';
            break;
        case 'services_body_en':
            $main_content = 'services_body_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'gallery':
            $main_content = 'gallery';
            include 'layout.php';
            break;
        case 'gallery_en':
            $main_content = 'gallery_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'news':
            $main_content = 'news';
            include 'layout.php';
            break;
        case 'news_en':
            $main_content = 'news_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'news_body':
            $main_content = 'news_body';
            include 'layout.php';
            break;
        case 'news_body_en':
            $main_content = 'news_body_en';
            include 'layout_en.php';
            break;
/**********************************************************/
        case 'flights':
            $main_content = 'flights';
            include 'layout.php';
            break;
        case 'flights_en':
            $main_content = 'flights_en';
            include 'layout_en.php';
            break;
/**********************************************************/







/***********************************************************/      
        case 'program_hjj':
            $main_content = 'program_hjj';
            include 'layout.php';
            break;
        case 'program_hjj_en':
            $main_content = 'program_hjj_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'hajj_prog_details':
            $main_content = 'hajj_prog_details';
            include 'layout.php';
            break;
        case 'hajj_prog_details_en':
            $main_content = 'hajj_prog_details_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'create_ow_omra':
            $main_content = 'create_ow_omra';
            include 'layout.php';
            break;
        case 'create_ow_omra_en':
            $main_content = 'create_ow_omra_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'create_ow_pro':
            $main_content = 'create_ow_pro';
            include 'layout.php';
            break;
        case 'create_ow_pro_en':
            $main_content = 'create_ow_pro_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'hotels':
            $main_content = 'hotels';
            include 'layout.php';
            break;
        case 'hotels_en':
            $main_content = 'hotels_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'hotel_details':
            $main_content = 'hotel_details';
            include 'layout.php';
            break;
        case 'hotel_details_en':
            $main_content = 'hotel_details_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'makka':
            $main_content = 'makka';
            include 'layout.php';
            break;
        case 'makka_en':
            $main_content = 'makka_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'sightseening_details':
            $main_content = 'sightseening_details';
            include 'layout.php';
            break;
        case 'sightseening_details_en':
            $main_content = 'sightseening_details_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'almadina':
            $main_content = 'almadina';
            include 'layout.php';
            break;
        case 'almadina_en':
            $main_content = 'almadina_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'mnasek':
            $main_content = 'mnasek';
            include 'layout.php';
            break;
        case 'mnasek_en':
            $main_content = 'mnasek_en';
            include 'layout_en.php';
            break;  
        case 'omrah_mnasek':
            $main_content = 'omrah_mnasek';
            include 'layout.php';
            break;
        case 'omrah_mnasek_en':
            $main_content = 'omrah_mnasek_en';
            include 'layout_en.php';
            break;   
        case 'hajj_mnasek':
            $main_content = 'hajj_mnasek';
            include 'layout.php';
            break;
        case 'hajj_mnasek_en':
            $main_content = 'hajj_mnasek_en';
            include 'layout_en.php';
            break;  
/*********************************************************/
        case 'domestic_tours':
            $main_content = 'domestic_tours';
            include 'layout.php';
            break;
        case 'domestic_tours_en':
            $main_content = 'domestic_tours_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'domestic_tours_det':
            $main_content = 'domestic_tours_det';
            include 'layout.php';
            break;
        case 'domestic_tours_det_en':
            $main_content = 'domestic_tours_det_en';
            include 'layout_en.php';
            break;   
/*********************************************************/
        case 'outgoing':
            $main_content = 'outgoing';
            include 'layout.php';
            break;
        case 'outgoing_en':
            $main_content = 'outgoing_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'outgoing_det':
            $main_content = 'outgoing_det';
            include 'layout.php';
            break;
        case 'outgoing_det_en':
            $main_content = 'outgoing_det_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'destinations':
            $main_content = 'destinations';
            include 'layout.php';
            break;
        case 'destinations_en':
            $main_content = 'destinations_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'destinations_det':
            $main_content = 'destinations_det';
            include 'layout.php';
            break;
        case 'destinations_det_en':
            $main_content = 'destinations_det_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'city_details':
            $main_content = 'city_details';
            include 'layout.php';
            break;
        case 'city_details_en':
            $main_content = 'city_details_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'package_details':
            $main_content = 'package_details';
            include 'layout.php';
            break;
        case 'package_details_en':
            $main_content = 'package_details_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'program_omrah':
            $main_content = 'program_omrah';
            include 'layout.php';
            break;
        case 'program_omrah_en':
            $main_content = 'program_omrah_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'hajj_create_ow_trip':
            $main_content = 'hajj_create_ow_trip';
            include 'layout.php';
            break;
        case 'hajj_create_ow_trip_en':
            $main_content = 'hajj_create_ow_trip_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'hajj_prog_booking':
            $main_content = 'hajj_prog_booking';
            include 'layout.php';
            break;
        case 'hajj_prog_booking_en':
            $main_content = 'hajj_prog_booking_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'omrah_prog_details':
            $main_content = 'omrah_prog_details';
            include 'layout.php';
            break;
        case 'omrah_prog_details_en':
            $main_content = 'omrah_prog_details_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'omrah_prog_booking':
            $main_content = 'omrah_prog_booking';
            include 'layout.php';
            break;
        case 'omrah_prog_booking_en':
            $main_content = 'omrah_prog_booking_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
        case 'domectic_tours_booking':
            $main_content = 'domectic_tours_booking';
            include 'layout.php';
            break;
        case 'domectic_tours_booking_en':
            $main_content = 'domectic_tours_booking_en';
            include 'layout_en.php';
            break; 
/*********************************************************/
    }
?>