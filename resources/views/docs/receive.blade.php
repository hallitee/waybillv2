@extends('layouts.app')
@section('navbar')
@include('nav')
@endsection
@section('title')
<ul style="color:red;font-size:14px">
 @foreach($errors->all() as $error)
<li>{{ $error }}</li>
 @endforeach
</ul>
Receive Waybill - {{ ucfirst($form) }}
@endsection
@section('content')
@php
 $doc=[];
@endphp
@php
$waybill_type = array('TRANSFER' => 'TRANSFER', 'REPAIR' => 'REPAIR', 'LOAN' => 'LOAN', 'PROMO'=>'PROMO') 
@endphp
@if($form=='loan' || $form == 'repair' || $form == 'transfer'|| $form == 'promo')
                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Enter Waybill Information
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
											<div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-3  requiredField">Destination<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5"  style="margin-bottom: 10px">
											<input type="hidden" id="userid" value="{{Auth::user()->id}}"></input>
												{!! Form::select('sentTo',$arr_option,null, array('class' => 'input-md emailinput form-control', 'id'=>'loc_input', 'placeholder'=>'e.g esrnl Agbara')); !!}
				
											</div>	
											
										</div>
								</div>
								{!! Form::text('wType', $form, array('hidden','id' => 'row_value', 'id'=>'wType', 'value'=> '$form')) !!}
                                <div class="col-lg-4">
																			<label for="id_select"  class="control-label col-lg-3  requiredField">Waybill Number/Item <span class="asteriskField">*</span> </label>

							<div class="input-group custom-search-form">
                                <input type="text" id="search_input" class="form-control" placeholder="200 / Paper">
                                <span class="input-group-btn">
                                <button id="search_btn" class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
								</div>
                                <div class="col-lg-4">
							
								</div>								
							</div>
							
						</div>
					</div>
				</div>
				</div>


                <div   class="row">
                <div class="col-lg-12" id="tbl_list">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Waybill List
                        </div>
							<div class="panel-body">
								<div class="row">
								<div class="table-responsive">
							
					<table class="table table-bordered table-hover" id="tab_logic">
						<thead id="thead1" hidden>
						<tr >
						<th class="text-center">
							Waybill #
						</th>
						<th class="text-center">
							Sent Date
						</th>
						<th class="text-center">
						Sender
						</th>
						<th class="text-center">
						Receiver
						</th>						
						<th class="text-center">
							Origin
						</th>
						<th class="text-center">
							Destination
						</th>						
						<th class="text-center">
							Delivered By
						</th>
						<th class="text-center">
							Items
						</th>			
						<th class="text-center">
							Status
						</th>						
					</tr>
				</thead>
						<thead id="thead2" hidden>
						<tr >
						<th class="text-center">
							Waybill #
						</th>
						<th class="text-center">
							Sent Date
						</th>
						<th class="text-center">
						Item Description
						</th>						
						<th class="text-center">
						Sender
						</th>
						<th class="text-center">
						Receiver
						</th>						
						<th class="text-center">
							Origin
						</th>
						<th class="text-center">
							Destination
						</th>						
						<th class="text-center">
							Delivered By
						</th>
						<th class="text-center">
							Items
						</th>			
						<th class="text-center">
							Status
						</th>						
					</tr>
				</thead>				
				<tbody id='tbody'>
					<tr id='addr0'>
												
					</tr>
                    <tr id='addr1'></tr>
				</tbody>
			</table>								
									</div>
								</div>								
							</div>
							
						</div>
					</div>
				</div>
				</div>	
	@endif
	<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog modal-lg">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Receive {{$form}}  Item</h4>
      </div>
			<div class="modal-body">
				<div class="col-xs-12 table-responsive">
							<div id="rec_err" class="text-center" style="color:red;font-size:25px"></div>
							<div id="rec_suc" class="text-center" style="color:green;font-size:25px"></div>
					<table class="table table-bordered table-hover" id="tab_logic1">
						<thead>
						<tr >
						<th class="col-xs-1 text-center">
							Item #
						</th>
						<th class="col-xs-2 text-center">
							Description
						</th>
						<th class="col-xs-1 text-center">
						Serial No
						</th>
						<th class="col-xs-1 text-center">
							Quantity
						</th>
						<th class="col-xs-1 text-center" id="recheader">
							Receiving
							Quantity
						</th>	
						<th class="col-xs-1 text-center">
							Pending Receive
						</th>						
						<th class="col-xs-1 text-center">
							Status
						</th>
						<th class="col-xs-2 text-center">
							Remark
						</th>
						<th class="col-xs-1 text-center">
							SIR #
						</th>
						<th class="col-xs-1 text-center">
							LPO #
						</th>						
					</tr>
				</thead>
				<tbody id='tbody1'>
					<tr id='addrs0'>
						<td>
						1
						</td>
						<td>
						<input type="text" name='item[0][desc]'  placeholder='Item description' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][serial]' placeholder='Serial Number' class="form-control"/>
						</td>						
						<td>
						<input type="text" name='item[0][qty]' placeholder='Quantity' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][recqty]' placeholder='Receiving Quantity' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][recvnqty]' placeholder='Received Pending' class="form-control"/>
						</td>						
						<td>
						<input type="text" name='item[0][status]' placeholder='Item Status' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][remark]' placeholder='Remarks' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][sircode]' placeholder='Item Status' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][lpo]' placeholder='Remarks' class="form-control"/>
						</td>						
					</tr>
                
				</tbody>
			</table>		
			</div>
			<div id='recRemarks' style="display:none">
			<textarea id="recRemText" placeholder="Enter remarks before closing waybill" class="center-block" cols="40" rows="3" style="width:300px;height:100px;border:5px solid orange;border-radius:2px"></textarea>			
			</div>
			</div>
			<div id="disp_rec" class="col-md-12" hidden>
			<div class="col-md-3" style="border:1px solid">
			Received By:
			</div>
			<div id="rec_by" class="col-md-3" style="border:1px solid">
			
			</div>
			<div class="col-md-3" style="border:1px solid">
			Received Date:
			</div>
			<div id="rec_date" class="col-md-3" style="border:1px solid">
		
			</div>	
			<div id="rec_rem0" class="col-md-3" style="border:1px solid" hidden>
			Close remarks:
			</div>
			<div id="rec_rem" class="col-md-9" style="border:1px solid" hidden>
			
			</div>			
			</div>
          <div class="modal-footer col-md">
		  <table class="table table-hover">
		  <thead>
		<tr>
		<th id='printText'>Print</th>
		</tr>
		  <tr>
		  <td>
		  <div class="form-group">
		  {!! Form::select('printType',['','WAYBILL'=>'Return Waybill', 'No'=>'No'],null, array('class' => 'form-control input-xs', 'id'=>'printType')); !!}
		  </div>
		  </td>
		  <th> </th>	
			@if($form=='transfer')
		  <th><button id="rec_btn" type="button" class="btn btn-info btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Receive Partly</button> </th>
		  <th> </th>
		  <th> <button id="rec_btn1" type="button" class="btn btn-warning btn-lg" style="width: 80%;"><span class="glyphicon glyphicon-ok-sign"></span> Receive Completely</button></th>
		  @elseif($form=='loan')
		 <th> <button id="rec_btn1" type="button" class="btn btn-warning btn-lg center" style="width: 80%;"><span class="glyphicon glyphicon-ok-sign"></span>Receive Items</button></th>			
		 <th> <button id="rec_btn2" type="button" class="btn btn-danger btn-lg" style="width: 80%;display:none"><span class="glyphicon glyphicon-ok-sign center"></span>Return Items</button></th>	
		 <th id="recbtn3"> <button id="rec_btn3" type="button" class="btn btn-danger btn-lg" style="width: 80%;display:none">Print</button></th>	
		 <th> <button id="rec_btn4" type="button" class="btn btn-success btn-lg" style="width: 80%;display:none"><span class="glyphicon glyphicon-ok-sign"></span>Receive Returned</button></th>			 
		  @else
			<th> <button id="rec_btn1" type="button" class="btn btn-warning btn-lg" style="width: 80%;"><span class="glyphicon glyphicon-ok-sign"></span> Receive Items</button></th>			  
		  @endif
		  </tr>
		  
		  </thead>

		  </table>
 
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
@endsection