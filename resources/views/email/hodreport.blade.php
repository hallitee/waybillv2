
<!DOCTYPE>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>

	<style type="text/css" media="print">
    @page 
    {
        size: auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }

    body 
    {
        background-color:#FFFFFF; 
        border: none;
        margin: 5px;  /* this affects the margin on the content before sending to printer */
   }
   table, th, td{

    border: 1px solid black;
    border-collapse: collapse;
	text-align: center;
   	font-size: 11px;
   }
</style>
<style type="text/css">
   table, th, td{
	
    border: 1px solid black;
   	font-size: 12px;
   }
</style>
</head>
<body>


			<br>
			<h3 style="margin-left:250px">DAILY REPORT FOR {{$day}}</h3>
			<br>

<div style="margin-left:90px">

		<div class="col-md-12 align-content-center">
				<h4 style="margin-left:150px"><u>WAYBILL SENT FROM {{$comp->company}}</u></h4>

				<div class="col-md-10">
			<table style="border:1px solid black;border-collapse: collapse">
			
				<thead class="border-2">
					<tr>
						<th class="text-center align-text-top">Waybill #</th>
						<th class="" rowspan="1" colspan="2">Items Delivered</th>
						<th class="">Sender</th>
						<th class="">Receiver</th>
						<th class="">Destination</th>
						<th class="">Type</th>
						<th class="">Status</th>
						<th class="">Delivered By</th>
					</tr>
					<tr>
						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope="">Description</th>
						<th colspan="" rowspan="" headers="" scope="">Quantity</th>
						<th colspan="" rowspan="" headers="" scope=""></th>

						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope=""></th>												
					</tr>
				</thead>
				<tbody class="border-2">
				 @foreach($docs as $key=>$d)
					<tr>
						<td>W{{ucfirst($d->wType[0])}}{{str_pad($d->id, 5, "0", STR_PAD_LEFT)}}</td>
						<td>
							@foreach($items[$key] as $t)
							{{$t->item_desc}}
							<br>
							@endforeach
						</td>
						<td>@foreach($items[$key] as $t)
							{{$t->qty}}
							<br>
							@endforeach</td>
						<td>{{$d->sentBy}}</td>
						<td>{{$d->deliveredTo}}</td>
						<td>{{$d->sentTo}}</td>
						<td>{{$d->wType}}</td>
						<td>{{$d->receiveStatus}}</td>
						<td>{{$d->deliveredBy}}</td>
						
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
		</div>
	</div>
<div style="margin-left:90px">
				<h4 style="margin-left:150px"><u>WAYBILL RECEIVE AT {{$comp->company}}</u></h4>

				<div class="col-md-10">
			<table style="border:1px solid black;border-collapse: collapse">
			
				<thead class="border-2">
					<tr>
						<th class="text-center align-text-top">Waybill #</th>
						<th class="" rowspan="1" colspan="2">Items Delivered</th>
						<th class="">Sender</th>
						<th class="">Receiver</th>
						<th class="">Origin</th>
						<th class="">Type</th>
						<th class="">Status</th>
						<th class="">Delivered By</th>
					</tr>
					<tr>
						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope="">Description</th>
						<th colspan="" rowspan="" headers="" scope="">Quantity</th>
						<th colspan="" rowspan="" headers="" scope=""></th>

						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope=""></th>
						<th colspan="" rowspan="" headers="" scope=""></th>												
					</tr>
				</thead>
				<tbody class="border-2">
				 @foreach($docr as $key=>$d)
					<tr>
						<td>W{{ucfirst($d->wType[0])}}{{str_pad($d->id, 5, "0", STR_PAD_LEFT)}}</td>
						<td>
							@foreach($itemr[$key] as $t)
							{{$t->item_desc}}
							<br>
							@endforeach
						</td>
						<td>@foreach($itemr[$key] as $t)
							{{$t->qty}}
							<br>
							@endforeach</td>
						<td>{{$d->sentBy}}</td>
						<td>{{$d->deliveredTo}}</td>
						<td>{{$d->sentFrom}}</td>
						<td>{{$d->wType}}</td>
						<td>{{$d->receiveStatus}}</td>
						<td>{{$d->deliveredBy}}</td>
						
					</tr>
					@endforeach
					
				</tbody>
			</table>
		</div>
		</div>
	</div>

</body>
</html>