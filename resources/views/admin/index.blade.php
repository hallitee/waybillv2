@extends('layouts.app')
@section('navbar')
@include('nav')
@endsection
@section('title')
Email Configuration
@endsection
@section('content')
@php
$company=Auth::user()->company;
$location = Auth::user()->location;
$priv = Auth::user()->priv;
$urLoc = $company." ".$location;
$locarr = [$urLoc => $urLoc];
$arr_option2 = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI','ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA', 'GSNL AGBARA' => 'GSNL AGBARA', 'EUROMEGA IKEJA' => 'EUROMEGA IKEJA','ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW', 'ESRNL APAPA'=>'ESRNL APAPA', 'NPRNL APAPA'=>'NPRNL APAPA', 'PFNL APAPA' => 'PFNL APAPA', 'GSNL APAPA'=> 'GSNL APAPA', 'VENDOR'=>'VENDOR');
$arr_option1 = array_diff(['ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI','ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA', 'GSNL AGBARA' => 'GSNL AGBARA', 'EUROMEGA IKEJA' => 'EUROMEGA IKEJA','ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW', 'ESRNL APAPA'=>'ESRNL APAPA', 'NPRNL APAPA'=>'NPRNL APAPA', 'PFNL APAPA' => 'PFNL APAPA', 'GSNL APAPA'=> 'GSNL APAPA', 'VENDOR'=>'VENDOR'], $locarr);
$array_option 
@endphp

                <div class="row">
                <div class="col-lg-12">
				
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          Recipient					
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
	
								              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th class="col-xs-1">location</th>
                        <th class="col-xs-1">Company</th>
                        <th class="col-xs-3">Copy (CC)</th>
						<th class="col-xs-3">BCopy (BCC)</th>
						<th class="col-xs-1">Remove</th>
                    </tr> 
                  </thead>
                  <tbody>
				  @foreach($emails as $d)
                          <tr id='delRow{{$d->id}}'>
                            <td>
							{{$d->location}}
                            </td>
                            <td>{{$d->company}}</td>
                            <td>{{$d->copi}}</td>
							<td>{{$d->bcopy}}</td>
							<td align="center">
							<button  class='btn btn-primary btn-sm removeBtn' value='{{$d->id}}'>
							<span class='glyphicon glyphicon-remove-sign'></span></button></td>
				
                          </tr>
						 @endforeach
                        </tbody>
                </table>
            </div>
              </div>

																
                                </div>
                                <!-- /.col-lg-6 (nested) -->

                            </div>
                            <!-- /.row (nested) -->
                        </div>

                        <!-- /.panel-body -->
					
                    <!-- /.panel -->
			
                </div>

			


   </div>
                <div class="row">
                <div class="col-lg-12">
				{!! Form::open(['url' => 'admin', 'method'=>'GET']) !!}			
                    <div class="panel panel-default">
                        <div class="panel-heading">
                         Add  Recipient					
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
	
								              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th class="col-xs-2">location</th>
                        <th class="col-xs-2">Company</th>
                        <th class="col-xs-2">Copy (CC)</th>
						<th class="col-xs-2">BCopy (BCC)</th>
                    </tr> 
                  </thead>
                  <tbody>
                          <tr>
                            <td align="center">
			{!! Form::select('location',['AGBARA'=>'AGBARA', 'IKOYI'=>'IKOYI'],null, array('class' => 'input-md emailinput form-control', 'id'=>'location', 'placeholder'=>'AGBARA/IKOYI')); !!}
                            </td>
                            <td >	
			{!! Form::select('company',array('ESRNL'=>'ESRNL', 'NPRNL'=>'NPRNL', 'PFNL'=>'PFNL','IKOYI'=>'IKOYI', 'IT'=>'IT'),null, array('class' => 'input-md emailinput form-control', 'id'=>'company', 'placeholder'=>'e.g Ikoyi office')); !!}							
						</td>
                            <td><input class="email form-control" id="copy" type="email" required></td>
							<td><input class="email form-control" id="bcopy" type="email"></td>
                          </tr>
						  					
                        </tbody>
                </table>
						
					{!! Form::submit('Save Email', array('class' => 'btn btn-default', 'style'=> 'margin-top:50px', 'id'=>'saveRecipient')) !!}
            </div>
              </div>

											
                                </div>
                                <!-- /.col-lg-6 (nested) -->

                            </div>
                            <!-- /.row (nested) -->
                        </div>

                        <!-- /.panel-body -->
					
                    <!-- /.panel -->
							
                </div>

	
	{!! Form::close() !!}

   </div>
   	@endsection