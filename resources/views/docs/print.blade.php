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
Print Waybill
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
							<label for="id_select"  class="control-label col-lg-6  requiredField">Waybill Number<span class="asteriskField">*</span> </label>

							<div class="input-group custom-search-form">
                                <input type="number" id="search_input" class="form-control" placeholder="Search..." required>
                                <span class="input-group-btn">
                                <button id="searchp_btn" class="btn btn-default" type="button">
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
							
					<table class="table table-bordered table-hover" id="tab_logic2">
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
							Origin
						</th>
						<th class="text-center">
							Delivered By
						</th>
						<th class="text-center">
							Print
						</th>								
					</tr>
				</thead>
				<tbody id='tbody2'>
				
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
				
@endsection