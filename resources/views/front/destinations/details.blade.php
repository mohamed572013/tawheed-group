@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop
@section('meta')
<meta name="keywords" content="{!! str_replace('<br />', '', $details->{$slug->keywords}) !!}" />
<meta name="description" content="{!! str_replace('<br />', '', $details->{$slug->description}) !!}" />

<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/destinations/details/'.$details->id . "/" . str_replace(' ', '-', $details->{$slug->title})) }}" />
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
            <li><a href="{{ url('/'.$lang.'/destinations') }}">{{ trans("lang.destinations") }}</a></li>
            <li class="active">{{ $details->{$slug->title} }}</li>
        </ul>
    </div>
</div>

<section id="content">
    <div class="container">
        <div class="row">
            <div id="main" class="col-sm-12 col-md-9 col-xs-12 pull-left">
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
            <div class="sidebar col-sm-12 col-md-3 col-xs-12 pull-left">
                @if(!$details->sighseeing->isEmpty())
                <div class="travelo-box">
                    <h4>{{ trans("lang.sightseeing") }}</h4>
                    <div class="image-box style14">
                        @foreach($details->sighseeing as $one)
                        <article class="box">
                            <figure >
                                <a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                    <img style="width: 69px;height: 62px;" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
                                </a>
                            </figure>
                            <div class="details">
                                <h5 class="box-title">
                                    <a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a>
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