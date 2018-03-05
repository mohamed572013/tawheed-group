@extends('front.layout')
@section('page_title')
{{ trans("lang.hotels") }}
@stop
@section('meta')
<meta name="keywords" content="{!! str_replace('<br />', '', $settings->{$slug->site_keywords}) !!}" />
<meta name="description" content="{!! str_replace('<br />', '', $settings->{$slug->site_description}) !!}" />
<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/hotels') }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ trans("lang.hotels") }}" />
<meta property="og:description"        content="{!! str_replace('<br />', '', $settings->{$slug->site_description}) !!}" />
<meta property="og:image"              content="{{ asset($settings->site_logo) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('head')
<meta name="csrf-token" content="{{ csrf_token() }}">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li class="active">{{ trans("lang.hotels") }}</li>
        </ul>
    </div>
</div>
<section id="content">
    <div class="container">
        <div id="main">
            <input type="hidden" id="hotels_count" value="{{ $hotels_count }}" />
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <div class="sideform">
                        <form action="" method="" class="sideformfilter">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <label>{{ trans("lang.destination") }}</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-globe" aria-hidden="true"></i>
                                            </div>
                                            <select class="form-control required_field" id="city_selected">
                                                <option selected="selected" value="">{{ trans("lang.choose_city") }}</option>
                                                @foreach($cities as $one)
                                                <option data-id="{{ $one->id }}" class="city" value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="checkingdaterow">
                                    <div class="col-lg-12"><div class="checkingdate">{{ trans("lang.check_in_date") }}</div></div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <label>{{ trans("lang.day") }}</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                </div>
                                                <select id="check_in_day" class="form-control required_field">
                                                    <option selected="selected" value="">{{ trans("lang.choose_day") }}</option>
                                                    @for($i = 1; $i <= 31; $i++)
                                                    @if($i < 10)
                                                    <option value="0{{ $i }}">0{{ $i }}</option>
                                                    @else
                                                    <option value="{{ $i }}">{{ $i }}</option>
                                                    @endif
                                                    @endfor
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <label>{{ trans("lang.month") }}</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                </div>
                                                <select id="check_in_month" class="form-control required_field">
                                                    <option selected="selected" value="">{{ trans("lang.choose_month") }}</option>
                                                    @for($i = 1; $i <= 12; $i++)
                                                    @if($i < 10)
                                                    <option value="0{{ $i }}">0{{ $i }}</option>
                                                    @else
                                                    <option value="{{ $i }}">{{ $i }}</option>
                                                    @endif
                                                    @endfor
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="checkingdaterow">
                                    <div class="col-lg-12"><div class="checkingdate">{{ trans("lang.check_out_date") }}</div></div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <label>{{ trans("lang.day") }}</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                </div>
                                                <select id="check_out_day" class="form-control required_field">
                                                    <option selected="selected" value="">{{ trans("lang.choose_day") }}</option>
                                                    @for($i = 1; $i <= 31; $i++)
                                                    @if($i < 10)
                                                    <option value="0{{ $i }}">0{{ $i }}</option>
                                                    @else
                                                    <option value="{{ $i }}">{{ $i }}</option>
                                                    @endif
                                                    @endfor
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <label>{{ trans("lang.month") }}</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                                </div>
                                                <select id="check_out_month" class="form-control required_field">
                                                    <option selected="selected" value="">{{ trans("lang.choose_month") }}</option>
                                                    @for($i = 1; $i <= 12; $i++)
                                                    @if($i < 10)
                                                    <option value="0{{ $i }}">0{{ $i }}</option>
                                                    @else
                                                    <option value="{{ $i }}">{{ $i }}</option>
                                                    @endif
                                                    @endfor
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="rooms_area">
                                <div class="row" >
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <label>{{ trans("lang.rooms") }}</label>
                                            <div class="input-group">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-check-square" aria-hidden="true"></i>
                                                </div>
                                                <select  class="form-control rooms required_field">
                                                    <option selected="selected" value="">{{ trans("lang.select_room") }}</option>
                                                    @foreach($rooms as $one)
                                                    <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="form-group">
                                            <a type="submit" id="more_rooms_btn" class="button full-width uppercase btn-small btnmore">{{ trans("lang.add_room") }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <button type="submit" id="submit_btn" class="button yellow full-width uppercase btn-small">{{ trans("lang.search") }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="tour-packages row image-box listing-style2 add-clearfix hotels-block">
                        @foreach($hotels as $one)
                        <div class="col-xs-12 col-sm-4 col-md-4 col-xs-12 pull-left hotel-item">
                            <article class="box animated styledbox" data-animation-type="fadeInDown">
                                <figure>
                                    <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                        <img style="width: 270px;height: 161px;" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
                                    </a>
                                    <figcaption>
                                        <h2 class="caption-title">
                                            <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                                {{ $one->{$slug->title} }}
                                            </a>
                                        </h2>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        @endforeach


                    </div>
                    @if($count > 9)
                    <a href="#" class="uppercase full-width button btn-large" style="display: none;" id="show_more_hotels">{{ trans("lang.more") }}</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
@stop
@section('scripts_pages')
{!! HTML::script('front/mine/hotels.js') !!}
@stop