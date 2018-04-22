@extends('front.layout')
@section('page_title')
{{ trans("lang.news") }}
@stop

@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="news"> 
	    <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li>{{ trans("lang.news") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
			<div class="row">
                             @foreach($news as $one)
                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12 eventsbod">
                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 property-listing">
                        <div class="media">
                            <a class="eventimg" href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                            <img alt="image" class="img-responsive eventsbodimg" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}">
                            </a>

                            <div class="clearfix visible-sm"></div>

                            <div class="media-body fnt-smaller">
                                <a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}" target="_parent"></a>

                                <h4 class="media-heading">
                                  <a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }} </a>
                                  <small class="eventdate"><i class="fa fa-calendar"></i> {{  $one->created_at }}</small>
                                </h4>
                                <p class="">
                                    {{  mb_substr(str_replace('<br />', '', $one->{$slug->content}), 0, 200)  }} <a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}"> [ ... ] </a>
                                ...</p>
                                <span class="fnt-smaller fnt-lighter fnt-arial eventreadmore"><a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ trans("lang.more") }}</a></span>
                            </div>
                        </div>
                    </div><!-- End Listing-->
                </div>
                              @endforeach
			</div>
	    </div>
	</div>
</main>
@stop


@section('scripts_pages')
{!! HTML::script('front/mine/news.js') !!}
@stop