<!doctype html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->  <html class="no-js" lang="zxx"> <!--<![endif]-->
    <head>
         @include('front.components.meta')
        
    </head>
    <body class="tg-home tg-homevone">
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!--************************************
                                Loader Start
        *************************************-->
<!--         <div class="loader">
    <div class="span">
        <div class="location_indicator"></div>
    </div>
</div> -->
        <!--************************************
                                Loader End
        *************************************-->
        <!--************************************
                                Loader Start
        *************************************-->
<!--         <div class="loader">
    <div class="span">
        <div class="location_indicator"></div>
    </div>
</div> -->
        <!--************************************
                                Loader End
        *************************************-->
            @include('front.components.header')


            <?php // include('main_content/' . $main_content . '.php') ?>

              @yield('content')
             @include('front.components.footer')
              @yield('scripts_pages')
    </body>
</html>