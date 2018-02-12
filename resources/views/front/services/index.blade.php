@extends('front.layout')
@section('page_title')
{{ trans("lang.services") }}
@stop
@section('meta')
<meta name="keywords" content="{{ $settings->{$slug->site_keywords} }}" />
<meta name="description" content="{{ $settings->{$slug->site_description} }}" />

<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/services') }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ trans("lang.services") }}" />
<meta property="og:description"        content="{{ $settings->{$slug->site_description} }}" />
<meta property="og:image"              content="{{ asset($settings->site_logo) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">{{ trans("lang.services") }}</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/') }}">{{ trans("lang.home") }}</a></li>

            <li class="active">{{ trans("lang.services") }}</li>
        </ul>
    </div>
</div>

<section id="content">
    <div class="container">
        <div id="main">

            <div class="large-block row image-box style2">
                @foreach($services as $one)
                <div class="col-md-6 pull-left">
                    <article class="box">
                        <figure>
                            <a href="{{ url('/'.$lang.'/services/details/'.$one->id . "/" . str_replace(' ', '-', $one->{$slug->title})) }}" title=""><img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}" style="height: 177px;" /></a>
                        </figure>
                        <div class="details">
                            <h4>{{ $one->{$slug->title} }}</h4>
                            <p>{{ mb_substr($one->{$slug->content}, 0, 200) }}</p>
                            <a href="{{ url('/'.$lang.'/services/details/'.$one->id . "/" . str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}" class="button btn-mini">{{ trans("lang.more") }}</a>
                        </div>
                    </article>
                </div>
                @endforeach
            </div>

        </div>
    </div>
</section>
@stop