@extends('layouts.app')
@section('navbar')
@include('nav')
@endsection
@section('title')
Report 
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
                <div class="panel-heading">Generate Waybill Report</div>
                     <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
							         <div class="col-lg-4">
							         <div class="panel-body">
								 <label for="id_select"  class="control-label col-lg-6  requiredField"> Origin <span class="asteriskField"></span> </label>

								            <div class="input-group custom-search-form col-lg-6">
                                           {!! Form::select('origin',$arr_option2,null, array('class' => 'form-control', 'id'=>'origin', 'placeholder'=>'e.g ESRNL AGBARA')); !!}
                                         
                                     </div>
							         </div>
						        </div>
							         <div class="col-lg-4">
							         <div class="panel-body">
								            <label for="id_select"  class="control-label col-lg-6  requiredField">Destination <span class="asteriskField"></span> </label>

								            <div class="input-group custom-search-form col-lg-6">
                                            {!! Form::select('destination',$arr_option2,null, array('class' => 'form-control', 'id'=>'destination', 'placeholder'=>'e.g ESRNL IKOYI')); !!}
                                     </div>
							         </div>
						        </div>	
							    <div class="col-lg-4">
							         <div class="panel-body">
								            <label for="id_select"  class="control-label col-lg-6  requiredField">Sender<span class="asteriskField"></span> </label>
											
								            <div class="input-group custom-search-form col-lg-6">
                                            <input type="text" id="sender" class="form-control" placeholder="Ronaldo">
                                     </div>
							         </div>
						        </div>								
					        </div>	
                            <div class="row">
                            <div class="col-lg-12">
                                     <div class="col-lg-4">
                                     <div class="panel-body">
                                            <label for="id_select"  class="control-label col-lg-6  requiredField">Date From<span class="asteriskField">*</span> </label>

                                            <div class="input-group custom-search-form col-lg-6">
											<input type="date" id="frmDate" class="form-control">
                                     </div>
                                     </div>
                                </div>                                
								<div class="col-lg-4">
                                     <div class="panel-body">
                                            <label for="id_select"  class="control-label col-lg-6  requiredField">Date To<span class="asteriskField">*</span> </label>

                                            <div class="input-group custom-search-form col-lg-6">
											<input type="date" id="toDate" class="form-control">
                                     </div>
                                     </div>
                                </div> 
							    <div class="col-lg-4">
							         <div class="panel-body">
								            <label for="id_select"  class="control-label col-lg-6  requiredField">Receiver <span class="asteriskField"></span> </label>
											
								            <div class="input-group custom-search-form col-lg-6">
                                            <input type="text" id="receiver" class="form-control" placeholder="Ronaldo">
                                     </div>
							         </div>
						        </div>	
                            </div>	
                        
                                                      

                       						
                     </div>
					 <div class="row">
					  <div class="col-lg-12">
					 <div class="col-lg-3">
					 <button name="rSearch"  class="btn btn-default" id="rSearch" type="submit">
					 SEARCH 
					 </button>
					 </div>
					 </div>
					 </div>
                                <!-- /.col-lg-6 (nested) -->
                </div>
                            <!-- /.row (nested) -->
            </div>

                        <!-- /.panel-body -->
					
                    <!-- /.panel -->
	   </div>                 <div   class="row">
                <div class="col-lg-12" id="tbl_list">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Waybill List
                        </div>
							<div class="panel-body">
								<div class="row">
								<div class="table-responsive">
							
					<table class="table table-bordered table-hover" id="tab_logic" hidden>
						<thead id="thead1">
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
	   
	   
    </div>   
   	@endsection