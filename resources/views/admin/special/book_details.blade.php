@extends('admin.app')
@section('title', ' |حجز البرامج')
@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption font-dark">
                    <i class="icon-settings font-dark"></i>
                    <span class="caption-subject bold uppercase">تفاصيل حجز برنامج</span>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover dt-responsive" width="100%" id="sample_1">
                    <col width="15%" />
                    <col width="85%" />
                    <tr>
                        <th class="all">العرض</th>
                        <td><img src="{{ asset($details->offer->image) }}" style="width: 200px;height: 200px;" /></td>
                    </tr>
                    <tr>
                        <th class="all">الإسم</th>
                        <td>{{ $details->name }}</td>
                    </tr>
                    <tr>
                        <th class="all">البريد الإلكترونى</th>
                        <td>{{ $details->email }}</td>
                    </tr>
                    <tr>
                        <th class="all">رقم التليفون</th>
                        <td>{{ $details->phone }}</td>
                    </tr>

                    <tr>
                        <th class="all">ملاحظات</th>
                        <td>{{ $details->message }}</td>
                    </tr>
                    <tr>
                        <th class="all">تاريخ الأرسال</th>
                        <td>{{ $details->created_at }}</td>
                    </tr>



                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>

</div>
@stop
