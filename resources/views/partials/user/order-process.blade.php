@if($order->status == 'pending')

    <ul class="process-steps">
        <li class="active">
            <div class="icon">1</div>
            <div class="title">{{ __('Order Placed') }}</div>
        </li>
        <li>
            <div class="icon">2</div>
            <div class="title">{{ __('On Review') }}</div>
        </li>
        <li>
            <div class="icon">3</div>
            <div class="title">{{ __('On Delivery') }}</div>
        </li>
        <li>
            <div class="icon">4</div>
            <div class="title">{{ __('Delivered') }}</div>
        </li>
    </ul>

@elseif($order->status == 'processing')

    <ul class="process-steps">
        <li class="active">
            <div class="icon">1</div>
            <div class="title">{{__('Order Placed')}}</div>
        </li>
        <li class="active">
            <div class="icon">2</div>
            <div class="title">{{__('On Review')}}</div>
        </li>
        <li>
            <div class="icon">3</div>
            <div class="title">{{__('On Delivery')}}</div>
        </li>
        <li>
            <div class="icon">4</div>
            <div class="title">{{__('Delivered')}}</div>
        </li>
    </ul>

@elseif($order->status == 'on delivery')

    <ul class="process-steps">
        <li class="active">
            <div class="icon">1</div>
            <div class="title">{{__('Order Placed')}}</div>
        </li>
        <li class="active">
            <div class="icon">2</div>
            <div class="title">{{__('On Review')}}</div>
        </li>
        <li class="active">
            <div class="icon">3</div>
            <div class="title">{{__('On Delivery')}}</div>
        </li>
        <li>
            <div class="icon">4</div>
            <div class="title">{{__('Delivered')}}</div>
        </li>
    </ul>

@elseif($order->status == 'completed')

    <ul class="process-steps">
        <li class="active">
            <div class="icon">1</div>
            <div class="title">{{__('Order Placed')}}</div>
        </li>
        <li class="active">
            <div class="icon">2</div>
            <div class="title">{{__('On Review')}}</div>
        </li>
        <li class="active">
            <div class="icon">3</div>
            <div class="title">{{__('On Delivery')}}</div>
        </li>
        <li class="active">
            <div class="icon">4</div>
            <div class="title">{{__('Delivered')}}</div>
        </li>
    </ul>

@endif

<style>
    .process-steps {
        display: flex;
        justify-content: space-between;
        padding: 0;
        list-style-type: none;
        margin: 0;
    }

    .process-steps li {
        display: flex;
        flex-direction: column;
        align-items: center;
        flex: 1;
        text-align: center;
        padding: 10px;
    }

    .process-steps li .icon {
        width: 35px;
        height: 35px;
        border-radius: 50%;
        background-color: #007bff;
        color: white;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 5px;
        font-size: 14px;
    }

    .process-steps li.active .icon {
        background-color: #28a745;
    }

    .process-steps li .title {
        font-size: 12px;
        font-weight: bold;
        white-space: nowrap;
    }

    @media (max-width: 500px) {
        .process-steps li {
            padding: 5px;
        }

        .process-steps li .icon {
            width: 30px;
            height: 30px;
            font-size: 12px;
        }

        .process-steps li .title {
            font-size: 10px;
        }
    }
.process-steps li:after{
    display: none;}
    @media (max-width: 400px) {
    
        .process-steps {
            flex-direction: row;
            flex-wrap: wrap;
        }

      
    }
</style>
