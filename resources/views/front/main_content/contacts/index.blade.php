@extends('front.layout')
@section('page_title')
{{ trans("lang.contact_us") }}
@stop
@section('head')
<meta name="csrf-token" content="{{ csrf_token() }}">
@stop
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="contactform">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li> {{ trans("lang.contact_us") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div id="googlemap">
                        
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13810.87396281818!2d31.3049088!3d30.073602750000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e6!4m0!4m0!5e0!3m2!1sen!2seg!4v1520785032144" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                    <div class="contact-info">
                        <h2 class="title">{{ trans("lang.contact_info") }} </h2>
                        <div class="content">
                            <p> {!!  $settings->{$slug->vision}  !!}</p>
                            <ul class="list-default">
                                <li><i class="fa fa-map"></i>{!! $settings->{$slug->site_address} !!}</li>
                                <li><i class="fa fa-phone"></i>{!! $settings->site_phone !!}</li>
                                <li><i class="fa fa-envelope-o"></i>{{ $settings->site_email }}</li>
                                <li><i class="fa fa-facebook"></i>{{ $settings->site_facebook }}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                    <div class="contact-form">
                        <form method="post" id="contact_form" action="">
                              <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            <input id="contact_name" name="name" type="text" required class="form-control" placeholder=" {{ trans("lang.name") }}">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                            <input id="contact_email" name="email" type="email" class="form-control" placeholder="{{ trans("lang.email") }}  " required >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                            <input id="contact_phone" name="subject" type="text" class="form-control" placeholder=" {{ trans("lang.subject") }}" required >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 mrgbtn">
                                    <div class="form-group">
                                        <div class="input-group"> <span class="input-group-addon v-align-t"><i class="fa fa-pencil"></i></span>
                                            <textarea id="contact_text" name="message" rows="4" class="form-control" placeholder="{{ trans("lang.type_the_message_here") }} " required ></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <button id="submit_btn" class="btn btn-lg floatingbtn blue"> {{ trans("lang.send") }}<i class="fa fa-angle-double-right"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

@stop

