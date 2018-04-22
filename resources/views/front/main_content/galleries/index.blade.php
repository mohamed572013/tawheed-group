@extends('front.layout')
@section('page_title')
{{ trans("lang.gallery") }}
@stop
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="agents">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li> {{ trans("lang.gallery") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($galleries as $one)
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="box">
                        <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
                        <div class="box-content">
                            <h3 class="title">  {{ $one->{$slug->title} }}</h3>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
         
        </div>
    </div>
</main>
@stop