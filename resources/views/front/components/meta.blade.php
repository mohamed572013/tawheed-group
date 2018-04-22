<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>التوحيد جروب</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="{{asset('front/emad//images/icon.png')}}">
    <link rel="stylesheet" href="{{asset('front/emad//css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/normalize.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/icomoon.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/bootstrap-select.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/scrollbar.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/jquery.mmenu.all.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/prettyPhoto.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/transitions.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/form-wizard-blue.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/main.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/color.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/css/hover.css')}}">
    <!-- Current Page Styles -->
    <link rel="stylesheet" type="text/css" href="{{asset('front/emad/revolution_slider/css/settings.css')}}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{{asset('front/emad/revolution_slider/css/style.css')}}" media="screen" />
    <link rel="stylesheet" href="{{asset('front/emad/css/responsive.css')}}">
    <link rel="stylesheet" href="{{asset('front/emad/WOW-master/css/libs/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('front/emad/css/bootstrap-slider.css')}}">
    
   <!-- depend on lang -->
   @if($lang == "ar")
    <link rel="stylesheet" href="{{asset('front/emad/css/customs_ar.css')}}">
    @else
      <link rel="stylesheet" href="{{asset('front/emad/css/customs_en.css')}}">
    @endif
    <script src="{{asset('front/emad/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js')}}"></script>
    <link rel="stylesheet" href="{{asset('front/emad/css/mine.css')}}">

    
<script type="text/javascript">
    var config = {
        current_lang: "{{ $lang }}",
        site_url: "{{ url('/'.$lang) }}",
        base_url: "{{ url('/') }}",
        site_title: "{{ $settings->{$slug->site_title} }}",
        site_logo: "{{asset($settings->site_logo)}}",
    };
    var lang = {
        loading: "{{ trans('lang.loading') }}",
        load_more: "{{ trans('lang.more') }}",
        complete_request: "{{ trans('lang.complete_request') }}",
        rooms: "{{ trans('lang.rooms') }}",
        number_of_rooms: "{{ trans('lang.number_of_rooms') }}",
        number_of_adults: "{{ trans('lang.number_of_adults') }}",
        number_of_children: "{{ trans('lang.number_of_children') }}",
        number_of_infants: "{{ trans('lang.number_of_infants') }}",
        adults: "{{ trans('lang.adults') }}",
        children: "{{ trans('lang.children') }}",
        infants: "{{ trans('lang.infants') }}",
        select_meal: "{{ trans('lang.select_meal') }}",
        meals: "{{ trans('lang.meals') }}",
        remove: "{{ trans('lang.remove') }}",
        select_room: "{{ trans('lang.select_room') }}",
        room_type: "{{ trans('lang.room_type') }}",
        email_field_is_empty: "{{ trans('lang.email_field_is_empty') }}",
        not_valid_email_address: "{{ trans('lang.not_valid_email_address') }}",
        redundant_email_address: "{{ trans('lang.redundant_email_address') }}",
        successfully_subscribed: "{{ trans('lang.successfully_subscribed') }}",
    };
</script>
</head>