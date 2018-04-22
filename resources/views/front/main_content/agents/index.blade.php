@extends('front.layout')
@section('page_title')
{{ trans("lang.agents") }}
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
                            <li>{{ trans("lang.agents") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="row">
                        <div class="col-md-4 pull-left">
                            <div class="col-xs-6 col-md-12">



                                <div class="selector mb20">
                                    <select class="full-width"  id="agent_country">
                                        <option value="0"> {{ trans('lang.all_countries') }}</option>
                                          @foreach($countries as $one)
                                        
                                        <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                         @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-xs-6 col-md-12">
                                <button id="search_agent_button" class="full-width btn-large">  {{ trans('lang.search_for_agents') }}</button>
                            </div>
                        </div>

                         <div class="col-md-8 col-xs-12 pull-left" id="agents_block">
                                            @foreach($agents as $one)
                                                    <div class="col-md-3 col-sm-6 col-xs-6 wkyle">
                                                        <a href="{{ url('/'.$lang.'/agents/details/'.$one->id) }}">
                                                            <img style="" src="{{ asset($one->image) }}" alt="{{ $one->title }}"  title="{{ $one->title }}">
                                                        </a>
                                                    </div>
                                            @endforeach


                                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@stop