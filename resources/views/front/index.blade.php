            <!--************************************
                            Home Slider Start
            *************************************-->
            @extends('front.layout')
            @section('content')
            <div id="slideshow" class="ltr">
                <div class="fullwidthbanner-container">
                    <div class="revolution-slider rev_slider" style="height: 0; overflow: hidden;">
                        <ul>
                            
                            @foreach($sliders as $key => $one)
                            @if($key % 2 == 0)
                            <li data-index="rs-21" data-transition="cube" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="800"  data-thumb="{{asset('front/emad/images/slider/img-01.jpg')}}"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="{{asset(str_replace('images/sliders/', 'images/sliders/thumb/l_', $one->image)) }}"  alt="" title="Slider1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                <!-- LAYERS -->

                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption large_bold_white_med   tp-resizeme"
                                     id="slide-21-layer-1"
                                     data-x="center"
                                     data-y="261"
                                     data-width="['auto']"
                                     data-height="['auto']"
                                     data-transform_idle="o:1;"

                                     data-transform_in="x:left;s:1500;e:Power3.easeInOut;"
                                     data-transform_out="x:-50px;opacity:0;s:300;s:300;"
                                     data-start="1000"
                                     data-splitin="none"
                                     data-splitout="none"
                                     data-responsive_offset="on"


                                     style="z-index: 5;">{{ $one->{$slug->title} }}</div>

                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption largewhitebg_button1   tp-resizeme"
                                     id="slide-21-layer-2"
                                     data-x="center"
                                     data-y="442"
                                     data-width="['auto']"
                                     data-height="['auto']"
                                     data-transform_idle="o:1;"

                                     data-transform_in="x:-50px;opacity:0;s:1500;e:Power3.easeInOut;"
                                     data-transform_out="x:-50px;opacity:0;s:300;s:300;"
                                     data-start="1400"
                                     data-splitin="none"
                                     data-splitout="none"
                                     data-responsive_offset="on"


                                     s style="z-index: 6;"><a href="{{ $one->url }}" target="_blank"  class="samem">{{ trans("lang.more") }}</a> </div>


                            </li>
                            @endif

                            <!-- SLIDE  -->
                            <li data-index="rs-3" data-transition="parallaxtoleft" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-rotate="0"  data-saveperformance="off"  data-title="HTML5 Video" data-description="">

                                <!-- MAIN IMAGE -->
                                <img src="{{asset(str_replace('images/sliders/', 'images/sliders/thumb/l_', $one->image)) }}" alt=""  width="1920" height="1280">

                                <!-- BACKGROUND VIDEO LAYER -->
                                <div class="rs-background-video-layer"
                                     data-forcerewind="on"
                                     data-volume="on"
                                     data-videowidth="100%"
                                     data-videoheight="100%"
                                     data-videomp4="./assets/02.mp4"
                                     data-videostartat="00:25"
                                     data-videopreload="preload"
                                     data-videoloop="none"
                                     data-forceCover="1"
                                     data-aspectratio="16:9"
                                     data-autoplay="true"
                                     data-autoplayonlyfirsttime="false"
                                     data-nextslideatend="true"
                                     
                                     style="z-index: 5;">{{ $one->{$slug->title} }}
                                    
                                     style="z-index: 6;"><a href="{{ $one->url }}" target="_blank"  class="samem">{{ trans("lang.more") }}</a> </div>
                                      
                                <!-- LAYER NR. 1 -->


                            </li>

<!--                            <li data-index="rs-22" data-transition="cube" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="800"  data-thumb="{{asset('front/emad/images/slider/img-01.jpg')}}"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                 MAIN IMAGE 
                                <img src="{{asset('front/emad/images/slider/img-01.jpg')}}"  alt="" title="Slider1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                 LAYERS 

                                 LAYER NR. 1 
                                <div class="tp-caption large_bold_white_med   tp-resizeme"
                                     id="slide-21-layer-1"
                                     data-x="center"
                                     data-y="261"
                                     data-width="['auto']"
                                     data-height="['auto']"
                                     data-transform_idle="o:1;"

                                     data-transform_in="x:left;s:1500;e:Power3.easeInOut;"
                                     data-transform_out="x:-50px;opacity:0;s:300;s:300;"
                                     data-start="1000"
                                     data-splitin="none"
                                     data-splitout="none"
                                     data-responsive_offset="on"


                                     style="z-index: 5;">الان استمتع <strong>بالعمرة </strong> بسهولة و يسر<br>كل ما تحتاجة <strong>فى موقع واحد</strong> </div>

                                 LAYER NR. 2 
                                <div class="tp-caption largewhitebg_button1   tp-resizeme"
                                     id="slide-21-layer-2"
                                     data-x="center"
                                     data-y="442"
                                     data-width="['auto']"
                                     data-height="['auto']"
                                     data-transform_idle="o:1;"

                                     data-transform_in="x:-50px;opacity:0;s:1500;e:Power3.easeInOut;"
                                     data-transform_out="x:-50px;opacity:0;s:300;s:300;"
                                     data-start="1400"
                                     data-splitin="none"
                                     data-splitout="none"
                                     data-responsive_offset="on"


                                     style="z-index: 6;"><a href="#">للمزيد ...</a> </div>


                            </li>-->

                              @endforeach

                        </ul>
                    </div>
                </div>
            </div>
            <!--************************************
                            Home Slider End
            *************************************-->           
            <!--************************************
                            Main Start
            *************************************-->
            <main id="tg-main" class="tg-main tg-haslayout">
                <!--************************************
                                Features Start
                *************************************-->

                <!--************************************
                                Features End
                *************************************-->

                <!--************************************
                                Our Destination Start
                *************************************-->
                <section class="tg-sectionspace tg-haslayout pb0">
                    <div class="container wow bounceInRight " data-wow-duration="2s" data-wow-delay="1s">
                        <div class="row">
                            <div class="tg-ourdestination">
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 tg-verticalmiddle">
                                    <figure><img src="{{ asset('front/emad/images/placeholder/placeholder-01.png')}}" alt="image destinations"></figure>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-8 tg-verticalmiddle text-right">
                                    <div class="tg-ourdestinationcontent">
                                        <div class="tg-description"><p>

                                               <p>{!! $settings->{$slug->vision} !!}  
                                                 <a href="{{ url('/'.$lang.'/about') }}" class="button pull-right">{{ trans("lang.more") }}</a>
                                            </p>

                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--************************************
                                Our Destination End
                *************************************-->
                <!--************************************
                                Destination Start
                *************************************-->

                <!--************************************
                                Destination End
                *************************************-->
                <!--************************************
                                Call To Action Start
                *************************************-->
                <section class="tg-parallax" data-appear-top-offset="600" data-parallax="scroll" data-image-src="{{asset('front/emad/images/parallax/bgparallax-02.jpg')}}">
                    <div class="tg-sectionspace tg-haslayout">
                        <div class="container wow bounceInLeft" data-wow-duration="2s" data-wow-delay="1s">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div class="tg-calltoaction">

                                        <h2> {{ trans("lang.now_you_can_design_umrah_as_you_want") }}</h2>
                                        <div class="tg-description"><p class="text-center">{{ trans("lang.ms") }} 

                                            </p></div>
                                        <a class="tg-btn  wow bounceInUp " data-wow-duration="3s" data-wow-delay="1s"  href="{{ url('/'.$lang.'/make_your_umrah') }}"><span>  {{ trans("lang.make_your_umrah") }}</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--************************************
                                Call To Action End
                *************************************-->
                <section class="tg-sectionspace tg-zerotoppadding tg-haslayout pb0">
                    <div class="tg-sectionspace tg-haslayout">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div class="tg-sectiontitle tg-sectiontitleleft">
                                        <h2>{{ trans("lang.special_offers") }}</h2>
                                        <a class="tg-btnvtwo" href="{{ url('/'.$lang.'/make_your_umrah') }}">{{ trans("lang.groups_book") }}</a>  <a class="tg-btnvtwo" href="{{ url('/'.$lang.'/programs') }}">{{ trans("lang.umrah_packages") }}</a>
                                    </div>
                                    <div id="tg-populartoursslider" class="tg-populartoursslider tg-populartours owl-carousel ltr">
                                         @foreach($packages as $one)
                                        <div class="item tg-populartour">
                                            <figure>
                                                <a href="#"><img alt='{{ $one->{$slug->title} }}' title="{{ $one->{$slug->title} }}" src="{{ asset($one->image) }}"></a>

                                            </figure>
                                            <div class="tg-populartourcontent">
                                                <div class="tg-populartourtitle">
                                                    <h3><a href="{{ url('/'.$lang.'/programs/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></h3>
                                                </div>
                                                <div class="tg-description">
                                                    <p>  {{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 120) }}</p>
                                                </div>
                                                <div class="tg-populartourfoot">
                                                    <div class="tg-durationrating">
<!--                                                        <span class="tg-tourduration">15 يوم</span>-->
                                                        <span class="tg-stars"><span></span></span>

                                                    </div>
                                                    <div class="tg-pricearea">

                                                        <h4>{{$one->dates[0]->price}} {{ trans("lang.sr") }}</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         @endforeach
                               
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


     


                <section class="tg-sectionspace tg-zerotoppadding tg-haslayout ptb40">
                    <div class="tg-haslayout">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div class="tg-sectionhead">
                                        <div class="tg-sectiontitle">
                                            <a href="{{ url('/'.$lang.'/hotels') }}"><h2>{{ trans('lang.hotels') }}</h2></a>
                                        </div>
                                        <div class="tg-description">
                                            <p> {{ trans('lang.best_hotels_in_saudi_arabia') }}


                                            </p>
                                        </div>

                                    </div>
                                    <div id="tg-populardestinationslider" class="tg-populardestinationslider tg-populardestinations owl-carousel ltr">
                                        @foreach($hotels as $one)
                                        
                                      
                                            <figure>
                                                <div class="agents">
                                                            <div class="box">
                                                <a  title="{{ $one->{$slug->title} }}" href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                                    <img alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}" src="{{ asset($one->image) }}"></a>
                                                                 </div>
                                                </div>
                                                <div class="box-content">
                                                    <h3><a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></h3>

                                                </div>
                                                          
                                            </figure>
                                       
                                        @endforeach
                              </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>





                <section class="tg-parallax" data-appear-top-offset="600" data-parallax="scroll" data-image-src="{{asset('front/emad/images/parallax/bgparallax-01.jpg')}}">
                    <div class="tg-sectionspace tg-haslayout">
                        <div class="container wow bounceInLeft" data-wow-duration="2s" data-wow-delay="1s">
                            <div class="row">
                                <div class="tg-sectionhead text-center">
                                    <div class="tg-sectiontitle">
                                        <h2>{{ trans('lang.our_agents_around_the_world') }}</h2>
                                    </div>
                                    <div class="tg-description">
                                        <p>   {{ trans('lang.choose_the_agent_in_your_country') }}

                                        </p>
                                    </div>

                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <div class="row">
                                        <div class="col-md-4 pull-left">
                                            <div class="col-xs-6 col-md-12">



                                                <div class="selector mb20">
                                                    <select class="full-width" id="agent_country">
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
                </section>

                <!--************************************
                       Popular Tour Start
       *************************************-->
                <section class="tg-sectionspace tg-zerotoppadding tg-haslayout ptb40">
                    <div class="container wow fadeInUp" data-wow-duration="3s" data-wow-delay="1s">
                        <div class="row">
                            <div class="tg-sectionhead">
                                <div class="tg-sectiontitle">
                                    <h2>{{ trans('lang.the_most_important_sightseeing') }}</h2>
                                </div>
                                <div class="tg-description">
                                    <p> {{ trans('lang.the_most_important_and_best_religious_and_holy_shrines_in_the_Kingdom_of_Saudi_Arabia') }} </p>
                                </div>
                            </div>
                            <div id="tg-destinationsslider" class="tg-destinationsslider tg-destinations owl-carousel ltr">
                                
                                 @foreach($sightseeing as $one)
                                <div class="item tg-destination wow bounceInUp" data-wow-duration="2s" data-wow-delay="1s">
                                 
                                    
                                        
                                        <a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                           <div class="agents">
                                                            <div class="box">  <img class="hvr-wobble-vertical" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}"></div></div></a>
                                        
                                           
                                            <div class="tg-description">
                                                <p>{{ $one->city->{$slug->title} }}</p>
                                            </div>
                                       
                                                          
                                     
                                </div>
                                 @endforeach

                            </div>
                        </div>
                    </div>
                </section>
                <!--************************************
                                Popular Tour End
                *************************************-->

                <!--************************************
                                Our Guides Start
                *************************************-->
                <section class="tg-haslayout pb40">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="tg-sectionhead">
                                    <div class="tg-sectiontitle">
                                        <a href="{{ url('/'.$lang.'/partners')}}"><h2>{{ trans('lang.partners') }}</h2></a>
                                    </div>
                                    <div class="tg-description">
<!--                                        <p>تعرف على اهم شركئنا فى النجاح </p>-->
                                    </div>
                                </div>
                                <div id="tg-guidesslider" class="tg-guidesslider tg-guides owl-carousel ltr wow pulse" data-wow-duration="2s" data-wow-delay="1s">
                                    
                                     @foreach($partners as $one)
                                    <div class="item tg-guide wow fadeIn hvr-float-shadow" data-wow-duration="2s" data-wow-delay="1s">
                                        <figure>
                                         <a href="{{ $one->url }}" target="_blank"><img src="{{ asset($one->image) }}" alt="{{ $one->title }}" title="{{ $one->title }}"></a> 
                                        </figure>

                                    </div>
                                      @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <section class="tg-parallax" data-appear-top-offset="600" data-parallax="scroll" data-image-src="{{asset('front/emad/images/parallax/bgparallax-04.jpg')}}">
                    <div class="tg-sectionspace tg-haslayout">
                        <div class="container wow bounceInLeft" data-wow-duration="2s" data-wow-delay="1s">
                            <div class="row">
                                <div class="tg-sectionhead">
                                    <div class="tg-sectiontitle">
                                        <h2>{{trans('lang.testimonials')}} </h2>
                                    </div>
                                    <div class="tg-description">
                                        <p> {{trans('lang.best_hotels_in_saudi_arabia')}}


                                        </p>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="container content">
                                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                <!-- Indicators -->
                                                <ol class="carousel-indicators">
                                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                                </ol>
                                                <!-- Wrapper for slides -->
                                                <div class="carousel-inner">
                                                    @foreach($reviews as $key => $one)
                                                    @if($key==0)
                                                    <div class="item active">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="thumbnail adjust1">
                                                                    <div class="col-md-2 col-sm-2 col-xs-12 pull-left"> <img class="media-object img-rounded img-responsive" src="{{ asset($one->image) }}"> </div>
                                                                    <div class="col-md-10 col-sm-10 col-xs-12 pull-left">
                                                                        <div class="caption">

                                                                            <p><span class="glyphicon glyphicon-thumbs-up"></span> {!! $one->{$slug->content} !!}.</p>
                                                                            <blockquote class="adjust2">
                                                                                <p>{{ $one->{$slug->title} }}</p>   </blockquote>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @else
                                                  
                                                 <div class="item">
                                                       <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="thumbnail adjust1">
                                                                    <div class="col-md-2 col-sm-2 col-xs-12 pull-left"> <img class="media-object img-rounded img-responsive" src="{{ asset($one->image) }}"> </div>
                                                                    <div class="col-md-10 col-sm-10 col-xs-12 pull-left">
                                                                        <div class="caption">

                                                                            <p><span class="glyphicon glyphicon-thumbs-up"></span> {!! $one->{$slug->content} !!}.</p>
                                                                            <blockquote class="adjust2">
                                                                                <p>{{ $one->{$slug->title} }}</p>   </blockquote>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                     @endif
                                                     @endforeach

                                                </div>
                                                <!-- Controls -->
                                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a>
                                                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--************************************
                                Our Guides End
                *************************************-->
                <section class="tg-sectionspace tg-zerotoppadding tg-haslayout ptb40">
                    <div class="container wow fadeInUp" data-wow-duration="3s" data-wow-delay="1s">
                        <div class="row">
                            <div class="tg-sectionhead">
                                <div class="tg-sectiontitle">
                                    <h2>{{ trans('lang.photo_gallery') }}</h2>
                                </div>

                            </div>
                            <div class=" tg-haslayout">
                                <div class="container wow bounceInLeft" data-wow-duration="2s" data-wow-delay="1s">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                            <div class="tg-gallery">
                                                <ul>
                                                      @foreach($gallery as $one)
                                                    <li>
                                                        <figure>
                                                            <div class="agents">
                                                            <div class="box">
                                                            <a href="{{ asset($one->image) }}" data-rel="prettyPhoto[instagram]">
                                                                <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}">
                                                            </a>
                                                                <div class="box-content">
                                                                    <h3 class="title"> {{ $one->{$slug->title} }}</h3></div>
                                                            </div>
                                                            </div>
                                                        </figure>
                                                    </li>
                                                     @endforeach
                                                  
                                                </ul>
                                            </div>



                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </main>
            <!--************************************
                            Main End
            *************************************-->

            @stop