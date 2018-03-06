@foreach($hotels as $one)
@if(in_array($one->id, $hotels_filtered))
<div class="col-xs-12 col-sm-4 col-md-4 col-xs-12 pull-left hotel-item">
    <article class="box animated styledbox" data-animation-type="fadeInDown"  style="animation-duration: 1s; visibility: visible;">
        <figure>
            <a href="{{ url('/ar/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->title_ar)) }}">
                <img style="width: 270px;height: 161px;" src="{{ asset($one->image) }}" alt="{{ $one->title_ar }}">
            </a>
            <figcaption>
                <h2 class="caption-title">
                    <a href="{{ url('/ar/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->title_ar)) }}">
                        {{ $one->title_ar }}
                    </a>
                </h2>
            </figcaption>
        </figure>
    </article>
</div>
@endif
@endforeach
<input type="hidden" id="count" value="{{ $count }}" />