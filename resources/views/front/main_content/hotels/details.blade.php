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
                            <li> {{ trans('lang.umrah_packages') }}</li>
                            <li> {{ $details->{$slug->title} }}</li>
                        </ul>
                    </div>
                </div>
            </div>
	        <div class="row">
	            <div>
	        	<div class="programsdetailsitems">
                		<div class="row">
	                		<div class="col-lg-12">
	                            <h3>
	                                <i class="fa fa-map abc" aria-hidden="true"></i>
	                                <span>
	                                   {{ $details->{$slug->title} }} 
	                                </span>
	                            </h3>
	                        </div>
                        </div>
						<div class="row">
							<div class="col-sm-12">
								<div class="programsslide">
		                            <div class="slideshow owl-carousel">
		                                <div class="item">
		                                    <img src="{{ asset($details->image) }}" alt="{{ $details->{$slug->title} }}" title="{{ $details->{$slug->title} }}" class="img-responsive"/>
		                                </div>
		                                
		                            </div>
		                        </div>
	                        </div>
							<div class="col-lg-12">
					            <div class="tab" role="tabpanel">
					                <!-- Nav tabs -->
					                <ul class="nav nav-tabs" role="tablist">
					                    <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">{{ trans('lang.overview') }}</a></li>
					                    
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
@section('scripts_pages')
{!! HTML::script('assets/global/plugins/jquery.min.js') !!}
{!! HTML::script('front/mine/hotels.js') !!}
@stop