@extends('front.layout')
@section('page_title')
{{ trans("lang.partners") }}
@stop
@section('meta')
<meta name="keywords" content="{{ $settings->{$slug->site_keywords} }}" />
<meta name="description" content="{{ $settings->{$slug->site_description} }}" />
<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/partners') }}" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="{{ trans("lang.partners") }}" />
<meta property="og:description"        content="{{ $settings->{$slug->site_description} }}" />
<meta property="og:image"              content="{{ asset($settings->site_logo) }}" />
<meta property="og:image:width"        content="600">
<meta property="og:image:height"       content="315">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">{{ trans("lang.our_partners") }}</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li class="active">{{ trans("lang.our_partners") }}</li>
        </ul>
    </div>
</div>
<section id="content">
    <div class="container">
        <div id="main">
            <div class="row">

                <div class="col-sm-12 col-md-12 pull-left">
                    <div class="tour-packages row image-box listing-style2 add-clearfix partnerss">
                        @foreach($partners as $one)
                        <div class="col-sm-9 col-md-3 pull-left">
                            <article class="box">
                                <figure>
                                    <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}" style="width: 270px;height: 180px;" >
                                </figure>
                                <div class="details">

                                    <h4 class="box-title text-center">{{ $one->{$slug->title} }}</h4>
                                </div>
                            </article>
                        </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
@stop