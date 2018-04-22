@extends('front.layout')
@section('page_title')
{{ $details->{$slug->title} }}
@stop

@section('content')
<div id="content">
    <div class="programssec">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
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
					                    <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">{{ trans('lang.fav_dest') }}</a></li>
					                </ul>
					                <!-- Tab panes -->
					                <div class="tab-content tabs">
					                    <div role="tabpanel" class="tab-pane fade in active" id="Section1">
					                        <h3> {{ $details->{$slug->title} }}</h3>
											<p>
                                                                                            {!! $details->{$slug->content} !!}
                                                                                        </p>
					                    </div>
					                    <div role="tabpanel" class="tab-pane fade" id="Section2">
                                                                @if($details_count>0)
                                                                 @if(!empty($details->sightseeing))
					                        <h3>{{ trans("lang.sightseeing") }}</h3>
					                        <div class="sightseensec">
												<div class="row">
                                                                                                     @foreach($details->sightseeing as $one)
													<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
														<div class="box">
															<a href="{{ url('/'.$lang.'/destinations/sightseeing/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
											                <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
											                <div class="box-content">
											                    <span class="post">{{ $one->{$slug->title} }} </span>
											                </div>
											                </a>
											            </div>
													</div>
												@endforeach
												</div>
											</div>
                                                                @endif
                                                                 @endif
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
</div>
@stop