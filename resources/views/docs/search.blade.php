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
Search Item / Waybill
@endsection
@section('content')
@php
$arr_option = array('IKOYI' => 'IKOYI', 'ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA',
 'EUROMEGA IKEJA' => 'EUROMEGA', 'PARKVIEW IKOYI' => 'PARKVIEW', 'APAPA' => 'APAPA')
@endphp
@php
$waybill_type = array('TRANSFER' => 'TRANSFER', 'REPAIR' => 'REPAIR', 'LOAN' => 'LOAN') 
@endphp
 <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Enter Waybill Information
                        </div>
                        <div class="panel-body">
                            <div class="row">
						  <div class="col-lg-6">
							<label for="id_select"  class="control-label col-lg-4  requiredField">Waybill/item <span class="asteriskField">*</span> </label>

							<div class="input-group custom-search-form col-lg-8">
                                <input type="text" id="search_input" class="form-control" placeholder="Item description/waybill number" required>
                                <span class="input-group-btn">
                                <button id="searchi_btn" class="btn btn-default" type="button">
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
                           Search result 
                        </div>
							<div class="panel-body">
								<div class="row">
								<div class="table-responsive">
							
					<table class="table table-bordered table-hover" id="tab_logic2" hidden>
						<thead id='thead1' hidden>
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
							Origin
						</th>
						<th class="text-center">
							Destination
						</th>
						<th class="text-center">
							Items
						</th>							
					</tr>
				</thead>
						<thead id='thead2' hidden>
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
							Origin
						</th>
						<th class="text-center">
							Destination
						</th>
						<th class="text-center">
							Items
						</th>							
					</tr>
				</thead>				
				<tbody id='tbody2'>
				
                    <tr id='addr0'></tr>
				</tbody>
			</table>								
									</div>
								</div>								
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
						<input type="text" name='item[0][recqty]' placeholder='Received' class="form-control"/>
						</td>
						
						<td>
						<input type="text" name='item[0][status]' placeholder='Item Status' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][remark]' placeholder='Remarks' class="form-control"/>
						</td>	
						<td>
						<input type="text" name='item[0][sir]' placeholder='SIR Code' class="form-control"/>
						</td>
						<td>
						<input type="text" name='item[0][lpo]' placeholder='LPO code' class="form-control"/>
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