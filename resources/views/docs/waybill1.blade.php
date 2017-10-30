@extends('layouts.app')
@section('navbar')

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
@include('docs.printform')	
@endsection