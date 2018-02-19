@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop
@section('meta')
<meta name="keywords" content="{{ $settings->{$slug->site_keywords} }}" />
<meta name="description" content="{{ $settings->{$slug->site_description} }}" />

<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/services/details/'.$details->id . "/" . str_replace(' ', '-', $details->{$slug->title})) }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ $details->{$slug->title} }}" />
<meta property="og:description"        content="{{ $details->{$slug->content} }}" />
<meta property="og:image"              content="{{ asset($details->image) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/') }}">{{ trans('lang.home') }}</a></li>
            <li><a href="{{ url('/services') }}">{{ trans('lang.services') }}</a></li>
            <li class="active">
                {{ $details->{$slug->title} }}
            </li>
        </ul>
    </div>
</div>
<section id="content">
    <div class="container">
        <div class="row">
            <div id="main" class="col-md-8 col-lg-8  col-sm-12 col-xs-12 pull-left">
                <div class="tab-container style1" id="cruise-main-content">
                    <div class="serviceimg"><img src="{{asset($details->image)}}" alt="{{ $details->{$slug->title} }}" /></div>
                </div>

                <div id="cruise-features" class="tab-container">
                    <ul class="tabs">
                        <li class="active"><a href="#cruise-description" data-toggle="tab">{{ trans('lang.overview') }}</a></li>
                    </ul>
                    <div class="tab-content">

                        <div class="tab-pane fade in active" id="cruise-description">

                            <div class="long-description">
                                <h2>{{ $details->{$slug->title} }}</h2>
                                <p>{!! $details->{$slug->content} !!}</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="sidebar col-md-4 col-sm-12 col-md-4 col-xs-12 pull-left">
                <div class="travelo-box">
                    <h4>{{ trans("lang.other_services") }}</h4>
                    <div class="image-box style14">


                        @foreach($other_services as $one)
                        <article class="box">
                            <figure>
                                <a href="{{ url('/'.$lang.'/services/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                    <img src="{{ asset($one->image) }}" style="width: 63px;height: 69px;" alt="{{ $one->{$slug->title} }}">
                                </a>
                            </figure>
                            <div class="details">
                                <h5 class="box-title">
                                    <a href="{{ url('/'.$lang.'/services/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a>
                                </h5>
                                <p>{{ mb_substr(str_replace('<br />', '', $one->{$slug->content}), 0, 80) }}</p>
                            </div>
                        </article>
                        @endforeach



                    </div>
                </div>


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