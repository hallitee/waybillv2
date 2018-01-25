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
Waybill Report - {{ ucfirst($type) }}
@endsection
@section('content')
@php
$arr_option = array(''=>'','ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI','ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA', 'GSNL AGBARA' => 'GSNL AGBARA', 'EUROMEGA IKEJA' => 'EUROMEGA IKEJA','ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW', 'VENDOR'=>'VENDOR');
@endphp
@php
$waybill_type = array('TRANSFER' => 'TRANSFER', 'REPAIR' => 'REPAIR', 'LOAN' => 'LOAN') 
@endphp

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
						<thead>
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
				@foreach($doc as $d)
					<tr id='addr0'>
						<td>
					W{{ucfirst($d->wType[0])}}{{str_pad($d->id, 5, "0", STR_PAD_LEFT)}}
						</td>
						<td>
						{{ substr($d->sentDate, 0, 10) }}
						</td>
						<td>
						{{ $d->sentBy }}
						</td>						
						<td>
						{{ $d->deliveredTo }}
						</td>
						<td>
						{{ $d->sentTo}}
						</td>
						<td>
						{{ $d->deliveredBy}}
						</td>
						<td>
						<button class='btn btn-primary btn-xs btn_itemshow' value='{{$d->id}}'><span class='glyphicon glyphicon-pencil'></span></button>
						</td>		
						<td>
						{{ $d->receiveStatus}}
						</td>							
					</tr>
					@endforeach
				</tbody>
			</table>								
									</div>
								</div>								
							</div>
							
							{{ $doc->appends(['type'=>request()->type, 'status'=>request()->status])->links() }}
							
						</div>
					</div>
				</div>
				</div>	
	<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog modal-lg">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Reports {{""}}  Item</h4>
      </div>
			<div class="modal-body">
				<div class="table-responsive">
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
						<th class="col-xs-2 text-center">
						Serial No
						</th>
						<th class="col-xs-1 text-center">
							Quantity
						</th>
						<th class="col-xs-1 text-center">
							Received
						</th>	
						<th class="col-xs-1 text-center">
							Received Pending
						</th>						
						<th class="col-xs-1 text-center">
							Status
						</th>
						<th class="col-xs-1 text-center">
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
					</tr>
                
				</tbody>
			</table>		
			</div>
			</div>
			<div id="disp_rec2" class="col-md-12" hidden>
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
		  <th> </th>
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