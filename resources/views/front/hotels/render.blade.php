@foreach($hotels as $one)
<div class="col-xs-12 col-sm-4 col-md-4 col-xs-12 pull-left hotel-item">
    <article class="box animated styledbox" data-animation-type="fadeInDown"  style="animation-duration: 1s; visibility: visible;">
        <figure>
            <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                <img style="width: 270px;height: 161px;" src="{{ asset($one->image) }}" alt="{{ $one->{$slug->title} }}">
            </a>
            <figcaption>
                <h2 class="caption-title">
                    <a href="{{ url('/'.$lang.'/hotels/details/'.$one->id.'/'.str_replace(' ', '-', $one->{$slug->title})) }}">
                        {{ $one->{$slug->title} }}
                    </a>
                </h2>
            </figcaption>
        </figure>
    </article>
</div>
@endforeach
<input type="hidden" id="count" value="{{ $count }}" />