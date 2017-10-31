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
New Way Bill
<ul id="errmsg" style="color:red;font-size:14px" hidden>

<li id="errmsglist">Enter receiving location 'sent To' </li>

</ul>
@endsection
@section('content')
@php
$company=Auth::user()->company;
$location = Auth::user()->location;
$priv = Auth::user()->priv;

$arr_option1 = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI','ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA', 'GSNL AGBARA' => 'GSNL AGBARA', 'EUROMEGA IKEJA' => 'EUROMEGA IKEJA','ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW', 'ESRNL APAPA'=>'ESRNL APAPA', 'NPRNL APAPA'=>'NPRNL APAPA', 'PFNL APAPA' => 'PFNL APAPA', 'GSNL APAPA'=> 'GSNL APAPA', 'VENDOR'=>'VENDOR')
@endphp
@php
$waybill_type = array('TRANSFER' => 'TRANSFER', 'REPAIR' => 'REPAIR', 'LOAN' => 'LOAN','PROMO' => 'PROMO') 
@endphp
@if($load =='no')
@include('docs.newform')
@else
@include('docs.printform')	
@endif

@endsection