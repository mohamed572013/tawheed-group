@extends('front.layout')
@section('page_title')
{{ trans("lang.destinations") }}
@stop
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="sightseening">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><<a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li>{{ trans("lang.destinations") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                 @foreach($destinations as $one)
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="item tg-trendingtrip">
                        <figure>
                             <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
                                <div class="tg-hover">
                                    <span class="tg-locationname">{{ $one->{$slug->title} }} </span>
                                </div>
                            </a>
                        </figure>
                    </div>
                </div>
               @endforeach
            </div>
        </div>
    </div>
</main>
@stop
@section('scripts_pages')
{!! HTML::script('front/mine/destinations.js') !!}
@stop