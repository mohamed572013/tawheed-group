@foreach($special as $one)
<div class="col-lg-4 col-sm-6 col-md-4 col-xs-12 pull-left offers-item" >
    <article class="box animated" data-animation-type="fadeInDown" style="animation-duration: 1s; visibility: visible;">
        <figure>
            <a href="{{ url('/'.$lang.'/programs/special_details/'.$one->id) }}">
                <img style="width: 370px;height: 220px;" src="{{ asset($one->image) }}" alt="Special Offer">
            </a>
            <figcaption>
                <h2 class="caption-title">
                    <a href="{{ url('/'.$lang.'/programs/special_details/'.$one->id) }}">{{ trans("lang.book") }}</a>
                </h2>
            </figcaption>
        </figure>
    </article>
</div>
@endforeach