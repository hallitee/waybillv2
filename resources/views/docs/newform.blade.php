{!! Form::open(['action' => 'docs@store', 'class'=>'form']) !!}
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
											<label for="id_select"  class="control-label col-lg-4  requiredField">Sent Date<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5"  style="margin-bottom: 10px">
												{!! Form::date('sentDate', \Carbon\Carbon::now(),  array('class' => 'input-md emailinput form-control')); !!}
											</div>
											
										</div> 
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Origin <span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5 "  style="margin-bottom: 10px">
												{!! Form::select('sentFrom',$arr_option,null, array('class' => 'input-md emailinput form-control', 'id'=>'sentFsel', 'placeholder'=>'e.g Ikoyi office')); !!}
											</div>
										</div>				
								        <div id="vendiv" class="form-group required" hidden>
											<label for="id_select"  class="control-label col-lg-4  requiredField">Vendor name<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8"  style="margin-bottom: 10px">
												{!! Form::text('sentFro',"",  array('class' => 'input-md emailinput form-control', 'placeholder'=>'e.g Aminu Kano Investment Nigeria Limited')); !!}
											</div>
											
										</div> 										
								        <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Sender<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8"  style="margin-bottom: 10px">
												{!! Form::text('sentBy',"",  array('class' => 'input-md emailinput form-control', 'id'=>'sentBy', 'placeholder'=>'e.g Danny Olabisi')); !!}
												<input type="hidden" id="username" value="{{Auth::user()->name}}"></input>
												<input type="hidden" id="userid" value="{{Auth::user()->id}}"></input>
											</div>
											
										</div> 
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Receiver <span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8 "  id='delivdTo' style="margin-bottom: 10px">
												{!! Form::text('deliveredTo','', array('class' => 'input-md emailinput form-control','id'=>'delivTo','style'=>'display:none', 'placeholder'=>'e.g Samuel Besiktas')); !!}											
												{!! Form::select('deliveredTo',[],null, array('class' => 'input-md emailinput form-control', 'id'=>'deliveredTo','placeholder'=>'e.g Samuel Besiktas')); !!}
											</div>
										</div>	
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-2 requiredField">Proxy To
											 </label>
											<span class="col-lg-2">{!! Form::checkbox('proxyBox','proxy',false); !!}</span>
											<div class="controls col-lg-8 "  id='delivdTo' style="margin-bottom: 10px">
											{!! Form::text('proxyName','', array('class' => 'input-md emailinput form-control','id'=>'proxyName', 'style'=>'display:none', 'placeholder'=>'e.g Messi Nemedo')); !!}	
											</div>
										</div>										
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Waybill Type<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5 "  style="margin-bottom: 10px">
												{!! Form::select('wType',$waybill_type,null, array('class' => 'input-md emailinput form-control', 'id'=>'wTypeSel','placeholder'=>'e.g Transfer/Loan/Repair')); !!}
				
											</div>	
										</div>
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Destination<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5 "  style="margin-bottom: 10px">
												{!! Form::select('sentTo',$arr_option1,null, array('class' => 'input-md emailinput form-control', 'id'=>'sentTosel','placeholder'=>'e.g esrnl Agbara')); !!}
				
											</div>	
										</div>
								        <div id="vendiv1" class="form-group required" hidden>
											<label for="id_select"  class="control-label col-lg-4  requiredField">Vendor name<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8"  style="margin-bottom: 10px">
												{!! Form::text('sento',"",  array('class' => 'input-md emailinput form-control', 'placeholder'=>'e.g Aminu Kano Investment Nigeria Limited')); !!}
											</div>
											
										</div> 	
								        <div id="expRetDate" class="form-group required" hidden>
											<label for="id_select"  class="control-label col-lg-4  requiredField">Expected Return Date<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-6"  style="margin-bottom: 10px">
											{!! Form::date('deliveryDate', \Carbon\Carbon::now(),  array('class' => 'input-md emailinput form-control')); !!}
											</div>
											
										</div> 										
										<div id="div_id_select" class="form-group required">
											<div class="controls col-lg-12"  style="margin-bottom: 45px">
												
											</div>					
										</div>
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Delivered By<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8 "  style="margin-bottom: 10px">
											{!! Form::text('deliveredBy','', array('class' => 'input-md emailinput form-control', 'placeholder'=>'e.g Driver charles nguruta')); !!}
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
					<div class="row">
								<div class="col-lg-12" style="margin-top:20px">
								<table class="table table-bordered table-hover" id="tab_logic">
				<thead>
					<tr>
						<th class="col-xs-1 text-center">
							#
						</th>
						<th class="col-xs-2 text-center">
							Item
						</th>
						<th class="col-xs-1 text-center">
							Quantity
						</th>
						<th class="col-xs-2 text-center">
							Serial Number
						</th>
						<th class="col-xs-2 text-center">
							Status
						</th>
						<th class="col-xs-2 text-center">
							Remark
						</th>	
						<th class="col-xs-1 text-center">
							SIR Code
						</th>
						<th class="col-xs-1 text-center">
							LPO
						</th>						
					</tr>
				</thead>
				<tbody id='tbody'>
					<tr id='addr0'>
						<td class="text-center">
						1
						</td>
						<td>
						<input type="text" name='items[0][desc]'  placeholder='Item description' class="form-control"/>
						</td>
						<td>
						<input  type='number' onkeypress='return (event.charCode == 8 || event.charCode == 0) ? null : event.charCode >= 48 && event.charCode <= 57' type='number' min='0' max='1000' name='items[0][qty]' placeholder='Quantity' class="form-control"/>
						</td>
						<td>
						<input type="text" name='items[0][serial]' placeholder='Serial Number' class="form-control"/>
						</td>
						<td>
						<input type="text" name='items[0][status]' placeholder='Item Status' class="form-control"/>
						</td>
						<td>
						<input type="text" name='items[0][remark]' placeholder='Remarks' class="form-control"/>
						</td>
						<td>
						<input type="text" name='items[0][sircode]' placeholder='SIR code' class="form-control"/>
						</td>
						<td>
						<input type="text" name='items[0][lpo]' placeholder='LPO Number' class="form-control"/>
						</td>						
					</tr>
                    <tr id='addr1'></tr>
				</tbody>
			</table>
			<a id="add_row" class="btn btn-default pull-left">Add Row</a><a id='delete_row' class="pull-right btn btn-default">Delete Row</a>
                    </div>
						</div>
						{!! Form::hidden('row_value', '', array('id' => 'row_value')) !!}
					{!! Form::submit('Create Waybill', array('class' => 'btn btn-default', 'style'=> 'margin-top:50px')) !!}
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
			
	{!! Form::close() !!}