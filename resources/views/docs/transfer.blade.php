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
Receive Waybill
@endsection
@section('content')
@php
$arr_option = array('IKOYI' => 'IKOYI', 'ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA',
 'EUROMEGA IKEJA' => 'EUROMEGA', 'PARKVIEW IKOYI' => 'PARKVIEW', 'APAPA' => 'APAPA')
@endphp
@php
$waybill_type = array('TRANSFER' => 'TRANSFER', 'REPAIR' => 'REPAIR', 'LOAN' => 'LOAN') 
@endphp

@endsection