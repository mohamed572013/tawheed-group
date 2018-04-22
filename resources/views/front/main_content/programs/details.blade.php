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
	            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
	        	   <div class="searchsidebar">
                                                                <h4><i class="fa fa-angle-double-right"></i>  {{ trans("lang.program_adv") }}</h4>
								<h5><i class="fa fa-calendar"></i> {{ trans("lang.date") }}:</h5>
								 @foreach($details->dates as $one)
								<div class="featdata">{{ $one->start_date }} </div>
								@endforeach
							
							<!-- **********************************************************************-->
								<h5><i class="fa fa-question-circle"></i> {{ trans("lang.additional_service") }}:</h5>
								<div class="featdata">
								<ul class="style-1 mb-0">
                                                                    @foreach($services_array as $one)
								 
								  <li><img class="hotel-icon" src="{{ asset($one->image) }}" alt="AC" style="  max-width: 24px; max-height: 24px"><span class="booking-item-feature-title">{{ $one->{$slug->title} }}</span></li>
								  @endforeach
                                                                </ul>
							</div>
							<!-- **********************************************************************-->
							<h5><i class="fa fa-money"></i> {{ trans("lang.pricelist") }} :</h5>
                                                                 @foreach($details->dates as $one)
                                                                 <div class="featdata">{{ $one->price }} {{ trans("lang.sr") }}  => {{ $one->nationality->{$slug->title} }}</div>
								 @endforeach
							<!-- **********************************************************************-->

							<!-- **********************************************************************-->

							<!-- **********************************************************************-->
	                </div>
	                <!-- **********************************************************************-->
	            </div>
	            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
	            	<div class="programsdetailsitems">
						<div class="row">
							
                                                    
                                                    <div class="col-sm-12">
                                               <div class="programsslide">
		                            <div class="slideshow owl-carousel">
		                                <div class="item">
		                                    <img src="{{ asset($details->image) }}" alt="{{ $details->{$slug->title} }}" title="{{ $details->{$slug->title} }}" class="img-responsive"/>
		                                </div>
		                                
		                            </div>
                            </div>
							<div class="col-lg-12">
					            <div class="tab" role="tabpanel">
					                <!-- Nav tabs -->
					                <ul class="nav nav-tabs" role="tablist">
					                    <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">{{ trans("lang.overview") }}</a></li>
					                    <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">{{ trans("lang.cities") }}</a></li>
					                    <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab">{{ trans("lang.hotels") }}</a></li>
					                    <li role="presentation"><a href="#Section4" aria-controls="messages" role="tab" data-toggle="tab">{{ trans("lang.reservation") }}</a></li>
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
					                        <h3>{{ trans("lang.cities") }}</h3>
                                                                @foreach($cities as $one)
					                        <div class="pro-city">
					                        	<div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
													<div class="city-item">
													  <!-- city Image -->
													  <div class="city-image">
													    <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
													      <div class="img"><img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" class="img-responsive"></div>
													    </a>
													  </div>
													  <!-- city body -->
													  <div class="city-body">
													    <h3><<a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></h3>
													   <p> {{ mb_substr(str_replace('<br />', '',$one->{$slug->content}), 0, 300) }} <a href="{{ url('/'.$lang.'/destinations/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">[ ... ]</a> </p>
                                                                                                          </div>
													</div>
												</div>
											</div>
                                                                 @endforeach
					                    </div>
					                    <div role="tabpanel" class="tab-pane fade" id="Section3">
					                        <h3>{{ trans("lang.hotels") }}</h3>
											<div class="prohotels">
                                                                                            
                                                                                             @foreach($hotels as $key => $one)
											    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
											    	<a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
				            							<div class="box">
											                <img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
											                <div class="box-content">
											                    <i class="icon fa fa-paper-plane"></i>
											                    <span class="post"> {{ $one->{$slug->title} }}</span>
											                </div>
											            </div>
										            </a>
											    </div>
                                                                                             @endforeach
											   
											</div>
					                    </div>
					                    <div role="tabpanel" class="tab-pane fade" id="Section4">
					                        <h3>{{ trans("lang.reservation") }}</h3>
											<div class="probooking">
				                        		<form method="post" id="book_program_form"  action="#">
                                                                             <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                                             <input type="hidden" id="program_id" name="program_id" value="{{ $details->id }}" />
						                            <div class="row">
						                                <div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i></span>
						                                            <input id="contact_namey" name="name" type="text" required class="form-control" placeholder=" {{ trans("lang.full_name") }}">
						                                        </div>
						                                    </div>
						                                </div>
						                                <div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
					                                            <div class="input-group">
						                                            <div class="input-group-addon">
						                                                <i class="fa fa-calendar" aria-hidden="true"></i>
						                                            </div>
						                                            <select class="form-control date_of_trip" style="margin-bottom:0;" name="date_of_trip" id="places_iddd">
						                                                <option selected=""> {{ trans("lang.date_of_trip") }}  </option>
						                                                 @foreach($new_dates_array as $one)
                                                                                                    <option value="{{ $one->start_date }}">{{ $one->start_date }}</option>
                                                                                                 @endforeach
                                                                                            </select>
						                                        </div>
						                                    </div>
						                                </div>
						                            </div>
                                                                             
						                            <div class="row">
						                                <div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
						                                            <input  name="email" type="text" class="form-control" placeholder=" {{ trans("lang.email") }}" required >
						                                        </div>
						                                    </div>
						                                </div>
						                            	<div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group">
							                                            <div class="input-group-addon">
							                                                <i class="fa fa-calendar" aria-hidden="true"></i>
							                                            </div>
							                                            <select class="form-control" style="margin-bottom:0;" name="room_type[]" id="room_type">
							                                                <option selected=""> {{ trans("lang.room_type") }}</option>
							                                                  @foreach($rooms as $one)
                                                                                                            <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                                                                            @endforeach
							                                            </select>
							                                      </div>
						                                    </div>
						                                </div>
						                            </div>
                                                                             
                                                                              <div class="row">
						                                <div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
						                                          
                                                                                            <select name="nationality" style="margin-bottom:0;">
                                                                                                 <option selected=""> {{ trans("lang.nationality") }}</option>
                                                                                                @foreach($nationalities as $key => $one)
                                                                                                <option value="{{ $key }}">{{ $one }}</option>
                                                                                                @endforeach
                                                                                            </select>
						                                        </div>
						                                    </div>
						                                </div>
						                            	<div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group">
							                                            <div class="input-group-addon">
							                                                <i class="fa fa-calendar" aria-hidden="true"></i>
							                                            </div>
							                                            <select class="form-control" style="margin-bottom:0;" name="meals[]" id="room_type">
							                                                <option selected=""> {{ trans("lang.meals") }}</option>
							                                                  @foreach($meals as $one)
                                                                                                         <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                                                                        @endforeach
                                                                                                     </select>
							                                      </div>
						                                    </div>
						                                </div>
						                            </div>
 													<div class="row">
		                                				<div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                                                            <input id="number_of_rooms" name="number_of_rooms[]" type="number" min="0" max="30" class="form-control" placeholder="{{ trans("lang.rooms") }} " required >
						                                        </div>
						                                    </div>
						                                </div>
						                                <div class="col-md-6 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-phone"></i></span>
						                                            <input id="tty" name="phone" type="number" class="form-control" placeholder="{{ trans("lang.phone") }}" required >
						                                        </div>
						                                    </div>
						                                </div>
													</div>
 													<div class="row">
 														<div class="col-md-4 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                                                            <input id="adults" name="adults[]" type="number" max="100" min="0"  class="form-control" placeholder="{{ trans("lang.adults") }} " required >
						                                        </div>
						                                    </div>
						                                </div>
						                                <div class="col-md-4 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i></span>
						                                             <input id="children" name="children[]" type="number" max="100" min="0"  class="form-control" placeholder="{{ trans("lang.children") }} " required >
						                                        </div>
						                                    </div>
						                                </div>
						                                <div class="col-md-4 col-sm-12">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i></span>
						                                            <input id="infants" name="infants[]" type="number" max="100" min="0"  class="form-control" placeholder="{{ trans("lang.infants") }} " required >
						                                        </div>
						                                    </div>
						                                </div>
													</div>
													<div class="row">
						                                <div class="col-md-12 mrgbtn">
						                                    <div class="form-group">
						                                        <div class="input-group"> <span class="input-group-addon v-align-t"><i class="fa fa-pencil"></i></span>
						                                            <textarea id="contact_textyu" name="program_details" rows="4" class="form-control" placeholder="{{ trans("lang.details") }}" required ></textarea>
						                                        </div>
						                                    </div>
						                                </div>
						                             </div>
						                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                                                    <button type="submit" id="submit_btn" class="btn btn-lg floatingbtn blue"> {{ trans("lang.send_booking_request") }}<i class="fa fa-angle-double-right"></i></button>
						                                </div>

						                        </form>
											</div>
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
{!! HTML::script('front/mine/programs_booking.js') !!}
@stop