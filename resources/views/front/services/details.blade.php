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
            <div id="main" class="col-md-12 pull-left">
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
                                <p>{{ $details->{$slug->content} }}</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</section>
@stop