@extends('front.layout')
@section('page_title')
{{ trans("lang.umrah_packages") }}
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
                            <li> {{ trans("lang.programs") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                     <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="searchsidebar">
                        <h4><i class="fa fa-angle-double-left"></i> {{ trans("lang.filter") }} </h4>
                               <form id="filter_form" class="" action="" method="post">  
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <input type="hidden" id="programs_count" value="{{ $programs_count }}" />
                                
                            <div class="row">
                                  @foreach($categories as $one)
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <div class="styled-input-single">
                                            <input type="checkbox" name="season[]" value="{{ $one->id }}" data-id="{{ $one->id }}" id="checkbox-example-{{ $one->id }}" class="season_link" />
                                            <label for="checkbox-example-{{ $one->id }}">{{ $one->{$slug->title} }} => {{ $one->programs_count }}</label>
                                        </div>
                                    </div>
                                    <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                </div>
                                  @endforeach
                           
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <h5>{{ trans("lang.fromdates") }} :</h5>
                                      <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map" aria-hidden="true"></i>
                                                    </div>
                                                 <input type="date" name="fromdates" class="form-control required_field datetime required date_link" placeholder="{{ trans("lang.dates") }}">
                                                </div>
                                </div>
                                 <div class="col-md-12 col-sm-12 col-xs-12">
                                    <h5>{{ trans("lang.todates") }} :</h5>
                                      <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map" aria-hidden="true"></i>
                                                    </div>
                                                 <input type="date" name="todates" class="form-control required_field datetime required date_link" placeholder="{{ trans("lang.dates") }}">
                                                </div>
                                </div>
                                  
                             
                            </div>
                            <!-- *********************************************************  -->
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <h5>  {{ trans("lang.price") }} :</h5>
                                     <div class="form-group">
                                        <div class="input-group">
                                            <input id="ex2" type="text" name="price" class="span2 price_link" value="" data-slider-min="10" data-slider-max="10000" data-slider-step="5" data-slider-tooltip="show" data-slider-value="[50,9750]"/>
                                        </div>
                                    </div>
                                    <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <button type="submit" name="submit_frm" class="grid-btn btn-sm btn-lg btn-block background-main-color text-white text-center font-weight-bold text-uppercase " style="display: none;"><i class="fa fa-search"></i> </button>
                                </div>
                            </div>
                            <!-- *********************************************************  -->
                            
                        </form>

                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                    <div class="row programs-block">
                        @foreach($programs as $one)
                        <!-- hotel item ( 1 ) -->
                        <div class="col-sm-6 col-lg-4 sm-mb-30px program-item">
                            <div class="program-grid background-white border border-grey-1 with-hover">
                                <div class="hotel-img position-relative">
                                    <div class="hover-option background-main-color opacity-6">
                                        <div class="h3 text-center text-white padding-top-n-25 "><i class="fa fa-search opacity-10"></i></div>
                                    </div>
                                   <a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}">
                                    <img src="{{ asset($one->image) }}" alt=""></a>
                                </div>
                                <div class="rating">
                                    <ul>
                                        @if($one->stars==1)
                                        <li class="active"></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        @elseif($one->stars==2)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                         <li></li>
                                        <li></li>
                                        <li></li>
                                         @elseif($one->stars==3)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li></li>
                                        <li></li>
                                         @elseif($one->stars==4)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li></li>
                                         @elseif($one->stars==5)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        @endif
                                    </ul>
                                </div>
                                <div class="padding-12px">
                                    <h3 class="text-uppercase text-medium"><a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}" class="text-dark">
                                            {{ $one->{$slug->title} }}
                                        </a>
                                    </h3>
                                    <?php 
                                       $city_ids = json_decode($one->city_id);
                                        $city = App\City::where("id", $city_ids['0'])->first();
                                    ?>
                                    <small class="text-uppercase text-extra-small">
                                        <a href="#" class="text-grey-4"><i class="fa fa-map-marker margin-right-5px"></i>
                                        <span class="text-third-color margin-right-5px"> {{ $city->{$slug->title} }}</span></a>
                                    </small>
                                    <div class="d-block padding-tb-8px text-grey-2 "> {{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 100) }}
                                            <a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}">[ ... ]</a> </div>
                                    <div class="margin-bottom-8px text-uppercase text-extra-small">
                                        <strong class="text-medium text-third-color padding-right-5px font-weight-bold"> 
                                            @foreach($one->dates as $value)
                                                @if($value->start_date > $today)
                                                @php($money = $value->price)
                                                {{ trans("lang.sr") }}{{ $money  }}
                                               
                                                @endif
                                                @endforeach
                                                </strong>
                                    </div>
                                    <a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" class="grid-btn btn-sm btn-lg btn-block background-main-color text-white text-center font-weight-bold text-uppercase "> {{ trans("lang.prog_details") }}</a>
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
{!! HTML::script('front/mine/programs.js') !!}
@stop