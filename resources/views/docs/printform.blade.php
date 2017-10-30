@php
$disable  = 'readonly';
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
								        <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Sent Date<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5"  style="margin-bottom: 10px">
											<input type="date" name="sentDate" class="input-md emailinput form-control" value="{{$doc->sentDate}}" readonly>
											</div>
											
										</div> 
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Sent From <span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5 "  style="margin-bottom: 10px">
											<input type="text" name="sentDate" class="input-md emailinput form-control" value="{{$doc->sentFrom}}" readonly>		
											</div>
										</div>								      
								        <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Sent By<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8"  style="margin-bottom: 10px">

											
											
											</div>

										</div> 
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Delivered To <span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8 "  style="margin-bottom: 10px">

											
											
											
											</div>
										</div>										
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Waybill Type<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5 "  style="margin-bottom: 10px">

											
											
											
				
											</div>	
										</div>
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Sent To<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-5 "  style="margin-bottom: 10px">

											
				
											</div>	
										</div>
										<div id="div_id_select" class="form-group required">
											<div class="controls col-lg-12"  style="margin-bottom: 45px">
												
											</div>					
										</div>
									    <div id="div_id_select" class="form-group required">
											<label for="id_select"  class="control-label col-lg-4  requiredField">Delivered By<span class="asteriskField">*</span> </label>
											<div class="controls col-lg-8 "  style="margin-bottom: 10px">

											
											
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
					<tr >
						<th class="text-center">
							#
						</th>
						<th class="text-center">
							Item
						</th>
						<th class="text-center">
						Quantity
						</th>
						<th class="text-center">
							Serial Number
						</th>
						<th class="text-center">
							Status
						</th>
						<th class="text-center">
							Remark
						</th>						
					</tr>
				</thead>
				<tbody id='tbody'>
					<tr id='addr0'>
						<td>
						1
						</td>
						<td>
						<input type="text" name='items[0][desc]'  placeholder='Item description' class="form-control"/>
						</td>
						<td>
						<input type="text" name='items[0][qty]' placeholder='Quantity' class="form-control"/>
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
					</tr>
                    <tr id='addr1'></tr>
				</tbody>
			</table>
			<a id="add_row" class="btn btn-default pull-left">Add Row</a><a id='delete_row' class="pull-right btn btn-default">Delete Row</a>
                    </div>
						</div>
						{!! Form::hidden('row_value', '', array('id' => 'row_value')) !!}
					{!! Form::submit('Print Waybill', array('class' => 'btn btn-default', 'id'=>'printbtn','style'=> 'margin-top:50px')) !!}
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
			
