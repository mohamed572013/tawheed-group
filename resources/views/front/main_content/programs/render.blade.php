@foreach($programs as $one)
 <!-- hotel item ( 1 ) -->
                        <div class="col-sm-6 col-lg-4 sm-mb-30px program-item">
                            <div class="program-grid background-white border border-grey-1 with-hover">
                                <div class="hotel-img position-relative">
                                    <div class="hover-option background-main-color opacity-6">
                                        <div class="h3 text-center text-white padding-top-n-25 "><i class="fa fa-search opacity-10"></i></div>
                                    </div>
                                   <a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}">
                                    <img src="{{ asset($one->image) }}" alt=""></a>
                                </div>
                                <div class="rating">
                                    <ul>
                                         @if($one->stars==1)
                                        <li class="active"></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        <li></li>
                                        @elseif($one->stars==2)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                         <li></li>
                                        <li></li>
                                        <li></li>
                                         @elseif($one->stars==3)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li></li>
                                        <li></li>
                                         @elseif($one->stars==4)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li></li>
                                         @elseif($one->stars==5)
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        
                                        <li class="active"></li>
                                        <li class="active"></li>
                                        @endif
                                    </ul>
                                </div>
                                <div class="padding-12px">
                                    <h3 class="text-uppercase text-medium"><a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}" class="text-dark">
                                            {{ $one->{$slug->title} }}
                                        </a>
                                    </h3>
                                    <?php 
                                       $city_ids = json_decode($one->city_id);
                                        $city = App\City::where("id", $city_ids['0'])->first();
                                    ?>
                                  
                                    <small class="text-uppercase text-extra-small">
                                        <a href="#" class="text-grey-4"><i class="fa fa-map-marker margin-right-5px"></i>
                                        <span class="text-third-color margin-right-5px"> {{ $city->{$slug->title} }}</span></a>
                                    </small>
                                    <div class="d-block padding-tb-8px text-grey-2 "> {!! mb_substr(str_replace('<br/>', '',$one->{$slug->content}), 0, 100) !!}
                                            <a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}">[ ... ]</a> </div>
                                    <div class="margin-bottom-8px text-uppercase text-extra-small">
                                        <strong class="text-medium text-third-color padding-right-5px font-weight-bold"> 
                                            @foreach($one->dates as $value)
                                                @if($value->start_date > $today)
                                                @php($money = $value->price)
                                                {{ trans("lang.sr") }}{{ $money  }}
                                               
                                                @endif
                                                @endforeach
                                                </strong>
                                    </div>
                                    <a href="{{ url('/'.$lang.'/programs/details/'.$one->id."/".str_replace(' ', '-', $one->{$slug->title})) }}" class="grid-btn btn-sm btn-lg btn-block background-main-color text-white text-center font-weight-bold text-uppercase "> {{ trans("lang.prog_details") }}</a>
                                </div>
                            </div>
                        </div>
                      @endforeach