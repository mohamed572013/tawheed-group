@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="omrah-prog-details"> 
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{ url("/".$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li><a href="{{ url("/".$lang."/news") }}">{{ trans("lang.news") }}</a></li>
                            <li> {{ $details->{$slug->title} }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="programsdetailsitems">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="revolution-slider rev_slider" style="height: 0; overflow: hidden;">
                                    <ul>
                                        
<!--                                        <li data-index="rs-21" data-transition="cube" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="800"  data-thumb="./assets/images/slider/img-01.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                             MAIN IMAGE 
                                            <img src="./assets/images/slider/img-01.jpg"  alt="" title="Slider1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                             LAYERS 
                                        </li>-->
                                        <!-- SLIDE  -->
                                        <li data-index="rs-3" data-transition="parallaxtoleft" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-rotate="0"  data-saveperformance="off"  data-title="HTML5 Video" data-description="">
                                            <!-- MAIN IMAGE -->
                                            <img  src="{{ asset($details->image) }}" alt="{{ $details->{$slug->title} }}"  width="1920" height="1280">
                                        </li>

<!--                                        <li data-index="rs-22" data-transition="cube" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="800"  data-thumb="./assets/images/slider/img-01.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                             MAIN IMAGE 
                                            <img src="./assets/images/slider/img-01.jpg"  alt="" title="Slider1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                             LAYERS 
                                        </li>-->
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="tab" role="tabpanel">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">{{ trans('lang.news_a') }}</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content tabs">
                                        <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                                            <h3> {{ $details->{$slug->title} }}</h3>
                                            <p>
                                                {!! $details->{$slug->content} !!}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--********************************************************-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@stop