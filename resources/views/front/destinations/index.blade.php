@extends('front.layout')
@section('page_title')
{{ trans("lang.destinations") }}
@stop
@section('meta')
<meta name="keywords" content="{{ $settings->{$slug->site_keywords} }}" />
<meta name="description" content="{{ $settings->{$slug->site_description} }}" />
<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/destinations') }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ trans("lang.destinations") }}" />
<meta property="og:description"        content="{{ $settings->{$slug->site_description} }}" />
<meta property="og:image"              content="{{ asset($settings->site_logo) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">{{ trans("lang.destinations") }}</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li class="active">{{ trans("lang.destinations") }}</li>
        </ul>
    </div>
</div>
<section id="content">
    <div class="container">
        <div id="main">
            <input type="hidden" id="destinations_count" value="{{ $destinations_count }}" />
            <div class="row">
                <div class="col-sm-12 col-md-12 pull-left">
                    <div class="tour-packages row image-box listing-style2 add-clearfix destinations-block">
                        @foreach($destinations as $one)
                        <div class="col-sms-6 col-sm-4 col-md-3 col-xs-12 pull-left destination-item">
                            <article class="box animated" data-animation-type="fadeInDown">
                                <figure>
                                    <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                        <img style="width: 270px;height: 161px;" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
                                    </a>
                                    <figcaption>
                                        <h2 class="caption-title">
                                            <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                                {{ $one->{$slug->title} }}
                                            </a>
                                        </h2>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        @endforeach



                    </div>
                    <a href="#" class="uppercase full-width button btn-large" style="display: none;" id="show_more_destinations">{{ trans("lang.more") }}</a>
                </div>
            </div>
        </div>
    </div>
</section>
@stop
@section('scripts_pages')
{!! HTML::script('front/mine/destinations.js') !!}
@stop