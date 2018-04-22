        <!--************************************
                        Mobile Menu Start
        *************************************-->
        <nav id="menu">
            <ul>
                <li><a href="javascript:void(0);">الرئيسية</a></li>

                <li class="hvr-pulse"><a href="javascript:void(0);">برامج العمرة</a></li>
                <li class="hvr-pulse"><a href="javascript:void(0);">صمم عمرتك</a></li>
                <li><a class="hvr-pulse" href="javascript:void(0);">الحجز اونلاين</a>
                    <ul>
                        <li><a href="javascript:void(0);">فنادق</a></li>
                        <li><a href="javascript:void(0);">حجز مجموعات</a></li>

                    </ul>

                </li>
                <li class="hvr-pulse"><a href="javascript:void(0);">التأشيرات</a></li>

                <li class="hvr-pulse"><a href="javascript:void(0);">خدماتنا</a></li>
                <li class="hvr-pulse"><a href="javascript:void(0);">الشركاء</a></li>



                <li class="hvr-pulse"><a href="javascript:void(0);">الوكلاء</a></li>
                <li><a href="javascript:void(0);">المزارات</a>
                    <div>
                        <ul>
                            <li><a href="javascript:void(0);">مزارات مكة</a></li>
                            <li><a href="javascript:void(0);">مزارات المدينة</a></li>
                            <li><a href="javascript:void(0);">مزارات اخري</a></li>
                        </ul>
                        <div class="tg-sliderarea">
                            <h2>اهم المزارات</h2>
                            <div class="tg-trendingtripsslider tg-trendingtrips owl-carousel ltr">
                                <div class="item tg-trendingtrip">
                                    <figure>
                                        <a href="javascript:void(0);">
                                            <img src="{{asset('front/emad/images/tours/img-05.jpg')}}" alt="image destinations">
                                            <div class="tg-hover">

                                                <span class="tg-locationname">جبل عرفات</span>

                                            </div>
                                        </a>
                                    </figure>
                                </div>
                                <div class="item tg-trendingtrip">
                                    <figure>
                                        <a href="javascript:void(0);">
                                            <img src="{{asset('front/emad/images/tours/img-06.jpg')}}" alt="image destinations">
                                            <div class="tg-hover">

                                                <span class="tg-locationname">غار حراء</span>

                                            </div>
                                        </a>
                                    </figure>
                                </div>
                                <div class="item tg-trendingtrip">
                                    <figure>
                                        <a href="javascript:void(0);">
                                            <img src="{{asset('front/emad/images/tours/img-05.jpg')}}" alt="image destinations">
                                            <div class="tg-hover">

                                                <span class="tg-locationname">جبل عرفات</span>

                                            </div>
                                        </a>
                                    </figure>
                                </div>
                                <div class="item tg-trendingtrip">
                                    <figure>
                                        <a href="javascript:void(0);">
                                            <img src="{{asset('front/emad/images/tours/img-06.jpg')}}" alt="image destinations">
                                            <div class="tg-hover">

                                                <span class="tg-locationname">غار حراء</span>

                                            </div>
                                        </a>
                                    </figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
        <!--************************************
                        Mobile Menu End
        *************************************-->
        <!--************************************
                        Wrapper Start
        *************************************-->
        <div id="tg-wrapper" class="tg-wrapper tg-haslayout">
            <!--************************************
                            Header Start
            *************************************-->
            <header id="tg-header" class="tg-header tg-haslayout">
                <div class="container-fluid">
                    <div class="row">
                        <div class="tg-topbar wow fadeInDown" data-wow-duration="3s" data-wow-delay="1s">
                            <nav class="tg-infonav">
                                <ul>
                                    <li>
                                        <i><img src="{{asset('front/emad/images/icons/icon-01.png')}}" alt="image destinations"></i>
                                        <span> 2-123-321-6543</span>
                                    </li>
                                    <li>
                                        <i><img src="{{asset('front/emad/images/icons/icon-02.png')}}" alt="image destinations"></i>
                                        <span>{{ trans("lang.groups_book") }} <a href="{{ url('/'.$lang.'/make_your_umrah') }}">{{ trans('lang.send_request_now') }}</a></span>
                    </li>
                                    
                                </ul>
                            </nav>
                            <div class="tg-addnavcartsearch">
                                <nav class="tg-addnav">
                                    <ul>
                                        <li><a href="{{ url('/'.$lang.'/contact') }}"> {{ trans("lang.contact_us") }}</a></li>
                                        <li><a href="{{ url('/'.$lang.'/about') }}"> {{ trans("lang.about_us") }}</a></li>
                                         @if( Auth::guard('member')->user() )
                                         <li>  {{ Auth::guard('member')->user()->name }}</li>
                                       @endif
<!--                                        <li><a href=""> $user</a></li>-->
                                       
                                    </ul>
                                </nav>
                                <nav class="tg-cartsearch">
                                    <ul>
                                     <!-- lang here-->
                                        <li><a href="javascript:void(0);"><img src="{{asset('front/emad/images/icons/icon-04.png')}}" alt="image destinations"></a></li>
                                    </ul>
                                        
                                </nav>
                            </div>
                        </div>
                        <div class="tg-navigationarea tg-headerfixed wow slideInRight" data-wow-duration="3s" data-wow-delay="1s">
                            
                            <div class="tg-socialsignin">
                                <ul class="tg-socialicons">
                                    <li><a href="{{ $settings->site_facebook }}" target="_blank"><i class="icon-facebook-logo-outline"></i></a></li>
                                    <li><a href="{{ $settings->site_instagram }}" target="_blank"><i class="icon-instagram-social-outlined-logo"></i></a></li>
                                    <li><a href="{{ $settings->site_twitter }}" target="_blank"><i class="icon-twitter-social-outlined-logo"></i></a></li>
                                </ul>
                                
                                @if( Auth::guard('member')->user() )
                                 <div class="tg-userbox">
                                    <a id="tg-btnsignin" class="tg-btn" href="" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"> <span>{{ trans('lang.logout')}}</span></a>
                                     <form id="logout-form" action="{{ route('member.logout') }}" method="POST" >
                                        {{ csrf_field() }}
<!--                                        <input id="tg-btnsignin" class="tg-btn" type="submit" name="submit" value="logout"/>-->
                                    </form>
                                </div>
                                  @else
                                  <div class="tg-userbox">
                                    <a id="tg-btnsignin" class="tg-btn" href="{{ url('/member/register') }}"><span>{{ trans('lang.register')}}</span></a>

                                </div>
                               @endif
                            </div>
                            <nav id="tg-nav" class="tg-nav">
                                <div class="navbar-header">
                                    <a href="#menu" class="navbar-toggle collapsed">
                                        <span class="sr-only">القائمة الرئيسية</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </a>
                                </div>
                                <div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
                                    <ul>
                                        <li class="current-menu-item hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/') }}">{{ trans('lang.home') }}</a></li>
                                       <li class="menu-item-has-children"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/special_offers') }}">{{ trans('lang.special_offers') }}</a>
                                          <div class="sub-menu">
                                           <ul>
                                                <li><a href="{{ url('/'.$lang.'/programs') }}">{{ trans('lang.umrah_packages') }}</a></li>
                                           </ul>
                                          </div>
                                       </li>
                                       
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/make_your_umrah') }}">{{ trans('lang.make_your_umrah') }}</a></li>
                                        
                                        <li class="hvr-pulse"><a href="http://wotbooking.com/" target="_blank">{{ trans('lang.world_hotels') }}</a></li>
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/flight') }}"> {{ trans('lang.flight') }}</a></li>
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/visa') }}">{{ trans('lang.visa') }}</a></li>
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/services') }}">{{ trans('lang.services') }}</a></li>
                                       
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/agents') }}">{{ trans('lang.agents') }}</a></li>
                                        <li class="menu-item-has-children menu-item-has-mega-menu"><a class=" hvr-pulse" href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/destinations') }}">{{ trans('lang.sightseeing') }}</a>
                                            <div class="mega-menu">
                                                <ul>
                                                     @foreach($destinations as $one)
                            <li>
                                <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ','-', $one->{$slug->title})) }}">
                                    {{ $one->{$slug->title} }}
                                </a>
                            </li>
                            @endforeach

                                                </ul>
                                                <div class="tg-sliderarea">
                                                    <h2>{{ trans('lang.important_des') }} </h2>
                                                    <div class="tg-trendingtripsslider tg-trendingtrips owl-carousel ltr">
                                                         @foreach(\App\Sightseeing::all() as $one)
                                                        <div class="item tg-trendingtrip">
                                                            
                                                                <a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                                                                    <div class="agents">
                                                                        <div class="box"> <img src="{{asset($one->image) }}" alt="{{ $one->{$slug->title} }} "></div></div>
                                                                                                                                   </a>

                                                                    <div class="tg-hover">

                                                                        <span class="tg-locationname"><a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></span>

                                                                    </div>
                                                          
                                                        </div>
                                                 @endforeach
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/gallery') }}">{{ trans('lang.gallery') }}</a></li>
                                        <li class="hvr-pulse"><a href="{{ url('/'.LaravelLocalization::getCurrentLocale().'/news') }}">{{ trans('lang.news') }}</a></li>
                                    </ul>
                                </div>
                            </nav>
                             <a href="{{ url('/') }}" >
                            <div class="logosec">
                                 @if($lang == "ar")
                                <img src="{{asset('front/images/logo_ar.jpg')}}" width="100" height="100" style="position: absolute;
                                        top: 2px;
                                        right: 31px" alt="">
                                @else
                                 <img src="{{asset('front/images/logo_en.jpg')}}" width="100" height="100" style="position: absolute;
                                        top: 2px;
                                        right: 31px" alt="">
                                @endif
                               
                            </div></a>
                        </div>
                    </div>
                </div>
            </header>
            <!--************************************
                            Header End
            *************************************-->
