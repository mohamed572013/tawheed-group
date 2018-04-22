@extends('front.layout')
@section('page_title')
{{ trans("lang.make_your_umrah") }}
@stop
@section('content')
<!-- breadcrumbs start-->
<section  class="breadcrumbs">
    <div class="container">
        <div class="text-left breadcrumbs-item"><a href="{{ url('/'.$lang.'/') }}">{{ trans("lang.home") }}</a><i>/</i><span>{{ trans("lang.make_your_umrah") }}</span>
            <h2><span>{{ trans("lang.make_your_umrah") }}</span></h2>
        </div>
    </div>
</section>
<!-- ! breadcrumbs end-->

<!-- content-->  
<div class="content-body">
    <div class="element-section pattern bg-gray-3 relative pt-20 pb-100">
        <div class="container">
            <div class="row">
                <div class="widget-contact-form pb-0">
                    <div class="col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-sm-12 col-xs-12 ">
                        <!-- Form Wizard -->
                        <div class="form-wizard form-header-classic form-body-classic">
                            <form role="form" id="DesignIslamicForm" action="" method="post">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                <input type="hidden" name="type" value="0">
                                <!-- Form progress -->
                                <div class="form-wizard-steps form-wizard-tolal-steps-3 ">
                                    <div class="form-wizard-progress">
                                        <div class="form-wizard-progress-line" data-now-value="33.333333333" data-number-of-steps="3" style="width: 33.333333333%;"></div>
                                    </div>
                                    <!-- Step 1 -->
                                    <div class="form-wizard-step active step1">
                                        <div class="form-wizard-step-icon"><i class="fa fa-hotel" aria-hidden="true"></i></div>
                                        <p>{{ trans("lang.hotel_data") }}</p>
                                    </div>
                                    <!-- Step 1 -->

                                    <!-- Step 2 -->
                                    <div class="form-wizard-step step2 ">
                                        <div class="form-wizard-step-icon"><i class="flaticon-airplane-shape" aria-hidden="true"></i></div>
                                        <p>{{ trans("lang.flight_data") }}</p>
                                    </div>
                                    <!-- Step 2 -->

                                    <!-- Step 3 -->
                                    <div class="form-wizard-step step3">
                                        <div class="form-wizard-step-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                        <p>{{ trans("lang.pass_data") }}</p>
                                    </div>
                                    <!-- Step 3 -->
                                </div>
                                <!-- Form progress -->


                                <!-- Form Step 1 -->
                                <fieldset id="step1" class="step1">
                                    <!-- Progress Bar -->
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="33.333333333" aria-valuemin="0" aria-valuemax="100" style="width: 33.333333333%">
                                        </div>
                                    </div>
                                    <!-- Progress Bar -->
                                    <h4>{{ trans("lang.hotel_data") }}:  </h4>

                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.season") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                         <select name="season_id" id="trip_season" class="form-control required_field required">
                                                            <option value="">{{ trans("lang.select_season") }}</option>
                                                            @foreach($categories as $one)
                                                            <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                            @endforeach
                                                        </select>
                                                    
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                     
                                    </div>
                                      
                                    <!-- ******************************************************* -->
                                    <div class="row">
                                        <div class="col-md-4 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.makka_hotel") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map" aria-hidden="true"></i>
                                                    </div>
                                                   <input type="text" name="makka_hotel" id="makka_hotel" class="form-control required_field required" placeholder="{{ trans("lang.makka_hotel") }}">
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                          <div class="col-md-5 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.makka_arrive") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map" aria-hidden="true"></i>
                                                    </div>
                                                 <input type="date" name="makka_arrive" class="form-control required_field datetime required" placeholder="{{ trans("lang.makka_arrive") }}">
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-3 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.numer_of_nights") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa  fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                    <input type="number" id="makka_number_of_nights" min="1" name="makka_nights" class="form-control required_field required" placeholder="{{ trans("lang.numer_of_nights") }}">
                                                    
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                      
                                    </div>
                                    <!-- ******************************************************* -->
                                   
                                    
                                    <div class="row">

                                        <div class="col-md-4 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.madina_hotel") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map" aria-hidden="true"></i>
                                                    </div>
                                                    <input type="text" name="madina_hotel" id="madina_hotel" class="form-control required_field required" placeholder="{{ trans("lang.madina_hotel") }}">
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        
                                        <div class="col-md-5 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.madina_arrive") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa  fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                   <input type="date" name="madina_arrive" class="form-control required_field datetime required" placeholder="{{ trans("lang.madina_arrive") }}">
                                                    
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-3 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.numer_of_nights") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                    <input type="number" name="madina_nights" id="madina_number_of_nights" min="1" class="form-control required_field required" placeholder="{{ trans("lang.numer_of_nights") }}">
                                                    
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                    </div>
                                    
                                       <!-- ******************************************************* -->
                                         <!-- ******************************************************* -->
                                         <div class="rooms_block">
                                         <div class="row new_item">
                                        <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.select_room") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                    <select  class="form-control required" style="margin-bottom:0;" name="rooms[]" id="room_type_id">
                                                        <option value="" >{{ trans("lang.select_room") }}</option>
                                                       
                                                              @foreach($rooms as $one)
                                                                <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                               @endforeach
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.number_of_rooms") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                    <input   class="form-control required" style="margin-bottom:0;" type="number" min="1" placeholder="{{ trans("lang.number_of_rooms") }}" name="number_of_rooms[]" id="number_of_rooms" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                                 <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.adults") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-users" aria-hidden="true"></i>
                                                    </div>
                                                    <input class="form-control required" style="margin-bottom:0;" type="number" min="0"  placeholder="{{ trans("lang.adults") }}" name="number_of_adults[]" id="number_of_adults" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.infants") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-users" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control required" style="margin-bottom:0;"  type="number" min="0"  placeholder="{{ trans("lang.infants") }}" name="number_of_infants[]" id="number_of_infants" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                          <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.number_of_children") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-users" aria-hidden="true"></i>
                                                    </div>
                                                    <input class="form-control required" style="margin-bottom:0;" type="number" min="0"  placeholder="{{ trans("lang.number_of_children") }}" name="number_of_children[]" id="number_of_children" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.select_meal") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-users" aria-hidden="true"></i>
                                                    </div>
                                                    <select name="meals[]" class="form-control meals required_field required">
                                                <option value="">{{ trans("lang.select_meal") }}</option>
                                                @foreach($meals as $one)
                                                <option value="{{ $one->id }}">{{ $one->{$slug->title} }}</option>
                                                @endforeach
                                            </select>
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        
                                        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                       
                                        <div class="input-group">
                                            <a href="" class="btn btn-info" style="color:  #fff;"  id="add_more" >{{ trans("lang.more") }}</a>
                                            <a href="" class="btn btn-danger remove" style="color:  #fff;background-color:  #ac2925;"  id="rem" >{{ trans("lang.remove") }}</a>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                 
                                         </div>
                                    
                                   <!-- ******************************************************* -->
                                    <div class="form-wizard-buttons">
                                       <button type="button" class="btn btn-next">{{ trans("lang.next") }}</button>
                                    </div>
                                </fieldset>
                                <!-- Form Step 1 -->
                                
                               <!-- Form Step 2 -->
                               <fieldset  id="step2" class="step2">
                                    <!-- Progress Bar -->
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="66.666666666" aria-valuemin="0" aria-valuemax="100" style="width: 66.666666666%">
                                        </div>
                                    </div>
                                   
                                    
                                     <!-- Progress Bar -->
                                    <h4> {{ trans("lang.flight_data") }}:  </h4>
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.departure_city") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control" style="margin-bottom:0;" type="text" placeholder="{{ trans("lang.departure_city") }}" name="flight_direction_from" id="flight_direction_from">
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.arrival_city") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control" style="margin-bottom:0;" type="text" placeholder="{{ trans("lang.arrival_city") }}" name="flight_direction_to" id="flight_direction_to"  >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                    </div>
                                    <!-- ******************************************************* -->
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.back_from") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control" style="margin-bottom:0;" type="text" placeholder=" {{ trans("lang.back_from") }}" name="direction_of_return_from" id="direction_of_return_from" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.back_to") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control" style="margin-bottom:0;" type="text" placeholder=" {{ trans("lang.back_to") }}" name="direction_of_return_to" id="direction_of_return_to"   >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                    </div>
                                  
                                    
                                    <!-- ******************************************************* -->
                                    <div class="form-wizard-buttons">
                                        <button type="button" class="btn btn-previous">{{ trans("lang.previous") }}</button>
                                        <button type="button" class="btn btn-next">{{ trans("lang.next") }}</button>
                                    </div>
                                </fieldset>
                                <!-- Form Step 2 -->

                                <!-- Form Step 3 -->
                                <fieldset id="step3" class="step3">
                                    <!-- Progress Bar -->
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                        </div>
                                    </div>
                                    <!-- Progress Bar -->
                                    <h4>{{ trans("lang.pass_data") }}:  </h4>
                                    <div class="row">
                                        <div class="col-md-4 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.name") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-user" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control required" style="margin-bottom:0;" type="text" placeholder="{{ trans("lang.name") }}" name="name" id="name" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-4 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.email") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                                    </div>
                                                    <input class="form-control required" style="margin-bottom:0;" type="email" placeholder="{{ trans("lang.email") }}" name="email" id="email_trip"  >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                        <div class="col-md-4 col-sm-12 col-xs-12 pull-left ">
                                            <div class="form-group">
                                                <label>{{ trans("lang.phone") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                                    </div>
                                                    <input  class="form-control required" style="margin-bottom:0;" type="text" placeholder="{{ trans("lang.phone") }}" name="phone" id="phone" >
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                    </div>
                                    <!-- ******************************************************* -->
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label>{{ trans("lang.notes") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                                    </div>
                                                    <textarea name="notes" id="message" rows="7" class="form-control" placeholder="{{ trans("lang.notes") }}" style="margin-bottom:0;min-height: 120px;"></textarea>
                                                </div>
                                            </div>
                                            <span class="help-block" style="margin-bottom:0;margin-top: 0;"></span>
                                        </div>
                                    </div>
                                    <div class="form-wizard-buttons">
                                        <button type="button" class="btn btn-previous">{{ trans("lang.previous") }}</button>
                                        <button type="submit" class="cws-button alt" id="submit-make">{{ trans("lang.send_request_now") }}</button>
                                    </div>
                                </fieldset>
                                <!-- Form Step 3 -->


                            </form>
                        </div>
                        <!-- Form Wizard -->
                    </div>
                    <div class="email_server_responce"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ! content-->

@stop
@section('scripts_pages')
{!! HTML::script('assets/global/plugins/jquery.min.js') !!}
{!! HTML::script('assets/global/plugins/jquery-validation/js/jquery.validate.min.js') !!}
{!! HTML::script('assets/global/plugins/jquery-validation/js/additional-methods.min.js') !!}
{!! HTML::script('front/mine/make_your_umrah.js') !!}
{!! HTML::script('front/mine/design_islamic.js') !!}
@stop