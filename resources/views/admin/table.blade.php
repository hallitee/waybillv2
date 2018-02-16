                <div class="col-lg-12" id="tbl_list">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Waybill List
                        </div>
							<div class="panel-body">
								<div class="row">
								<div class="table-responsive">
							
					<table class="table table-bordered table-hover" id="tab_logic">
						<thead id="thead1">
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
						Quantity
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
							Status
						</th>						
					</tr>
				</thead>				
				<tbody id='tbody'>
				@if(count($doc)>0)
					@foreach($doc as $d)
					<tr id='addr0'>
					<td class='text-center'>{{ $d->id }}</td>
					<td class='text-center'>{{explode(' ',$d->sentDate)[0]}}</td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>					
					<td></td>
					<td class='text-center'>"+data[i].receiveStatus+"</td>							
					</tr>
					@endforeach
				@endif
                  
				</tbody>
				
			</table>								
									</div>
			{{ $doc->links() }}
								</div>								
							</div>
							
						</div>