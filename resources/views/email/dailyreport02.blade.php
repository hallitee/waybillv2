<html>
<style type="text/css" media="print">
    @page 
    {
        size: auto;   /* auto is the initial value */
        margin: 1mm;  /* this affects the margin in the printer settings */
    }

    body 
    {
        background-color:#FFFFFF; 
        border: none;
        margin: 5px;  /* this affects the margin on the content before sending to printer */
   }
</style>
<style type="text/css">
table, tr, td  , th{
	align: top;
	margin: 5px;
	border: 1px solid black;
	border-collapse: collapse;
}
th {
	font-size: 17px;
	width: 70px;
}
tr{
	font-size: 14px;	
	margin:10px
}
div{
	border-bottom: 0.01px solid black;	
	margin:-1px -1px -1px -1px;
}
td{
	
	text-align: center;
}
</style>
<body>
<h2 style="margin-left:100px"> WAYBILL DAILY REPORT 28/11/2017 </h2>

<br>

<table>
<thead>
<th style="width:10px" >S/N</th>
<th>Waybill #</th>
<th style="width:120px">Receiver</th>
<th style="width:120px">Destination</th>
<th>Status</th>
<th>Waybill Type</th>
<th style="width:200px" >Items description</th>
<th>Items Quantity</th>
</thead>
<tbody>
 @foreach($u[0] as $key=>$d)
<tr>
<td>{{$loop->iteration}}</td>
<td>W{{ucfirst($d->wType[0])}}{{str_pad($d->id, 5, "0", STR_PAD_LEFT)}}</td>
<td>{{$d->deliveredTo}}</td>
<td>{{$d->sentTo}}</td>
<td>{{$d->receiveStatus}}</td>
<td>{{$d->wType}}	
</td>

<td>
@foreach($k[0][$key] as $it)
<div>
{{$it->item_desc}}
</div>
@endforeach
</td>
<td>
@foreach($k[0][$key] as $it)
<div>{{$it->qty}}</div>
@endforeach
</td>

 </tr>
@endforeach
</tbody>

</table>
</body>
</html>