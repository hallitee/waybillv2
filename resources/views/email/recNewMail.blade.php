<html>
<style>
.table2 {
	border-collapse: collapse;
	}
.table2 th{

	border: 1px solid black
	}
.table2 td{

	border: 1px solid black
	}
</style>
<head></head>
<body style="background: white; color: black">

<h3>NEW {{$doc->wType}} WAYBILL INFORMATION</h3>
<table >

<tbody>
<tr><td>Waybill #:	</td><td>W{{ucfirst($doc->wType[0])}}{{str_pad($doc->id, 5, "0", STR_PAD_LEFT)}}</td><td>|</td><td>Date Sent:  </td><td> {{$doc->sentDate}}</td></tr>
<tr><td>Origin:	</td><td>{{$doc->sentFrom}}</td><td>|</td><td>Destination: </td><td> {{$doc->sentTo}}</td></tr>
<tr><td>Sender:	</td><td>{{$doc->sentBy}}</td><td>|</td><td>Receiver: </td><td> {{$doc->deliveredTo}}</td></tr>
<tr><td>Delivered By:	</td><td>{{$doc->deliveredBy}}</td></tr>
</tbody >
</table>
<br>
<p>
Items listed below is being sent to your location, please update item waybill on portal upon receive. 
</p>
<table class="table2">
<thead><th>S/n</th><th>Item description</th><th>Qty</th><th>Serial No</th><th>Status</th><th>Remarks</th><th>SIR Code</th><th>LPO Code</th></thead>
<tbody>
@foreach($item as $it)
<tr><td>{{$loop->iteration}}</td><td>{{$it->item_desc}}</td><td>{{$it->qty}}</td><td>{{$it->serialNo}}</td><td>{{$it->status}}</td><td>{{$it->remark}}</td><td>{{$it->sircode}}</td><td>{{$it->lpo}}</td></tr>
@endforeach
</tbody >
</table>

<br>
<p>Thank You</p>
</body>
</html>