@extends('layouts.app')
@section('navbar')
@include('nav')
@endsection
@section('title')
User Update
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
                        <div class="panel-heading">
                          Search user				
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
		 <div class="col-lg-9">
			<div class="panel-body">
               <label for="id_select"  class="control-label col-lg-4  requiredField">Search user (email/name) <span class="asteriskField">*</span> </label>

							<div class="input-group custom-search-form col-lg-5">
                                <input type="text" id="search_input" class="form-control" placeholder="anini.emmanuel@citymail.com">
                                <span class="input-group-btn">
                                <button id="search_user" class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
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

			


   </div>
                <div class="row">
                <div class="col-lg-12">
	{!! Form::open(['action' => 'docs@store', 'class'=>'form']) !!}			
                    <div class="panel panel-default">
                        <div class="panel-heading">
                       User details					
                        </div>
                        <div class="panel-body">
										<div class="row">
								<div class="table-responsive">
							
					<table class="table table-bordered table-hover" id="userlogic" >
						<thead id="thead1" >
						<tr >
						<th class="text-center">
							user id #
						</th>
						<th class="text-center">
							user name
						</th>
						<th class="text-center">
						Email
						</th>
						<th class="text-center">
						company
						</th>						
						<th class="text-center">
						location
						</th>
						<th class="text-center">
							Priviledge
						</th>						
						<th class="text-center">
							department
						</th>
						<th class="text-center">
							Admin
						</th>			
						
					</tr>
				</thead>
								
				<tbody id='tuserbody'>

				</tbody>
			</table>								
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

	
	{!! Form::close() !!}

   </div>
   	@endsection