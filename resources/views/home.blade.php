@extends('layouts.app')
@section('navbar')
@include('nav')
@endsection
@section('title')
Dashboard
@endsection
@section('content')
            <div class="row">
			
                <div class="col-lg-5 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
						Transfers
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-random fa-5x"></i>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $tSent }}
									
									</div>
                                    <div>Sent</div>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $tRec }}
									
									</div>
                                    <div>Received</div>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $tPend }}
									
									</div>
                                    <div>In Transit</div>
                                </div>								
                            </div>
                        </div>
                        <a href="{{ route('waybill.reports',['type'=>'transfer','status'=>'OPEN']) }}">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
						Loan
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-asl-interpreting fa-5x"></i>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $lSent }}
									
									</div>
                                    <div>Sent</div>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $lRec }}
									
									</div>
                                    <div>Received</div>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $lPend }}
									
									</div>
                                    <div>In Transit</div>
                                </div>
                            </div>
                        </div>
                        <a href="{{ route('waybill.reports',['type'=>'loan','status'=>'OPEN']) }}">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
						Repairs
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-wrench fa-5x"></i>
                                </div>
                              <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $rSent }}
									
									</div>
                                    <div>Sent</div>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $rRec }}
									
									</div>
                                    <div>Received</div>
                                </div>
                                <div class="col-xs-3 text-right">
                                    <div class="huge">{{ $rPend }}
									
									</div>
                                    <div>In Transit</div>
                                </div>
                            </div>
                        </div>
                        <a href="{{ route('waybill.reports',['type'=>'repair','status'=>'OPEN']) }}">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-spinner fa-5x"></i>
                                </div>
                                <div class="col-xs-9">
<table class="pull-right">
<thead>
<th>
Completed
</th>
</thead>
<tbody>
<tr><td>Transfers</td><td>{{$rTransfers}}</td></tr>
<tr><td>Loan</td><td>{{$rLoans}}</td></tr>
<tr><td>Repairs</td><td>{{$rRepairs}}</td></tr>
<tr><td>Promos</td><td>{{$rPromo}}</td></tr>
</tbody>
</table>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

			@endsection
