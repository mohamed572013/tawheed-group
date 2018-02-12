@foreach($sliders as $key => $one)
@if($key % 2 == 0)
<li data-index="rs-{{ $key }}" data-transition="cube" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="800"  data-thumb="{{asset('front/uploads/revslider1/snapshot/bg1.jpg') }}"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
    <!-- MAIN IMAGE -->
    <img src="{{asset(str_replace('images/sliders/', 'images/sliders/thumb/l_', $one->image)) }}"  alt="" title="Slider1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
    <!-- LAYERS -->

    <!-- LAYER NR. 1 -->
    <div class="tp-caption large_bold_white_med   tp-resizeme slidetxt"
         id="slide-21-layer-1"
         data-x="30"
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


         style="z-index: 99999;">
        {{ $one->{$slug->title} }}
    </div>


    @if($one->url != "")
    <!-- LAYER NR. 2 -->
    <div class="tp-caption largewhitebg_button1   tp-resizeme slidetxt"
         id="slide-21-layer-2"
         data-x="30"
         data-y="342"
         data-width="['auto']"
         data-height="['auto']"
         data-transform_idle="o:1;"

         data-transform_in="x:-50px;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:-50px;opacity:0;s:300;s:300;"
         data-start="1400"
         data-splitin="none"
         data-splitout="none"
         data-responsive_offset="on"


         style="z-index: 6;"><a href="{{ $one->url }}" target="_blank"  class="samem">{{ trans("lang.more") }}</a> </div>
    @endif





    @if(!$one->images->isEmpty())
    @if(isset($one->images[0]))
    <div class="tp-caption  IMG1 tp-resizeme"
         id="slide-21-layer-4"
         data-x="718"
         data-y="22"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="y:top;s:1500;e:Power3.easeInOut;"
         data-transform_out="y:-50px;opacity:0;s:300;s:300;"
         data-start="2000"
         data-responsive_offset="on"


         style="z-index: 8;">
        <img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[0]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina>
    </div>
    @endif
    <!-- LAYER NR. 5 -->
    @if(isset($one->images[1]))
    <div class="tp-caption  IMG2 tp-resizeme"
         id="slide-21-layer-5"
         data-x="614"
         data-y="123"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="2300"
         data-responsive_offset="on"


         style="z-index: 9;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[1]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @if(isset($one->images[2]))
    <div class="tp-caption IMG3  tp-resizeme"
         id="slide-21-layer-6"
         data-x="862"
         data-y="67"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:right;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:50px;opacity:0;s:300;s:300;"
         data-start="2600"
         data-responsive_offset="on"


         style="z-index: 10;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[2]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>


    @endif
    @if(isset($one->images[3]))
    <div class="tp-caption  IMG4 tp-resizeme"
         id="slide-21-layer-7"
         data-x="823"
         data-y="109"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="2900"
         data-responsive_offset="on"


         style="z-index: 11;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/m_', $one->images[3]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>

    @endif
    @if(isset($one->images[4]))
    <div class="tp-caption  IMG5 tp-resizeme"
         id="slide-21-layer-8"
         data-x="706"
         data-y="337"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="y:bottom;s:1500;e:Power3.easeInOut;"
         data-transform_out="y:bottom;s:300;s:300;"
         data-start="3200"
         data-responsive_offset="on"


         style="z-index: 12;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[4]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @if(isset($one->images[5]))
    <div class="tp-caption  IMG6 tp-resizeme"
         id="slide-21-layer-9"
         data-x="756"
         data-y="196"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="3500"
         data-responsive_offset="on"


         style="z-index: 13;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[5]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>

    @endif
    @if(isset($one->images[6]))
    <div class="tp-caption  IMG7 tp-resizeme"
         id="slide-21-layer-10"
         data-x="688"
         data-y="316"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:-50px;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:-50px;opacity:0;s:300;s:300;"
         data-start="3800"
         data-responsive_offset="on"


         style="z-index: 14;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/s_', $one->images[6]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>

    @endif
    @if(isset($one->images[7]))
    <div class="tp-caption IMG8  tp-resizeme"
         id="slide-21-layer-11"
         data-x="936"
         data-y="265"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:right;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:50px;opacity:0;s:300;s:300;"
         data-start="4100"
         data-responsive_offset="on"


         style="z-index: 15;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[7]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @if(isset($one->images[8]))
    <div class="tp-caption  IMG9 tp-resizeme"
         id="slide-21-layer-12"
         data-x="862"
         data-y="362"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="4400"
         data-responsive_offset="on"


         style="z-index: 16;"><img src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/m_', $one->images[8]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @endif
</li>
<!-- SLIDE  -->
@else

<!-- SLIDE  -->
<li data-index="rs-{{ $key }}" data-transition="boxslide" data-slotamount="7" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="800"  data-thumb="{{asset('front/uploads/revslider1/snapshot/bg.jpg') }}"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
    <!-- MAIN IMAGE -->
    <img src="{{asset(str_replace('images/sliders/', 'images/sliders/thumb/l_', $one->image)) }}"  alt="" title="Slider1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
    <!-- LAYERS -->
    @if(!$one->images->isEmpty())
    <!-- LAYER NR. 1 -->
    @if(isset($one->images[0]))
    <div class="tp-caption  sk1 tp-resizeme"
         id="slide-20-layer-1"
         data-x="850"
         data-y="161"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="500"
         data-responsive_offset="on"


         style="z-index: 5;">
        <img class="image-slider-border"  src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[0]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @if(isset($one->images[1]))
    <!-- LAYER NR. 2 -->
    <div class="tp-caption  sk2 tp-resizeme"
         id="slide-20-layer-2"
         data-x="757"
         data-y="273"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="800"
         data-responsive_offset="on"


         style="z-index: 6;"><img class="image-slider-border"  src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/m_', $one->images[1]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @if(isset($one->images[2]))
    <!-- LAYER NR. 3 -->
    <div class="tp-caption  sk3 tp-resizeme"
         id="slide-20-layer-3"
         data-x="764"
         data-y="108"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="1100"
         data-responsive_offset="on"


         style="z-index: 7;"><img class="image-slider-border"  src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[2]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    <!-- LAYER NR. 4 -->
    @endif
    @if(isset($one->images[3]))
    <div class="tp-caption  sk4 tp-resizeme"
         id="slide-20-layer-4"
         data-x="545"
         data-y="299"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="1400"
         data-responsive_offset="on"


         style="z-index: 8;"><img class="image-slider-border"  src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/m_', $one->images[3]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    <!-- LAYER NR. 5 -->
    @endif
    @if(isset($one->images[4]))
    <div class="tp-caption sk5  tp-resizeme"
         id="slide-20-layer-5"
         data-x="667"
         data-y="327"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="1700"
         data-responsive_offset="on"


         style="z-index: 9;"><img  class="image-slider-border" src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/m_', $one->images[4]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    <!-- LAYER NR. 6 -->
    @endif
    @if(isset($one->images[5]))
    <div class="tp-caption  sk6 tp-resizeme"
         id="slide-20-layer-6"
         data-x="563"
         data-y="67"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="2000"
         data-responsive_offset="on"


         style="z-index: 10;"><img  class="image-slider-border" src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/l_', $one->images[5]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    <!-- LAYER NR. 7 -->
    @endif
    @if(isset($one->images[6]))
    <div class="tp-caption  sk7 tp-resizeme"
         id="slide-20-layer-7"
         data-x="700"
         data-y="181"
         data-width="['none','none','none','none']"
         data-height="['none','none','none','none']"
         data-transform_idle="o:1;"

         data-transform_in="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;s:300;s:300;"
         data-start="2300"
         data-responsive_offset="on"


         style="z-index: 11;"><img class="image-slider-border"  src="{{asset(str_replace('images/sliders/images/', 'images/sliders/images/thumb/m_', $one->images[6]->image)) }}" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
    @endif
    @endif
    <!-- LAYER NR. 8 -->
    <div class="tp-caption large_bold_white_med   tp-resizeme slidetxt"
         id="slide-20-layer-8"
         data-x="30"
         data-y="261"
         data-width="['auto']"
         data-height="['auto']"
         data-transform_idle="o:1;"

         data-transform_in="x:left;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:-50px;opacity:0;s:300;s:300;"
         data-start="2600"
         data-splitin="none"
         data-splitout="none"
         data-responsive_offset="on"


         style="z-index: 12;"> {{ $one->{$slug->title} }}
    </div>
    @if($one->url != "")
    <!-- LAYER NR. 9 -->
    <div class="tp-caption largewhitebg_button1   tp-resizeme slidetxt"
         id="slide-20-layer-9"
         data-x="30"
         data-y="342"
         data-width="['auto']"
         data-height="['auto']"
         data-transform_idle="o:1;"

         data-transform_in="x:-50px;opacity:0;s:1500;e:Power3.easeInOut;"
         data-transform_out="x:-50px;opacity:0;s:300;s:300;"
         data-start="2900"
         data-splitin="none"
         data-splitout="none"
         data-responsive_offset="on"


         style="z-index: 13;"><a href="{{ $one->url }}" target="_blank" class="samem">{{ trans("lang.more") }}</a> </div>
    @endif
    <!-- LAYER NR. 10 -->
</li>
@endif
@endforeach
<!-- SLIDE  -->
