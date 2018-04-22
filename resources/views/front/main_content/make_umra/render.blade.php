                    <div class="row new_item remove_row">
                                        <div class="col-md-2 col-sm-12 col-xs-12 pull-left">
                                            <div class="form-group">
                                                <label> {{ trans("lang.select_room") }}</label>
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                                    </div>
                                                    <select  class="form-control required" style="margin-bottom:0;" name="rooms[]" id="room_type_id">
                                                        <option value="">{{ trans("lang.select_room") }}</option>
                                                       
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
                                                    <input   class="form-control required" style="margin-bottom:0;" type="number" min="0" placeholder="{{ trans("lang.number_of_rooms") }}" name="number_of_rooms[]" id="number_of_rooms" >
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
                                                    <select name="meals[]" class="form-control meals required_field">
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
                                             <a href="" class="btn btn-info add" style="color:  #fff;"  id="add_more" >{{ trans("lang.more") }}</a>
                                             <a href="" class="btn btn-danger remove" id="rem" style="color:  #fff;background-color:  #ac2925;" >{{ trans("lang.remove") }}</a>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                 
                                