@extends('front.layout')
@section('page_title')
{{ trans("lang.home") }}
@stop
@section('meta')
<meta name="keywords" content="{!! str_replace('<br />', '', $settings->{$slug->site_keywords}) !!}" />
<meta name="description" content="{!! str_replace('<br />', '', $settings->{$slug->site_description}) !!}" />

<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang) }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ trans("lang.home") }}" />
<meta property="og:description"        content="{!! str_replace('<br />', '', $settings->{$slug->site_description}) !!}" />
<meta property="og:image"              content="{{ asset($settings->site_logo) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li class="active">{{ trans("lang.special_offers") }}</li>
        </ul>
    </div>
</div>
<section id="content">
    <input type="hidden" id="offers_count" value="{{ $special_count }}" />

    <div class="container">
        <div id="main">
            <div class="row">

                <div  class="col-sm-12 col-md-12 pull-left">
                    <div class="tour-packages row image-box listing-style2 add-clearfix offers-block">
                        @foreach($special as $one)
                        <div class="col-lg-4 col-sm-6 col-md-4 col-xs-12 pull-left offers-item">
                            <article class="box animated" data-animation-type="fadeInDown">
                                <figure>
                                    <a href="{{ url('/'.$lang.'/programs/special_details/'.$one->id) }}">
                                        <img style="width: 370px;height: 220px;" src="{{ asset($one->image) }}" alt="Special Offer">
                                    </a>
                                    <figcaption>
                                        <h2 class="caption-title">
                                            <a href="{{ url('/'.$lang.'/programs/special_details/'.$one->id) }}">{{ trans("lang.book") }}</a>
                                        </h2>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        @endforeach


                    </div>
                    @if(count($special) > 12)
                    <a href="#" id="show_more_offers" class="uppercase full-width button btn-large">{{ trans("lang.more") }}</a>
                    @endif

                </div>
            </div>
        </div>
    </div>
</section>
@stop


@section('scripts_pages')
{!! HTML::script('front/mine/offers.js') !!}
@stop