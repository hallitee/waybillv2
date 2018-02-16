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
$arr_type = array('TRANSFER'=>'TRANSFER', 'LOAN'=>'LOAN', 'REPAIR'=>'REPAIR');
$arr_status = array('OPEN'=>'OPEN', 'RECEIVED'=>'RECEIVED', 'RETURNED'=>'RETURNED', 'CLOSED'=>'CLOSED');
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
                                           {!! Form::select('origin',$arr_option2,null, array('class' => 'form-control', 'id'=>'origin', 'placeholder'=>'ALL')); !!}
                                         
                                     </div>
							         </div>
						        </div>
							         <div class="col-lg-4">
							         <div class="panel-body">
								            <label for="id_select"  class="control-label col-lg-6  requiredField">Destination <span class="asteriskField"></span> </label>

								            <div class="input-group custom-search-form col-lg-6">
                                            {!! Form::select('destination',$arr_option2,null, array('class' => 'form-control', 'id'=>'destination', 'placeholder'=>'ALL')); !!}
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
							         <div class="col-lg-4">
							         <div class="panel-body">
								 <label for="id_select"  class="control-label col-lg-6  requiredField"> Waybill Type <span class="asteriskField"></span> </label>

								            <div class="input-group custom-search-form col-lg-6">
                                           {!! Form::select('wType',$arr_type,null, array('class' => 'form-control', 'id'=>'wType', 'placeholder'=>'ALL')); !!}
                                         
                                     </div>
							         </div>
						        </div>
							         <div class="col-lg-4">
							         <div class="panel-body">
								            <label for="id_select"  class="control-label col-lg-6  requiredField">Waybill Status<span class="asteriskField"></span> </label>

								            <div class="input-group custom-search-form col-lg-6">
                                            {!! Form::select('status',$arr_status,null, array('class' => 'form-control', 'id'=>'status', 'placeholder'=>'ALL')); !!}
                                     </div>
							         </div>
						        </div>						  
					 <div class="col-lg-4">
					    <div class="panel-body">
					 <button name="rSearch"  class="btn btn-default text-center" id="rSearch" type="submit">
					 <b>SEARCH </b>
					 </button>
					 </div>
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

	   <div   class="row">
				<section class="tableSection">
				
				
				</section>
					</div>
				</div>
				
				</div>	
	   
	   
    </div>   
	
	<div class="modal" id="edit" tabindex="1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog modal-lg">
			<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
				<h4 class="modal-title custom_align" id="Heading">  Item List</h4>
			</div>
			<div class="modal-body">
				<table class="table table-bordered table-hover">
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
			<div id='recRemarks' style="display:none">
			<textarea id="recRemText" placeholder="Enter remarks before closing waybill" class="center-block" cols="40" rows="3" style="width:300px;height:100px;border:5px solid orange;border-radius:2px"></textarea>			
			</div>
		<div class="modal-footer col-md">
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
		</div>
			
			</div>


        </div>
    <!-- /.modal-content --> 
		</div>
      <!-- /.modal-dialog --> 
    </div>
   	@endsection