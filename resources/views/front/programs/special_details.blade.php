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
@section('head')
<meta name="csrf-token" content="{{ csrf_token() }}">
@stop
@section('content')
<div class="page-title-container">
    <div class="container">
        <div class="page-title pull-left">
            <h2 class="entry-title">{{ trans("lang.special_offers") }}</h2>
        </div>
        <ul class="breadcrumbs pull-right">
            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
            <li class="active">{{ trans("lang.special_offers") }}</li>
        </ul>
    </div>
</div>
<section id="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                <div class="travelo-box box-full">
                    <div class="contact-form">
                        <h2>{{ trans("lang.book_now") }} </h2>
                        <form action="#" method="post" id="special_offer_form">
                            <input type="hidden" name="id" value="{{ $id }}" />
                            <div class="row">
                                <div class="col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.name") }}</label>
                                        <input type="text" name="name" class="input-text full-width required_field">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.email") }}</label>
                                        <input type="text" name="email" class="input-text full-width required_field">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.phone") }}</label>
                                        <input type="number" name="subject" class="input-text full-width required_field">
                                    </div>
                                </div>
                                <div class="col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.message") }}</label>
                                        <textarea name="message" rows="3" class="input-text full-width required_field" placeholder="Leave you Message
                                                  "></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <button id="submit_btn" type="submit" class="btn-medium full-width">{{ trans("lang.send") }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- *******************425px**************************************************** -->

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                <article class="box animated Specialoffimg" data-animation-type="fadeInDown">
                    <figure>
                        <a href="javascript:;"><img style="width: 570px;height: 350px;" src="{{ asset($details->image) }}" alt=""></a>
                    </figure>
                </article>
            </div>
            <!-- *********************************************************************** -->
        </div>
    </div>
</section>
@stop


@section('scripts_pages')
{!! HTML::script('front/mine/offers.js') !!}
@stop