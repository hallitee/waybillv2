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
							Quantity Sent
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
							

<div id="classModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="classInfo" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
          ×
        </button>
        <h4 class="modal-title" id="classModalLabel">
              Class Info
            </h4>
      </div>
      <div class="modal-body">
        <table id="classTable" class="table table-bordered">
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
							Received
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
          </thead>
          <tbody id='tbodys'>
            <tr id='trows0'>
						
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">
          Close
        </button>
      </div>
    </div>
  </div>
</div>

@endsection