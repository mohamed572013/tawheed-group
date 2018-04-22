@extends('front.layout')
@section('page_title')
{{ trans("lang.services") }}
@endsection
@section('content')
<main id="tg-main" class="tg-main tg-haslayout">
    <div class="omrah-prog-details"> 
	    <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs">
                        <ul class="list-inline">
                            <li><a href="{{ url('/') }}">{{ trans("lang.home") }}</a></li>
                            <li>{{ trans("lang.services") }}</li>
                        </ul>
                    </div>
                </div>
            </div>
                
	        <div class="row">
                     @foreach($services as $one)
				<div class="col-md-6 help-info">
				      <div class="col-md-9 box-info-help"><h3><a href="{{ url('/'.$lang.'/services/details/'.$one->id . "/" . str_replace(' ', '-', $one->{$slug->title})) }}">{{ $one->{$slug->title} }}</a></h3><p>{!! mb_substr($one->{$slug->content}, 0, 100) !!}
                                              <br/>
                                              <a href="{{ url('/'.$lang.'/services/details/'.$one->id . "/" . str_replace(' ', '-', $one->{$slug->title})) }}" title="{{ $one->{$slug->title} }}" class="button btn-mini">{{ trans("lang.more") }}</a></p>
				      </div>
				       <div class="col-md-3 info-img-help"><a href=""><img src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}" title="{{ $one->{$slug->title} }}"></a></div>
				</div>

				
                      @endforeach
	        </div>
	      
	    </div>
	</div>
</main>
@endsection
