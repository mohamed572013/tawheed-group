@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop
@section('meta')
<meta name="keywords" content="{{ $details->{$slug->keywords} }}" />
<meta name="description" content="{{ $details->{$slug->description} }}" />


<!-- sharing data  -->
<!--facebook-->
<meta property="og:url"                content="{{ url('/'.$lang.'/news/details/'.$details->id . "/" . str_replace(' ', '-', $details->{$slug->title})) }}" />
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
            <li><a href="{{ url("/".$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li><a href="{{ url("/".$lang."/news") }}">{{ trans("lang.news") }}</a></li>
            <li class="active">{{ $details->{$slug->title} }}
            </li>
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
                                    <figure><img style="width: 870px;height: 484px;"  src="{{ asset($details->image) }}" alt="{{ $details->{$slug->title} }}"></figure>

                                </article>
                            </li>
                        </ul>
                    </div>


                    <div class="details">
                        <h1 class="entry-title">{{ $details->{$slug->title} }}
                        </h1>
                        <div class="post-content">
                            <p> {{ $details->{$slug->content} }}</p>

                        </div>

                    </div>

                </div>
            </div>
            <div class="sidebar col-sm-12 col-md-3 col-xs-12 pull-left">
                <div class="travelo-box">
                    <h4>{{ trans("lang.latest_news") }}</h4>
                    <div class="image-box style14">


                        @foreach($latest_news as $one)
                        <article class="box">
                            <figure>
                                <a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                    <img style="width: 63px;height: 59px;" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
                                </a>
                            </figure>
                            <div class="details">
                                <h5 class="box-title"><a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></h5>

                            </div>
                        </article>
                        @endforeach
                    </div>
                </div>
                <div class="travelo-box contact-box">
                    <h4 class="box-title">{{ trans("lang.need_help") }}</h4>
                    <p>{{ mb_substr($settings->{$slug->about_us}, 0, 100) }}</p>
                    <address class="contact-details">
                        <span class="contact-phone"><i class="soap-icon-phone"></i> {{ $settings->site_phone }}
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