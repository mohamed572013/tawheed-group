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
                            <li><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a></li>
                            <li> {{ trans('lang.special_offers') }}</li>
                            
                        </ul>
                    </div>
                </div>
            </div>
	        <div class="row">
	           
	             <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                <div class="travelo-box box-full">
                    <div class="contact-form">
                        <h2>{{ trans("lang.book_now") }} </h2>
                        <form action="#" method="post" id="special_offer_form">
                            <input type="hidden" name="id" value="{{ $id }}" />
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="row">
                                <div class="col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.name") }}</label>
                                        <input type="text" name="name" class="input-text full-width required_field">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.email") }}</label>
                                        <input type="text" name="email" class="input-text full-width required_field">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.phone") }}</label>
                                        <input type="number" name="subject" class="input-text full-width required_field">
                                    </div>
                                </div>
                                <div class="col-sm-12  pull-left">
                                    <div class="form-group">
                                        <label>{{ trans("lang.message") }}</label>
                                        <textarea name="message" rows="3" cols="20" class="form-control input-text full-width required_field" placeholder="Leave you Message
                                                  "></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <button id="submit_btnf" type="submit" class="form-control btn-info full-width">{{ trans("lang.send") }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- *******************425px**************************************************** -->

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                <article class="box animated Specialoffimg" data-animation-type="fadeInDown">
                    <figure>
                        <a href="javascript:;"><img style="width: 570px;height: 350px;" src="{{ asset($details->image) }}" alt=""></a>
                    </figure>
                </article>
            </div>
            <!-- *********************************************************************** -->
	        </div>
	    </div>
	</div>
</main>

@stop
@section('scripts_pages')
{!! HTML::script('assets/global/plugins/jquery.min.js') !!}
{!! HTML::script('front/mine/offers.js') !!}
@stop