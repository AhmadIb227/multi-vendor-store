@extends('layouts.front')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/front/css/datatables.css')}}">
    <style>
        /* تخصيص شريط التمرير ليكون لونه فضي */
        .mr-table {
            overflow-x: auto;
        }

        .mr-table::-webkit-scrollbar {
            height: 10px;
        }

       .mr-table::-webkit-scrollbar-thumb {
            background-color: #C0C0C0; /* لون فضي */
            border-radius: 10px;
            border: 2px solid #f1f1f1;
        }

        .mr-table::-webkit-scrollbar-track {
            background-color: #f1f1f1;
        }
        .mr-table {
            scrollbar-color: #C0C0C0 #f1f1f1;
            scrollbar-width: thin;
        }
        
    .full-row{
            padding-top: 10px;
                padding-bottom: 70px;
        }

    </style>
@endsection
@section('content')
@include('partials.global.common-header')
<!-- breadcrumb -->
<div class="full-row bg-light overlay-dark p-3" style="background-image: url({{ $gs->breadcrumb_banner ? asset('assets/images/'.$gs->breadcrumb_banner):asset('assets/images/noimage.png') }}); background-position: center center; background-size: cover;">
   <div class="container">
      <div class="row text-center text-white">
         <div class="col-12">
            <h3 class="mb-2 text-white">{{ __('Tickets') }}</h3>
         </div>
         <div class="col-12">
            <nav aria-label="breadcrumb">
               <ol class="breadcrumb mb-0 d-inline-flex bg-transparent p-0" style="direction: ltr !important;">
                  <li class="breadcrumb-item"><a href="{{ route('user-dashboard') }}">{{ __('Dashboard') }}</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ __('Tickets') }}</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<!-- breadcrumb -->
<!--==================== Blog Section Start ====================-->
<div class="full-row">
   <div class="container">
        <div class="mb-4 d-xl-none">
            <button class="dashboard-sidebar-btn btn bg-primary rounded">
                <i class="fas fa-bars"></i>
            </button>
        </div>
      <div class="row">
         <div class="col-xl-4">
            @include('partials.user.dashboard-sidebar')
         </div>
         <div class="col-xl-8">
            <div class="row">
               <div class="col-lg-12">
                  <div class="widget border-0 p-40 widget_categories bg-light account-info">
                     <!--<h4 class="widget-title down-line mb-30">{{ __('Tickets') }}-->
                     <!--   <a data-bs-toggle="modal" data-bs-target="#vendorform" class="mybtn1" href="javascript:;"> <i class="fas fa-envelope"></i> {{ __('Add Ticket') }}</a>-->
                     <!--</h4>-->
                     <button type="button" class="btn " style="background-color:#1e19ff ; color:#FFFFFF "  data-bs-toggle="modal" data-bs-target="#ticketModal">
                            {{ __('Add Ticket') }}
                        </button>
                     <div class="mr-table allproduct message-area mt-4">
                        @include('alerts.form-success')
                        <div>
                           <table id="example" style="background-color:#472C7A" class="table" cellspacing="0" width="100%">
                              <thead>
                                 <tr style="color:#FFFFFF">
                                    <th>{{ __('Subject') }}</th>
                                    <th>{{ __('Message') }}</th>
                                    <th>{{ __('Time') }}</th>
                                    <th>{{ __('Actions') }}</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 @foreach($convs as $conv)
                                 <tr class="conv">
                                    <input type="hidden" value="{{$conv->id}}">
                                    <td data-label="{{ __('Subject') }}">{{$conv->subject}}</td>
                                    <td data-label="{{ __('Message') }}">{{$conv->message}}</td>
                                    <td data-label="{{ __('Time') }}">{{$conv->created_at->diffForHumans()}}</td>
                                    <td data-label="{{ __('Actions') }}">
                                       <a href="{{route('user-message-show',$conv->id)}}" class="link view mybtn1"><i class="fa fa-eye"></i></a>
                                       <a href="javascript:;" data-bs-toggle="modal" data-bs-target="#confirm-delete" data-href="{{route('user-message-delete1',$conv->id)}}" class="link remove mybtn1"><i class="fa fa-trash"></i></a>
                                    </td>
                                 </tr>
                                 @endforeach
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!--==================== Blog Section End ====================-->
{{-- MESSAGE MODAL --}}
<div class="message-modal">
   <div class="modal" id="vendorform" tabindex="-1" role="dialog" aria-labelledby="vendorformLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="vendorformLabel">{{ __('Add Ticket') }}</h5>
               <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="container-fluid p-0">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="contact-form">
                           <form id="emailreply1">
                              {{csrf_field()}}
                              <ul>
                                 <li>
                                    <input type="text" class="input-field form-control border" id="subj1" name="subject" placeholder="{{ __('Subject *') }}" required="">
                                 </li>
                                 <li class="mb-5">
                                    <textarea class="input-field textarea form-control border" name="message" id="msg1" placeholder="{{ __('Your Message *') }}" required=""></textarea>
                                 </li>
                                 <input type="hidden" name="type" value="Ticket" class="form-control border">
                              </ul>
                              <button class="submit-btn" id="emlsub1" type="submit">{{ __('Send') }}</button>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
{{-- MESSAGE MODAL ENDS --}}
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header d-block text-center">
            <h4 class="modal-title d-inline-block">{{ __('Confirm Delete ?') }}</h4>
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <p class="text-center">{{ __('You are about to delete this Ticket.') }}</p>
            <p class="text-center">{{ __('Do you want to proceed?') }}</p>
         </div>
         <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-default" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
            <a class="btn btn-danger btn-ok">{{ __('Delete') }}</a>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="ticketModal" tabindex="-1" aria-labelledby="ticketModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ticketModalLabel">{{ __('Submit a new ticket') }}</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="{{ route('submitTicketd') }}" method="POST">
        @csrf
        <div class="modal-body">
          <!-- موضوع التذكرة -->
          <div class="form-group">
            <label for="subject"> {{ __('Ticket subject') }}</label>
            <input type="text" class="form-control" id="subject" name="subject" required>
          </div>
          <!-- الرسالة -->
          <div class="form-group">
            <label for="message">{{ __('message') }}</label>
            <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{{ __('close') }}</button>
          <button type="submit" class="btn btn-primary">{{ __('send') }}</button>
        </div>
      </form>
    </div>
  </div>
</div>


@includeIf('partials.global.common-footer')
@endsection
@section('script')
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src = "{{ asset('assets/front/js/dataTables.min.js') }}" defer ></script>
<script src = "{{ asset('assets/front/js/user.js') }}" defer ></script>

<script type="text/javascript">
   (function($) {
   "use strict";

         $(document).on("submit", "#emailreply1" , function(){
         var token = $(this).find('input[name=_token]').val();
         var subject = $(this).find('input[name=subject]').val();
         var message =  $(this).find('textarea[name=message]').val();
         var $type  = $(this).find('input[name=type]').val();
         $('#subj1').prop('disabled', true);
         $('#msg1').prop('disabled', true);
         $('#emlsub1').prop('disabled', true);
    $.ajax({
           type: 'post',
           url: "{{URL::to('/user/admin/user/send/message')}}",
           data: {
               '_token': token,
               'subject'   : subject,
               'message'  : message,
               'type'   : $type
                 },
           success: function( data) {
         $('#subj1').prop('disabled', false);
         $('#msg1').prop('disabled', false);
         $('#subj1').val('');
         $('#msg1').val('');
       $('#emlsub1').prop('disabled', false);
       if(data == 0)
         toastr.error("Oops Something Went Wrong !");
       else
         toastr.success("Message Sent");
       $('.close').click();
           }

       });
         return false;
       });

   })(jQuery);

</script>
<script type="text/javascript">
   (function($) {
   		"use strict";

         $('#confirm-delete').on('show.bs.modal', function(e) {
             $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
         });

   })(jQuery);

</script>
@endsection
