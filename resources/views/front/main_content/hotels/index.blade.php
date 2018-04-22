@extends('front.layout')
@section('page_title')
{{ trans("lang.hotels") }}
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
                                <li class="active">{{ trans("lang.hotels") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- hotel item ( 1 ) -->
                  @foreach($hotels as $one)
                <div class="col-sm-6 col-lg-3 sm-mb-30px">
                    <div class="program-grid background-white border border-grey-1 with-hover">
                        <div class="hotel-img position-relative">
                            <div class="hover-option background-main-color opacity-6">
                                <div class="h3 text-center text-white padding-top-n-25 "><i class="fa fa-search opacity-10"></i></div>
                            </div>
                             <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                        <img  src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
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
                          
                            <small class="text-uppercase text-extra-small">
                                <a href="#" class="text-grey-4"><i class="fa fa-map-marker margin-right-5px"></i>
                                <span class="text-third-color margin-right-5px">{{ $one->{$slug->title} }}</span></a>
                            </small>
                            <div class="d-block padding-tb-8px text-grey-2 ">{{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 100) }}</div>
                            <div class="margin-bottom-8px text-uppercase text-extra-small">
                                
                            </div>
                            <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" class="grid-btn btn-sm btn-lg btn-block background-main-color text-white text-center font-weight-bold text-uppercase "> {{ trans("lang.hotel_details") }}</a>
                        </div>
                    </div>
                </div>
                  @endforeach
              
            </div>
        </div>
    </div>
</main>
@stop