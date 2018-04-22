@extends('front.layout')
@section('page_title')
{{ trans("lang.special_offers") }}
@stop
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="omrah-prog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li> {{ trans("lang.special_offers") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
               
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 programs-block">
                    <div class="row">
                        @foreach($special as $one)
                        <!-- hotel item ( 1 ) -->
                        
                        <div class="col-sm-6 col-lg-4 sm-mb-30px program-item">
                            <div class="program-grid background-white border border-grey-1 with-hover">
                                <div class="hotel-img position-relative">
                                    <div class="hover-option background-main-color opacity-6">
                                        <div class="h3 text-center text-white padding-top-n-25 "><i class="fa fa-search opacity-10"></i></div>
                                    </div>
                                   <a href="{{ url('/'.$lang.'/programs/special_details/'.$one->id) }}" title="">
                                    <img src="{{ asset($one->image) }}" alt="ddddddddd"></a>
                                </div>
                               
                                <div >
                                   
                                    <a href="{{ url('/'.$lang.'/programs/special_details/'.$one->id) }}" class="grid-btn btn-sm btn-lg btn-block background-main-color text-white text-center font-weight-bold text-uppercase ">{{ trans("lang.prog_details") }} </a>
                                </div>
                            </div>
                        </div>
                      @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@stop
@section('scripts_pages')
{!! HTML::script('front/mine/offers.js') !!}
@stop