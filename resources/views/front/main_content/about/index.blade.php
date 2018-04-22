@extends('front.layout')
@section('page_title')
{{ trans("lang.about_us") }}
@stop
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="aboutco">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li> {{ trans("lang.about_us") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                       {{ trans("lang.who_we_are") }}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <p>
                                      {!! $settings->{$slug->about_us} !!}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        {{ trans("lang.vision") }}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <p>
                                      {!! $settings->{$slug->vision} !!}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        {{ trans("lang.mission") }}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <p>
                                        {!! $settings->{$slug->mission} !!}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--*********************************************************************!-->
                <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
                    <div class="about-co-logo">
                        <img src="{{asset('front/emad/images/ABOUT.png')}}" alt="">
                    </div>
                </div>
                <!--*********************************************************************!-->
            </div>
        </div>
    </div>
</main>


@stop