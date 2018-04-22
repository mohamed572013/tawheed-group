<div id="live-chat">
    <div class="header clearfix">
        <a href="#" class="chat-close">x</a>
        <h4>محادثة خدمة العملاء</h4>
        <span class="chat-message-counter pulse" style="display: block">3</span>
    </div>
    <div class="chat" style="display: none">
        <div class="chat-history">
            <div class="chat-message clearfix">
                <img src="{{asset('front/emad/images/user.png')}}" alt="" width="32" height="32">
                <div class="chat-message-content clearfix">
                    <span class="chat-time">13:35</span>
                    <h5>احمد</h5>
                    <p>ممكن أساعد حضرتك</p>
                </div> <!-- end chat-message-content -->
            </div> <!-- end chat-message -->
            <hr>
            <div class="chat-message clearfix clint_user">
                <img src="{{asset('front/emad/images/user.png')}}" alt="" width="32" height="32">
                <div class="chat-message-content clearfix">
                    <span class="chat-time">13:37</span>
                    <h5>عميل</h5>
                    <p>لو سمحت عايز احجز</p>
                </div> <!-- end chat-message-content -->
            </div> <!-- end chat-message -->
            <hr>
            <div class="chat-message clearfix">
                <img src="{{asset('front/emad/images/user.png')}}" alt="" width="32" height="32">
                <div class="chat-message-content clearfix">
                    <span class="chat-time">13:38</span>
                    <h5>أحمد</h5>
                    <p>تمام يافندم</p>
                </div> <!-- end chat-message-content -->
            </div> <!-- end chat-message -->
            <hr>
        </div> <!-- end chat-history -->
        <hr>
        <p class="chat-feedback">إكتب رساله </p>
        <form action="#" method="post">
            <fieldset>
                <input type="text" placeholder="إكتب رساله …" autofocus>
                <!--                <a href="#" class="chatbtn">Send</a>-->
                <input class="chatbtn" type="button" value="إرسال"  onclick="play()">
                <!-- <audio id="audio" src="message.mp3" ></audio> -->
            </fieldset>
        </form>
    </div> <!-- end chat -->
</div> <!-- end live-chat -->

            <!--************************************
                            Footer Start
            *************************************-->

            <footer id="tg-footer" class="tg-footer tg-haslayout">
                <div class="tg-fourcolumns">
                    <div class="container">
                        <div class="row wow pulse" data-wow-duration="2s" data-wow-delay="1s">
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 pull-left">
                                <div class="tg-footercolumn tg-widget tg-widgettext">
                                    <div class="tg-widgettitle">
                                        <h3>{{ trans("lang.about_us") }}</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <div class="tg-description">
                                            <p>
                                                {!! mb_substr(str_replace('<br />', '', $settings->{$slug->about_us}), 0, 100) !!} 
                                            </p>
                                        </div>
                                        <span>2-123-321-6543</span>
                                        <a href="mailto:info@tadamonel3omra.com">{{ $settings->site_email }}</a>
                                        <ul class="tg-socialicons tg-socialiconsvtwo">
                                            <li><a href="{{ $settings->site_facebook }}"><i class="icon-facebook-logo-outline"></i></a></li>
                                            <li><a href="{{ $settings->site_instagram }}"><i class="icon-instagram-social-outlined-logo"></i></a></li>
                                            <li><a href="{{ $settings->site_twitter }}"><i class="icon-twitter-social-outlined-logo"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3  pull-left wow pulse" data-wow-duration="2s" data-wow-delay="1s">
                                <div class="tg-footercolumn tg-widget tg-widgettravelunews">
                                    <div class="tg-widgettitle">
                                        <h3>{{ trans("lang.latest_news") }}</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <ul>
                                             @foreach($latest_news as $one)
                                            <li>
                                                <figure>
                                                    <a href="javascript:void(0);"> <img src="{{asset($one->image) }}" alt="{{ $one->{$slug->title} }}" width="100" height="100"></a>
                                                </figure>
                                                <div class="tg-newcontent">
                                                    <h4> <a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}"> {{ $one->{$slug->title} }} </a></h4>
                                                    <div class="tg-description">
                                                        <p>{!! mb_substr(str_replace('<br />', '', $one->{$slug->content}), 0, 50) !!} <a href="{{ url('/'.$lang.'/news/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">[ ... ]</a></p>
                                                    </div>
                                                    <span class="date">{{ Carbon\Carbon::parse($one->created_at)->format('d M') }}, {{ Carbon\Carbon::parse($one->created_at)->format('Y') }}</span>
                                                </div>
                                            </li>
                                             @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3  pull-left wow pulse" data-wow-duration="2s" data-wow-delay="1s">
                                <div class="tg-footercolumn tg-widget tg-widgetdestinations">
                                    <div class="tg-widgettitle">
                                        <h3>{{ trans('lang.the_most_important_sightseeing') }}</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            @foreach(\App\Sightseeing::all() as $one)
                                            <li><a class="hvr-pulse" href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></li>
                                           @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3  pull-left wow pulse" data-wow-duration="2s" data-wow-delay="1s">
                                <div class="tg-footercolumn tg-widget tg-widgetnewsletter">
                                    <div class="tg-widgettitle">
                                        <h3> {{ trans("lang.newsletter") }}</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <div class="tg-description"><p>{{ trans("lang.Subscribe_with_us_and_get_all_new_e-mail") }}</p></div>
                                        <form class="tg-formtheme tg-formnewsletter">
                                            <fieldset>
                                                <input type="email" name="email" class="form-control" id="newsletter-email" placeholder="{{ trans("lang.email") }}">
                                                <button type="submit" class="newletter-link" id="newletter-link"><img src="{{asset('front/emad/images/icons/icon-08.png')}}" alt="image destinations"></button>
                                                <div id="subscribe-result"></div>
                                                <a href="javascript:;" class="contact-email">{{ $settings->site_email }}</a>
                                            </fieldset>
                                        </form>
                                        <!--                                            <span>نحن نحترم خصوصيتك</span>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tg-footerbar">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <p>All Rights Reserved ©.2017 | <a target="_blank" href="http://www.mv-is.com/">Powered By MASTER VISION Integrated Solutions </a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!--************************************
                            Footer End
            *************************************-->

        </div>
        <!--************************************
                        Wrapper End
        *************************************-->
        <!--************************************
                        Search Start
        *************************************-->
        <div id="tg-search" class="tg-search">
            <button type="button" class="close"><i class="icon-cross"></i></button>
            <form>
                <fieldset>
                    <div class="form-group">
                        <input type="search" name="search" class="form-control" value="" placeholder="search here">
                        <button type="submit" class="tg-btn"><span class="icon-search2"></span></button>
                    </div>
                </fieldset>
            </form>
            <ul class="tg-destinations">
                <li>
                    <a href="javascript:void(0);">
                        <h3>Europe</h3>
                        <em>(05)</em>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <h3>Africa</h3>
                        <em>(15)</em>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <h3>Asia</h3>
                        <em>(12)</em>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <h3>Oceania</h3>
                        <em>(02)</em>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);">
                        <h3>North America</h3>
                        <em>(08)</em>
                    </a>
                </li>
            </ul>
        </div>
        <!--************************************
                        Search End
        *************************************-->
        <!--************************************
                        Login Singup Start
        *************************************-->
        <div id="tg-loginsingup" class="tg-loginsingup" data-vide-bg="poster: {{asset('front/emad/images/singup-img.jpg')}}" data-vide-options="position: 0% 50%">
            <div class="tg-contentarea tg-themescrollbar">
                <div class="tg-scrollbar">
                    <button type="button" class="close">x</button>
                    <div class="tg-logincontent">
                        <nav id="tg-loginnav" class="tg-loginnav">
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">My Wishlist</a></li>
                            </ul>
                        </nav>
                        <div class="tg-themetabs">
                            <ul class="tg-navtbs" role="tablist">
                                <li role="presentation" class="active"><a href="#home" data-toggle="tab">Already Registered</a></li>
                                <li role="presentation"><a href="#profile" data-toggle="tab">New to Travleu ?</a></li>
                            </ul>
                            <div class="tg-tabcontent tab-content">
                                <div role="tabpanel" class="tab-pane active fade in" id="home">
                                    <form class="tg-formtheme tg-formlogin">
                                        <fieldset>
                                            <div class="form-group">
                                                <label>Name or Email <sup>*</sup></label>
                                                <input type="text" name="firstname" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <label>Password <sup>*</sup></label>
                                                <input type="password" name="password" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <div class="tg-checkbox">
                                                    <input type="checkbox" name="remember" id="rememberpass">
                                                    <label for="rememberpass">Remember Me</label>
                                                </div>
                                                <span><a href="#">Lost your password?</a></span>
                                            </div>
                                            <button class="tg-btn tg-btn-lg"><span>update profile</span></button>
                                        </fieldset>
                                    </form>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="profile">
                                    <form class="tg-formtheme tg-formlogin">
                                        <fieldset>
                                            <div class="form-group">
                                                <label>Name or Email <sup>*</sup></label>
                                                <input type="text" name="firstname" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <label>Password <sup>*</sup></label>
                                                <input type="password" name="password" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <label>Confirm Password <sup>*</sup></label>
                                                <input type="password" name="password" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                                <div class="tg-checkbox">
                                                    <input type="checkbox" name="remember" id="remember">
                                                    <label for="remember">Remember Me</label>
                                                </div>
                                                <span><a href="#">Lost your password?</a></span>
                                            </div>
                                            <button class="tg-btn tg-btn-lg"><span>update profile</span></button>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tg-shareor"><span>or</span></div>
                        <div class="tg-signupwith">
                            <h2>Sign in With...</h2>
                            <ul class="tg-sharesocialicon">
                                <li class="tg-facebook"><a href="#"><i class="icon-facebook-1"></i><span>Facebook</span></a></li>
                                <li class="tg-twitter"><a href="#"><i class="icon-twitter-1"></i><span>Twitter</span></a></li>
                                <li class="tg-googleplus"><a href="#"><i class="icon-google4"></i><span>Google+</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--************************************
                        Login Singup End
        *************************************-->
        <script src="{{asset('front/emad/js/vendor/jquery-library.js')}}"></script>
        <script src="{{asset('front/emad/js/vendor/bootstrap.min.js')}}"></script>
        <script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
        <script src="{{asset('front/emad/js/bootstrap-select.min.js')}}"></script>
        <script src="{{asset('front/emad/js/jquery-scrolltofixed.js')}}"></script>
        <script src="{{asset('front/emad/js/owl.carousel.min.js')}}"></script>
        <script src="{{asset('front/emad/js/jquery.mmenu.all.js')}}"></script>
        <script src="{{asset('front/emad/js/packery.pkgd.min.js')}}"></script>

        <script src="{{asset('front/emad/js/scrollbar.min.js')}}"></script>
        <!-- load revolution slider scripts -->
        <script type="text/javascript" src="{{asset('front/emad/revolution_slider/js/jquery.themepunch.tools.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('front/emad/revolution_slider/js/jquery.themepunch.revolution.min.js')}}"></script>


        <script type="text/javascript">
                $(document).ready(function () {
                    $('.revolution-slider').revolution(
                            {
                                sliderType: "standard",
                                sliderLayout: "auto",
                                dottedOverlay: "none",
                                videoJsPath: "{{asset('front/emad/revolution_slider/js/videojs/')}}",
                                delay: 100000,
                                navigation: {
                                    keyboardNavigation: "off",
                                    keyboard_direction: "horizontal",
                                    mouseScrollNavigation: "off",
                                    mouseScrollReverse: "default",
                                    onHoverStop: "on",
                                    touch: {
                                        touchenabled: "on",
                                        swipe_threshold: 75,
                                        swipe_min_touches: 1,
                                        swipe_direction: "horizontal",
                                        drag_block_vertical: false
                                    }
                                    ,
                                    arrows: {
                                        style: "default",
                                        enable: true,
                                        hide_onmobile: false,
                                        hide_onleave: false,
                                        tmp: '',
                                        left: {
                                            h_align: "left",
                                            v_align: "center",
                                            h_offset: 20,
                                            v_offset: 0
                                        },
                                        right: {
                                            h_align: "right",
                                            v_align: "center",
                                            h_offset: 20,
                                            v_offset: 0
                                        }
                                    }
                                },
                                visibilityLevels: [1240, 1024, 778, 480],
                                gridwidth: 1170,
                                gridheight: 646,
                                lazyType: "none",
                                shadow: 0,
                                spinner: "spinner4",
                                stopLoop: "off",
                                stopAfterLoops: -1,
                                stopAtSlide: -1,
                                shuffle: "off",
                                autoHeight: "off",
                                hideThumbsOnMobile: "off",
                                hideSliderAtLimit: 0,
                                hideCaptionAtLimit: 0,
                                hideAllCaptionAtLilmit: 0,
                                debugMode: false,
                                fallbacks: {
                                    simplifyAll: "off",
                                    nextSlideOnWindowFocus: "off",
                                    disableFocusListener: false,
                                }
                            });
                });
        </script>


        <script src="{{asset('front/emad/js/prettyPhoto.js')}}"></script>
        <script src="{{asset('front/emad/js/countdown.js')}}"></script>
        <script src="{{asset('front/emad/js/parallax.js')}}"></script>
        <script src="{{asset('front/emad/js/gmap3.js')}}"></script>
        <script src="{{asset('front/emad/WOW-master/dist/wow.min.js')}}"></script>
        <script src="{{asset('front/emad/js/form-wizard.js')}}" type="text/javascript"></script>
        <script src="{{asset('front/emad/js/chat.js')}}" type="text/javascript"></script>
        <script src="{{asset('front/emad/js/bootstrap-slider.js')}}" type="text/javascript"></script>
        <script src="{{asset('front/emad/js/main.js')}}"></script>


        <script type="text/javascript">

$(document).ready(function () {
   
    $("#contact_form").submit(function () {
        // alert("jdf");
        flag = true;
        $(".required_field").each(function () {
            var tjqthis = $(this);
            if (tjqthis.val() == "") {
                flag = false;
                tjqthis.css("border", "1px solid red");
                tjqthis.closest(".form-group").find(".input-group-addon").css("color", "red").css("border", "1px solid red");
                setTimeout(function () {
                    tjqthis.css("border", "");
                    tjqthis.closest(".form-group").find(".input-group-addon").css("color", "").css("border", "");
                }, 1000);
            }
        });
        var email_value = $("input[name='email']").val();
        if (!validateEmail(email_value)) {
            flag = false;
            $("input[name='email']").css("border", "1px solid red");
            $("input[name='email']").closest(".form-group").find(".input-group-addon").css("color", "red").css("border", "1px solid red");
            setTimeout(function () {
                $("input[name='email']").css("border", "");
                $("input[name='email']").closest(".form-group").find(".input-group-addon").css("color", "").css("border", "");
            }, 1000);
        }

        if (flag) {
            var url = config.base_url + "/contact/send";
            var formData = $("#contact_form").serialize();
            $.ajax({
                url: url,
                type: "post",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: formData,
                success: function (msg) {
                    $("#submit_btn").html(lang.complete_request);
                    $("#submit_btn").attr("disabled", "disabled");
                }
            });
            return false;
        }
        return false;
    });
});
function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

</script>
        
        
<script>
$(document).ready(function(){ 
    $("#ex2").slider({
      tooltip: 'always'
    });
    
    
});

$(document).ready(function () {
       //var utl = $("#utl").val();
        $("#search_agent_button").click(function (e) {
            e.preventDefault();
            var current_country = $("#agent_country").val();
            $.ajax({
                url: config.base_url+'/search_agent/' + current_country,
                type: "get",
                data: {},
                success: function (msg) {
                    console.log(msg);
                    var html = "";
                    var result = JSON.parse(msg);
                    for (var i in result) {
                        html += '<div class="col-md-3 col-xs-6 wkyle">'
                                + '<a href="' + result[i].url + '" target="_blank">'
                                + '<img style="" src="' + config.base_url+'/'+result[i].image + '" alt="' + result[i].title_en + '"  title="' + result[i].title_en + '">'
                                + '</a>'
                                + '</div>';
                    }console.log(html);
                    $("#agents_block").html(html);
                }
            });
        });
        });
        
  jQuery(".newletter-link").on("click", function (e) {
            e.preventDefault();
            flag = true;
            var email = jQuery("#newsletter-email").val();
            if (email == "") {
                jQuery("#subscribe-result").html(lang.email_field_is_empty);
                setTimeout(function () {
                    jQuery("#subscribe-result").html("");
                }, 2500);
                flag = false;
            } else {
                if (!validateEmail(email)) {
                    jQuery("#subscribe-result").html(lang.not_valid_email_address);
                    setTimeout(function () {
                        jQuery("#subscribe-result").html("");
                    }, 2500);
                    flag = false;
                } else {
                    var url = config.base_url + "/home/subscribe/" + email;
                    jQuery.ajax({
                        url: url,
                        type: "get",
                        success: function (msg) {
                            if (msg == 0) {
                                jQuery("#subscribe-result").html(lang.redundant_email_address);
                                setTimeout(function () {
                                    jQuery("#subscribe-result").html("");
                                }, 2500);
                            } else {
                                jQuery("#subscribe-result").html(lang.successfully_subscribed);
                                setTimeout(function () {
                                    jQuery("#subscribe-result").html("");
                                }, 2500);
                            }
                        }
                    });
                }
            }
        });      
</script>
<script>
$(document).ready(function () {
$(".input" ).focusin(function() {
  $( this ).find( "span" ).animate({"opacity":"0"}, 200);
});

$( ".input" ).focusout(function() {
  $( this ).find( "span" ).animate({"opacity":"1"}, 300);
});
            $(".login").submit(function(){
          $(this).find(".submit i").removeAttr('class').addClass("fa fa-check").css({"color":"#fff"});
          $(".submit").css({"background":"#2ecc71", "border-color":"#2ecc71"});
          $(".feedback").show().animate({"opacity":"1", "bottom":"-80px"}, 400);
          $("input").css({"border-color":"#2ecc71"});
          return false;
        });
        $(".register").submit(function(){
          $(this).find(".submit i").removeAttr('class').addClass("fa fa-check").css({"color":"#fff"});
          $(".submit").css({"background":"#2ecc71", "border-color":"#2ecc71"});
          $(".feedback").show().animate({"opacity":"1", "bottom":"-80px"}, 400);
          $("input").css({"border-color":"#2ecc71"});
          return false;
        });
});
</script>
