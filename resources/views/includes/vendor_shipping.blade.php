<div class="modal fade" id="vendor_shipping{{$vendor_id}}" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">@lang('Shipping')</h5>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="packeging-area">
                    @if(isset($shipping) && is_array($shipping) || is_object($shipping))
                    @forelse($shipping as $data)
                        @if(is_object($data) && isset($data->price))
                            <div class="radio-design">
                                <input type="radio" class="shipping" ref="{{$vendor_id}}"
                                    data-price="{{ round($data->price * $curr->value,2) }}"
                                    view="{{ $curr->sign }}{{ round($data->price * $curr->value,2) }}"
                                    data-form="{{$data->title_en}}" id="free-shepping{{ $data->id }}"
                                    name="shipping[{{$vendor_id}}]" value="{{ $data->id }}" {{ ($loop->first) ? 'checked' : '' }}>
                                <span class="checkmark"></span>
                                <label for="free-shepping{{ $data->id }}">
                                    {{ $data->title_en }}
                                    @if($data->price != 0)
                                    + {{ $curr->sign }}{{ round($data->price * $curr->value,2) }}
                                    @endif
                                    <small>{{ $data->subtitle_en }}</small>
                                </label>
                            </div>
                        @else
                            <p>@lang('Invalid Shipping Data')</p>
                        @endif
                    @empty
                        <p>@lang('No Shipping Method Available')</p>
                    @endforelse
                @else
                    <p>@lang('No Shipping Method Available')</p>
                @endif
                
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="mybtn1" data-bs-dismiss="modal">@lang('Close')</button>
            </div>
        </div>
    </div>
</div>
