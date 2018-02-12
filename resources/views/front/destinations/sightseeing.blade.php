@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop
@section('meta')
<meta name="keywords" content="{!! str_replace('<br />', '', $settings->{$slug->site_keywords}) !!}" />
<meta name="description" content="{!! str_replace('<br />', '', $settings->{$slug->site_description}) !!}" />
<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/destinations/sightseeing/'.$details->id.'/'.str_replace(' ', '-', $details->{$slug->title})) }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ $details->{$slug->title} }}" />
<meta property="og:description"        content="{!! str_replace('<br />', '', $settings->{$slug->site_description}) !!}" />
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
            <li><a href="{{ url('/'.$lang.'/destinations') }}">{{ trans("lang.destinations") }}</a></li>
            <li><a href="{{ url('/'.$lang.'/destinations/details/'.$details->city->id.'/'.str_replace(' ', '-', $details->city->{$slug->title})) }}">{{ $details->city->{$slug->title} }}</a></li>
            <li class="active">{{ $details->{$slug->title} }}</li>
        </ul>
    </div>
</div>

<section id="content">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-xs-12">
                <div class="post">
                    <div class="flexslider photo-gallery style4 block" data-fix-control-nav-pos="1">
                        <ul class="slides image-box style9">
                            <li>
                                <article class="box">
                                    <figure>
                                        <img src="{{ asset($details->image) }}" alt="{{ $details->{$slug->title} }}">
                                    </figure>

                                </article>
                            </li>

                        </ul>
                    </div>


                    <div class="details">
                        <h1 class="entry-title">{{ $details->{$slug->title} }}</h1>
                        <div class="post-content">
                            <p> {!! $details->{$slug->content} !!} </p>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>
</section>
@stop