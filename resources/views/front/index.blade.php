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
<div id="slideshow" class="ltr">
    <div class="fullwidthbanner-container">
        <div class="revolution-slider rev_slider" style="height: 0; overflow: hidden;">
            <ul>
                @if($lang == "en")
                {!! view('front.slider_en', compact('sliders')) !!}
                @else
                {!! view('front.slider_ar', compact('sliders')) !!}
                @endif
            </ul>
        </div>
    </div>
</div>

<section id="content" class="pt0">
    <div class="global-map-area4 section">
        <div class="container">
            <div class="text-center description">
                <h1>{{ trans("lang.who_we_are") }}</h1>
                <p> {!! $settings->{$slug->about_us} !!} </p>

            </div>
            <br />
            <div class="row">
                <div class="col-md-8 col-xs-12 pull-left">

                    <div class="tab-container style1">
                        <ul class="tabs full-width">
                            <li class="active"><a href="#unlimited-layouts" data-toggle="tab">{{ trans("lang.vision") }}</a></li>
                            <li><a href="#design-inovation" data-toggle="tab">{{ trans("lang.mission") }}</a></li>
                            <li><a href="#8-sliders" data-toggle="tab">{{ trans("lang.target") }}</a></li>
                            <li><a href="#best-support" data-toggle="tab">{{ trans("lang.why_us") }}</a></li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="unlimited-layouts">
                                <h4>{{ trans("lang.vision") }}</h4>
                                <p>  </p>

                                <p>{!! $settings->{$slug->vision} !!}                                </p>

                                <a href="{{ url('/'.$lang.'/about') }}" class="button pull-right">{{ trans("lang.more") }}</a>
                            </div>
                            <div class="tab-pane fade" id="design-inovation">
                                <h4>{{ trans("lang.mission") }}</h4>
                                <p> {!! $settings->{$slug->mission} !!}</p>

                            </div>
                            <div class="tab-pane fade" id="8-sliders">
                                <h4>{{ trans("lang.target") }}</h4>
                                <p>  {!! $settings->{$slug->goal} !!} </p>

                            </div>
                            <div class="tab-pane fade" id="best-support">
                                <h4>{{ trans("lang.why_us") }}</h4>
                                <p>  {!! $settings->{$slug->why_us} !!}</p>

                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-12 col-xs-12 pull-left">

                    <iframe width="100%" height="280" src="https://www.youtube.com/embed/{{ $settings->site_video }}" frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
    <div         class="global-map-area promo-box no-margin parallax" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="content-section description pull-right col-sm-8">
                <div class="table-wrapper hidden-table-sm">
                    <div class="table-cell">
                        <h2 class="m-title">
                            {{ trans("lang.select_the_flight,_hotels_and_date_required") }}
                            <br />
                            <em>
                                {{ trans("lang.now_you_can_design_umrah_as_you_want") }}
                            </em>
                        </h2>
                    </div>
                    <div class="table-cell action-section col-md-4  pull-left animated" data-animation-type="fadeInUp">
                        <button onclick="window.location = config.site_url + '/make_your_umrah'" class="full-width btn-large">{{ trans("lang.make_your_umrah") }}</button>
                    </div>
                </div>
            </div>
            <div class="image-container col-sm-4 pull-left">
                <img src="{{ asset('front/images/flight/home/girl.png') }}" alt="" class="animated" data-animation-type="fadeInUp" />
            </div>
        </div>
    </div>
    <div class="section container">
        <div class="row">
            <h2 class="pull-left">{{ trans("lang.umrah_packages") }}</h2>
            <div class="col-md-2 buttn mb10 pull-right">
                <button  onclick="window.location = config.site_url + '/make_umrah'" class="full-width btn-large">{{ trans("lang.groups_book") }}</button>
            </div>
            <div class="col-md-2 pull-right">
                <button onclick="window.location = config.site_url + '/programs'"  class="full-width btn-large">{{ trans("lang.umrah_packages") }}</button>
            </div>
        </div>
        <div class="row image-box hotel listing-style1">



            @foreach($packages as $one)
            <div class="col-xs-12 col-sm-6 col-md-3 pull-left">
                <article class="box">
                    <figure class="animated" data-animation-type="fadeInDown" data-animation-delay="0">
                        <a class="hover-effect" href="{{ url('/'.$lang.'/programs/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}">
                            <img alt='{{ $one->{$slug->title} }}' title="{{ $one->{$slug->title} }}" style="width: 270px;height: 161px;" src="{{ asset($one->image) }}" >
                        </a>
                    </figure>
                    <div class="details">
                        <h4 class="box-title">{{ $one->{$slug->title} }}</h4>
                        <div class="feedback">
                            <span class="price">

                                @php($money = $one->dates[0]->price)
                                @php($currency_price = $one->dates[0]->currency->price)
                                {{ view("front.currency.convert", compact('money', 'currency_price')) }}
                            </span>
                            <div title="{{ $one->stars }} {{ trans("lang.stars") }}" class="five-stars-container" data-toggle="tooltip" data-placement="bottom">
                                @for($i = 0; $i < $one->stars; $i++)
                                <span class="five-stars" style=""></span>
                                @endfor
                            </div>
                        </div>
                        <p class="description">
                            {{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 120) }}
                        </p>
                        <div class="action">
                            <a href="{{ url('/'.$lang.'/programs/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}" class="button btn-small">{{ trans("lang.more") }}</a>
                            <a href="{{ url('/'.$lang.'/programs/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}" class="button btn-small yellow">{{ trans("lang.book_now") }}</a>
                        </div>
                    </div>
                </article>
            </div>
            @endforeach
        </div>
    </div>



    <div class="global-map-area2 mobile-section parallax" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="table-wrapper hidden-table-sm">
                <div class="col-md-6 description section table-cell">
                    <h1>{{ trans('lang.ehgezly_website') }}</h1>

                    <br>


                    <a class="button btn-extra blue"><i class="soap-icon-hotel-2"></i><span> <em>{{ trans('lang.world_hotels') }}</em></span></a>
                    <a class="button btn-extra blue"><i class="soap-icon-insurance"></i><span><em>{{ trans('lang.umrah_plus') }}</em></span></a>
                </div>
                <div class="col-md-6 image-wrapper table-cell hidden-sm">
                    <img src="{{ asset('front/images/travelo_site.png') }}" alt="" class="animated" data-animation-type="fadeInUp">
                </div>
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="text-center description block">
                <h1>{{ trans('lang.hotels') }}</h1>
                <p>{{ trans('lang.know_with_us_the_most_important_and_best_hotels_in_Saudi_Arabia') }}</p>
            </div>


            <div class="block image-carousel style2 flexslider" data-animation="slide" data-item-width="370" data-item-margin="30">
                <ul class="slides image-box style1 tour-packages">
                    @foreach($hotels as $one)
                    <li>
                        <article class="box">
                            <figure>
                                <a class="hover-effect" title="{{ $one->{$slug->title} }}" href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                    <img  style="width: 370px;height: 220px;" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}" src="{{ asset($one->image) }}" draggable="false">
                                </a>
                            </figure>
                            <div class="details">
                                <h4 class="box-title">{{ $one->{$slug->title} }}</h4>
                            </div>
                        </article>
                    </li>
                    @endforeach


                </ul>
            </div>



        </div>
    </div>



    <section class="section  global-map-area2">
        <div class="container">
            <div class="row text-center description block">
                <h1>{{ trans('lang.our_agents_around_the_world') }}</h1>
                <p>
                    {{ trans('lang.Know_with_our_agents_around_the_world_to_know_the_agents_in_your_country_choose_the_Bad') }}
                </p>
            </div>


            <div class="row">
                <div class="col-md-4 pull-left">
                    <div class="col-xs-6 col-md-12">

                        <div class="selector mb20">
                            <select id="agent_country" class="full-width">
                                <option value="0">{{ trans('lang.all_countries') }}</option>
                                @foreach($countries as $one)
                                <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-xs-6 col-md-12">
                        <button id="search_agent_button" class="full-width btn-large">{{ trans('lang.search_for_agents') }}</button>
                    </div>
                </div>

                <div class="col-md-8 col-xs-12 pull-left" id="agents_block">

                    @foreach($agents as $one)
                    <div class="col-md-3 col-xs-6 wkyle">
                        <a href="{{ $one->url }}" target="_blank">
                            <img style="height: 58px;width: 153px;" src="{{ asset($one->image) }}" alt="{{ $one->title }}"  title="{{ $one->title }}">
                        </a>
                    </div>
                    @endforeach

                </div>

            </div>
        </div>
    </section>

    <div class="section">
        <div class="container">
            <div class="text-center description block">
                <h1>{{ trans('lang.the_most_important_sightseeing') }}</h1>
                <p>
                    {{ trans('lang.Know_with_us_the_most_important_and_best_religious_and_holy_shrines_in_the_Kingdom_of_Saudi_Arabia') }}
                </p>

            </div>


            <div class="block image-carousel style2 flexslider ltr" data-animation="slide" data-item-width="370" data-item-margin="30">
                <ul class="slides image-box style1 tour-packages">

                    @foreach($sightseeing as $one)
                    <li>
                        <article class="box animated" data-animation-type="fadeInLeft">
                            <figure>
                                <a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                    <img style="width: 370px;height: 220px;" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}">
                                </a>
                                <figcaption>
                                    <h2 class="caption-title">{{ $one->{$slug->title} }}</h2>
                                </figcaption>
                            </figure>
                        </article>
                    </li>
                    @endforeach



                </ul>
            </div>



        </div>
    </div>

    <section>
        <div class="container">
            <div class="row">
                <h1>{{ trans('lang.partners') }}</h1>
                <div class="investor-slideshow image-carousel style2 investor-list ltr" data-animation="slide" data-item-width="170" data-item-margin="30">
                    <ul class="slides">

                        @foreach($partners as $one)
                        <li>
                            <div class="travelo-box animated" data-animation-type="fadeInUp">
                                <a href="{{ $one->url }}" target="_blank"><img src="{{ asset($one->image) }}" alt="{{ $one->title }}" title="{{ $one->title }}"></a>
                            </div>
                        </li>
                        @endforeach


                    </ul>
                </div>
            </div>
        </div>
    </section>


    <div class="global-map-area section parallax" data-stellar-background-ratio="0.5">
        <div class="container">
            <h1 class="text-center white-color">{{trans('lang.testimonials')}}</h1>
            <div class="testimonial style3">
                <ul class="slides ">
                    @foreach($reviews as $one)
                    <li>
                        <div class="author">
                            <a href="javascript:;">
                                <img src="{{ asset($one->image) }}" alt="" width="74" height="74" />
                            </a>
                        </div>
                        <blockquote class="description"> {!! $one->{$slug->content} !!} </blockquote>
                        <h2 class="name">{{ $one->title }}</h2>
                    </li>
                    @endforeach

                </ul>
            </div>
        </div>
    </div>

    <div class="container section">
        <h2>{{ trans('lang.photo_gallery') }}</h2>
        <div class="flexslider image-carousel style2 row-2 ltr " data-animation="slide" data-item-width="170" data-item-margin="30">
            <ul class="slides">
                @foreach($gallery as $one)
                <li>
                    <a href="{{ asset($one->image) }}" class="hover-effect galleryimg" data-lightbox="example-set" data-title="{{ $one->{$slug->title} }}">
                        <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}" style="width: 170px;height: 161px;" />
                        <p class="caption">{{ $one->{$slug->title} }}</p>
                    </a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>


</section>
@stop
