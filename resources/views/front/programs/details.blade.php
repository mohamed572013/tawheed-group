@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop
@section('meta')
<meta name="keywords" content="{!! str_replace('<br />', '', $details->{$slug->keywords}) !!}" />
<meta name="description" content="{!! str_replace('<br />', '', $details->{$slug->description}) !!}" />

<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/programs/details/'.$details->id . "/" . str_replace(' ', '-', $details->{$slug->title})) }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ $details->{$slug->title} }}" />
<meta property="og:description"        content="{!! str_replace('<br />', '', $details->{$slug->description}) !!}" />
<meta property="og:image"              content="{{ asset($details->image) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">{{ $details->{$slug->title} }}</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li><a href="{{ url('/'.$lang.'/programs') }}">{{ trans("lang.umrah_packages") }}</a></li>
            <li class="active">
                {{ $details->{$slug->title} }}
            </li>
        </ul>
    </div>
</div>
<input type="hidden" id="current_lang" value="{{  app('laravellocalization')->getCurrentLocale() }}" />
<section id="content">
    <div class="container">
        <div class="row">
            <div id="main" class="col-md-9 pull-left">
                <div class="tab-container style1" id="cruise-main-content">

                    <div class="tab-content">
                        <div id="photos-tab" class="tab-pane fade in active">
                            <div class="photo-gallery style1 ltr" data-animation="slide" data-sync="#photos-tab .image-carousel">
                                <ul class="slides">
                                    @foreach($details->slider as $one)
                                    <li>
                                        <img src="{{ asset($one->image) }}" style="width: 870px;height: 484px;" alt="" />
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="image-carousel style1 ltr" data-animation="slide" data-item-width="70" data-item-margin="10" data-sync="#photos-tab .photo-gallery">
                                <ul class="slides">
                                    @foreach($details->slider as $one)
                                    <li>
                                        <img src="{{ asset($one->image) }}" style="width: 70px;height: 70px;" alt="" />
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>

                <div id="cruise-features" class="tab-container">
                    <ul class="tabs">
                        <li class="active"><a href="#cruise-description" data-toggle="tab">{{ trans("lang.overview") }}</a></li>
                        <li><a href="#cruise-amenities" data-toggle="tab">{{ trans("lang.additional_service") }}</a></li>
                        <li><a href="#cruise-reviews" data-toggle="tab">{{ trans("lang.cities") }}</a></li>
                        <li><a href="#cruise-write-review" data-toggle="tab">{{ trans("lang.hotels") }}</a></li>
                        <li><a href="#cruise-availability" data-toggle="tab"> {{ trans("lang.reservation") }}</a></li>
                    </ul>
                    <div class="tab-content">

                        <div class="tab-pane fade in active" id="cruise-description">

                            <div class="long-description">
                                <h2>{{ $details->{$slug->title} }}</h2>
                                <p> {!! $details->{$slug->content} !!}
                                </p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="cruise-amenities">
                            <h2> {{ trans("lang.additional_service") }} </h2>
                            <ul>
                                @foreach($services_array as $one)
                                <li class="col-xs-12 col-sm-6 col-md-4 col-lg-4 list-group-item padding-0-4  pull-left">
                                    <img src="{{ asset($one->image) }}" class="image-32 margin-4"> {{ $one->{$slug->title} }}
                                </li>
                                @endforeach
                            </ul>
                        </div>




                        <div class="tab-pane fade" id="cruise-reviews">
                            <div class="border-box travelo-box clearfix">
                                <div class="image-box style12">
                                    @foreach($cities as $one)
                                    <article class="box">
                                        <figure>
                                            <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                                <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" class="middle-item" style="width:121px;height:101px;">
                                            </a>
                                        </figure>
                                        <div class="details">
                                            <h4 class="box-title"><a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></h4>

                                            <p> {{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 300) }} <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">[ ... ]</a> </p>
                                        </div>
                                    </article>
                                    <hr>
                                    @endforeach


                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="cruise-write-review">
                            <div class="border-box travelo-box clearfix">
                                <div class="food-dinning-list image-box style2">
                                    @foreach($hotels as $key => $one)
                                    <div class="box">
                                        <figure>
                                            <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                                <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" style="width: 260px;height: 151px;">
                                            </a>
                                        </figure>
                                        <div class="details">
                                            <div class="review-score">
                                                <div class="five-stars-container" data-placement="bottom" data-toggle="tooltip" title="" data-original-title="5 stars"><div class="five-stars" style="width: 100%;"></div></div>
                                            </div>
                                            <div class="box-title">
                                                <h4 class="title">{{ $one->{$slug->title} }}</h4>
                                                <dl>
                                                    <dt>{{ $one->city->{$slug->title} }}</dt>
                                                </dl>
                                            </div>
                                            <hr class="hidden-xs">

                                            <p> {{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 300) }} <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">[ ... ]</a> </p>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>


                        <div class="tab-pane fade" id="cruise-availability">
                            <div class="border-box travelo-box clearfix">
                                <h4 class="title col-xs-12">
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" id="program_price">

                                        </div>
                                    </div>

                                </h4>
                                <form action="#" id="book_program_form" method="post">
                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                    <input type="hidden" id="program_id" name="program_id" value="{{ $id }}" />
                                    <div class="row">
                                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12  pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.full_name") }}</label>
                                                <input type="text" name="name" class="input-text full-width required_field">
                                            </div>

                                        </div>
                                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12    pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.email") }}</label>
                                                <input type="text" name="email" class="input-text full-width ">
                                            </div>

                                        </div>
                                        <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12   pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.phone") }}</label>
                                                <input type="number" name="phone" class="input-text full-width required_field">
                                            </div>

                                        </div>


                                        <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12  form-group pull-left">
                                            <label class="control-label"> {{ trans("lang.date_of_trip") }}</label>
                                            <div class="selector">
                                                <select name="date_of_trip" class="full-width required_field date_of_trip">
                                                    @foreach($new_dates_array as $one)
                                                    <option value="{{ $one->start_date }}">{{ $one->start_date }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>


                                        <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12 form-group pull-left">
                                            <label class="control-label">{{ trans("lang.nationality") }}</label>
                                            <div class="selector">
                                                <select name="nationality" class="full-width required_field nationalities">
                                                    @foreach($nationalities as $key => $one)
                                                    <option value="{{ $key }}">{{ $one }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>

                                        <div class="rooms_block">
                                            <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12  form-group pull-left">
                                                <label class="control-label">{{ trans("lang.room_type") }}</label>
                                                <div class="selector">
                                                    <select name="room_type[]" class="full-width required_field">
                                                        @foreach($rooms as $one)
                                                        <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12  form-group pull-left">
                                                <label class="control-label">{{ trans("lang.meals") }}</label>
                                                <div class="selector">
                                                    <select name="meals[]" class="full-width required_field">
                                                        @foreach($meals as $one)
                                                        <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="col-sm-12  col-md-3  form-group pull-left">
                                                    <label class="control-label">{{ trans("lang.rooms") }}</label>
                                                    <input type="number" name="number_of_rooms[]" class="input-text full-width required_field">
                                                </div>
                                                <div class="col-sm-12  col-md-3  form-group pull-left">
                                                    <label class="control-label">{{ trans("lang.adults") }}</label>
                                                    <input type="number" name="adults[]" class="input-text full-width required_field">
                                                </div>

                                                <div class="col-sm-12  col-md-3 form-group pull-left">
                                                    <label class="control-label">{{ trans("lang.children") }}</label>
                                                    <input type="number" value="0" name="children[]" class="input-text full-width ">
                                                </div>
                                                <div class="col-sm-12 col-md-3 form-group pull-left">
                                                    <label class="control-label">{{ trans("lang.infants") }}</label>
                                                    <input type="number" value="0"  name="infants[]" class="input-text full-width ">
                                                </div>

                                            </div>
                                            <div class="col-sm-1 form-group pull-left">
                                                <label class="control-label"></label>
                                                <a href="" class="btn btn-info"  id="add_more" >{{ trans("lang.more") }}</a>
                                            </div>
                                        </div>
                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <label class="control-label">{{ trans("lang.details") }}</label>
                                            <textarea class="form-control" name="program_details" type="text"></textarea>
                                        </div>
                                        <div class="col-sms-offset-6 col-sm-12">
                                            <button id="submit_btn" class="button yellow full-width uppercase btn-small" >{{ trans("lang.send_booking_request") }}</button>
                                        </div>
                                    </div>
                                </form>
                            </div>


                        </div>
                    </div>

                </div>
            </div>
            <div class="sidebar col-md-3 pull-left">
                <article class="detailed-logo">

                    <div class="details">
                        <h2 class="box-title">{{ $details->{$slug->title} }}</h2>
                        <span class="price clearfix">
                            <small class="pull-left"> {{ trans("lang.start_with") }} </small>
                            <span class="pull-right">
                                @php($money = $details->dates[0]->price)
                                @php($currency_price = $details->dates[0]->currency->price)
                                {{ view("front.currency.convert", compact('money', 'currency_price')) }}
                            </span>
                        </span>
                        <span class="price clearfix">
                            <small class="pull-left"> {{ trans("lang.date") }} </small>
                            <span class="pull-right">
                                {{ $details->dates[0]->start_date }}
                            </span>
                        </span>

                        <div class="feedback clearfix">
                            <div title="{{ $details->stars }} {{ trans("lang.stars") }}" class="five-stars-container" data-toggle="tooltip" data-placement="bottom">
                                @for($i = 0; $i < $details->stars; $i++)
                                <span class="five-stars" style=""></span>
                                @endfor

                            </div>
                        </div>
                        <h2 class="box-title">{{ trans("lang.hotels") }} : </h2>
                        @foreach($hotels as $key => $one)
                        <div data-placement="top" data-toggle="tooltip" title="(  {{ $one->city->{$slug->title} }} ) - ( {{ $nights[$key] }} {{ trans("lang.nights") }} )" data-original-title="( {{ $one->city->{$slug->title} }}) - ( 5 {{ trans("lang.nights") }} )">
                            <i class="fa fa-location-arrow"></i>  {{ $one->{$slug->title} }}
                        </div>
                        @endforeach
                        <!--<a class="button yellow full-width uppercase btn-small">{{ trans("lang.book_now") }}</a>-->
                    </div>
                </article>



                @if(!$similar_programs->isEmpty())
                <div class="travelo-box">
                    <h4>{{ trans("lang.similar_programs") }}</h4>
                    <div class="image-box style14">
                        @foreach($similar_programs as $one)
                        <article class="box">
                            <figure>
                                <a href="{{ url('/'.$lang.'/programs/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                    <img src="{{ asset($one->image) }}" style="width: 63px;height: 69px;" alt="{{ $one->{$slug->title} }}">
                                </a>
                            </figure>
                            <div class="details">
                                <h5 class="box-title">
                                    <a href="{{ url('/'.$lang.'/programs/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a>
                                </h5>
                            </div>
                        </article>
                        @endforeach
                    </div>
                </div>
                @endif


                <div class="travelo-box contact-box">
                    <h4 class="box-title">{{ trans("lang.need_help") }}</h4>
                    <p>{{ mb_substr(str_replace('<br />', '', $settings->{$slug->about_us}), 0, 100) }}
                        <a href="{{ url('/'.$lang.'/about') }}"> [ ... ]</a>
                    </p>
                    <address class="contact-details">
                        <span class="contact-phone">
                            @php($phone_array = explode('/', $settings->site_phone))
                            @foreach($phone_array as $one)
                            <i class="soap-icon-phone"></i>
                            {{ $one }} <br />
                            @endforeach
                        </span>
                        <br />
                        <a href="javascript:;" class="contact-email">{{ $settings->site_email }}</a>
                    </address>
                </div>


            </div>
        </div>
    </div>
</section>
@stop
@section('libraries_scripts')
{!! HTML::script('assets/global/plugins/jquery.min.js') !!}
{!! HTML::script('front/mine/programs_booking.js') !!}
@stop