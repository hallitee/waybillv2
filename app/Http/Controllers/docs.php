<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Requests\DocFormRequest;
use Auth;
use App\doc;
use App\User;
use App\item;
use App\printlog;
use App\email;
use PDF;
use Log;
use App\HomeController;
use Illuminate\Support\Facades\Mail;
use App\Mail\NewWaybill;
use App\Mail\recNewMail;
use App\Jobs\SendNewWaybillEmail;
use App\Jobs\SendNewRecWaybillEmail;
use Maatwebsite\Excel\Facades\Excel;


class docs extends Controller
{


public function __construct()
{
    $this->middleware('auth');	
}

	public function index()
{
	return view('pages.forms');
	
}

public function create() {
	
	$id=Auth::user()->email;
	$priv = Auth::user()->priv;
	$company = Auth::user()->company;
	$location = Auth::user()->location;
switch ($priv) {
    case "1":
        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI','ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA', 'GSNL AGBARA' => 'GSNL AGBARA', 'EUROMEGA IKEJA' => 'EUROMEGA IKEJA','ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW');
        break;
    case "2":
        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI');
        break;
    case "3":
	$arr_option = array($company." ".$location=>$company." ".$location);		break;
	case "4":
	        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI', 'ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW');
        break;
}
		$name = Auth::user()->name;
		$loc = $company." ".$location;
		$pendCnt = doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc);})->where(function($q){
			$q->where('receiveStatus', 'OPEN')->orWhere('receiveStatus', 'RECEIVED')->orWhere('receiveStatus', 'RETURNED');
		})->count();
	return view('docs.create')->with(['load'=>'no', 'arr_option'=>$arr_option, 'pendCnt'=>$pendCnt]);
	}
public function receive(Request $request) {
	$form = $request->input('a');
	$sentTo = $request->input('sentTo');	
	$searched = $request->input('searched');	
	$id=Auth::user()->name;
		$id=Auth::user()->email;
	$priv = Auth::user()->priv;
	$company = Auth::user()->company;
	$location = Auth::user()->location;
switch ($priv) {
    case "1":
        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI','ESRNL AGBARA' => 'ESRNL AGBARA', 'NPRNL AGBARA' => 'NPRNL AGBARA', 'PFNL AGBARA' => 'PFNL AGBARA', 'GSNL AGBARA' => 'GSNL AGBARA', 'EUROMEGA IKEJA' => 'EUROMEGA IKEJA','ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW', 'ESRNL APAPA'=>'ESRNL APAPA', 'NPRNL APAPA'=>'NPRNL APAPA','PFNL APAPA'=>'PFNL APAPA', 'GSNL APAPA'=> 'GSNL APAPA');
        break;
    case "2":
        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI');
        break;
    case "3":
	$arr_option = array($company." ".$location=>$company." ".$location);
		break;
	case "4":
	        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI', 'ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW');
        break;
}
		$name = Auth::user()->name;
		$loc = $company." ".$location;
		$pendCnt = doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc);})->where(function($q){
			$q->where('receiveStatus', 'OPEN')->orWhere('receiveStatus', 'RECEIVED')->orWhere('receiveStatus', 'RETURNED');
		})->count();
	return view('docs.receive')->with('message', "Waybill \n ".$searched. " Successfully created! \t ")->with('form', $form)->with('searched', $searched)->with('userid', $id)->with('arr_option',$arr_option)->with('pendCnt', $pendCnt);
	}
	
public function reports(Request $request) {
	$type = strtoupper($request->input('type'));
	$status = $request->input('status');		
	$id=Auth::user()->id;
	$name = Auth::user()->name;
	$loc = Auth::user()->company.' '.Auth::user()->location;
	if($type=='LOAN'){
		if($status=='OPEN'){
	    $doc = doc::where('sentBy', $name)->where('wType', $type)->where(function ($q) use ($status){
	$q->where('receiveStatus', $status)->orWhere('receiveStatus', 'RECEIVED')->orWhere('receiveStatus', 'RETURNED');})->orderBy('sentDate', 'DESC')->paginate(10);		
		}else{
			    $doc = doc::where('sentBy', $name)->where('wType', $type)->where('receiveStatus', $status)->orderBy('sentDate', 'DESC')->paginate(10);		
		}
	
	}
	else{
    $doc = doc::where('wType', $type)->where('receiveStatus', $status)->where(function($q) use ($name){
		$q->where('sentBy', $name)->orWhere('sentTo', $name);
	})->orderBy('sentDate', 'DESC')->paginate(10);		
		
	}
	/*$doc=doc::where('sentBy', $name)->where('wType', $type)->where(function ($q) use ($status){
	$q->where('receiveStatus', $status)->orWhere('receiveStatus', 'RECEIVED')->orWhere('receiveStatus', 'RETURNED');})->where(function($g) use ($loc){
		$g->where('sentTo',$loc);})->orderby('sentDate', 'DESC')->paginate(10);*/

	//$doc = doc::where('wType', $type)->paginate(20);
	/*$doc = doc::where('wType', $type)->orderby('sentDate', 'DESC')->get();*/
	return view('docs.reports', compact('doc'))->with('userid', $id)->with('type', $type)->with('status', $status)->with('doc', $doc);
}
	
public function checkdoc()
{
	
}
public function excelreport(Request $request) {
$frmDate = $request->frmDate;
	$toDate = $request->toDate;
	//$origin = $request->origin;
	//$destination = $request->destination;
	//$sender = $request->sender;
	//$receiver = $request->receiver;
	$items = [];
	//$data = 'Hello';
	$doc = new doc;
	$query = $doc->newQuery();
	if($request->has('frmDate')){
		if($request->has('toDate')){
		 $query->whereBetween('sentDate', [$frmDate, $toDate]);
		}
		else{
		$query->whereBetween('sentDate', [$frmDate, $frmDate]);	
		}
	}
	if($request->has('origin')){
	$query->where('sentFrom', $origin);
	}
	if($request->has('destination')){
	$query->where('sentTo', $destination);
	}	
	if($request->has('sender')){
	$query->where('sentBy', 'LIKE', '%'.$sender.'%');
	}	
	if($request->has('receiver')){
	$query->where('deliveredTo', 'LIKE', '%'.$receiver.'%');
	}	
	$data=$query->get();
	foreach($data as $d){
		$it = item::where('doc_id', $d->id)->get();
		array_push($items, $it);
	}
		$data = $data->toArray();
		//	$data = Item::get()->toArray();
	Log::info('Download generated file into local disk');
		return Excel::create('excel_report1', function($excel) use ($data) {

			$excel->sheet('mySheet', function($sheet) use ($data)

	        {

				$sheet->fromArray($data);

	        });

		})->export('csv');	
		Log::info('After Excel download');
	//	$data = Item::get()->toArray();
	//return Response::json($user);
	//return view('admin.users')->with(['doc'=>$data, 'item'=>$items]);

	
	}		
 public function store(DocFormRequest  $request)
 {
	 $user_id = Auth::user()->id;
	 $user_email = Auth::user()->email;
	 $comp = Auth::user()->company;
	 $loc = Auth::user()->location;
	
	
	$doc = new doc;
	$doc->wType = $request->wType;	
	if($doc->wType == 'PROMO'){
		$doc->receiveStatus = 'CLOSED';
	}
	$doc->sentBy = $request->sentBy;

	$doc->sentTo = $request->sentTo;
    if($request->sentTo=='VENDOR'){
		$doc->vendorName = $request->sento;
		$recEmail = '';
	}
	else{
	$recEmail = User::where('name', $request->deliveredTo)->first()->email;
	}

	$doc->proxyName = $request->proxyName;
	$doc->sentFrom = $request->sentFrom;
	$doc->sentDate = $request->sentDate;
	$doc->deliveredBy = $request->deliveredBy;
	$doc->deliveredTo = $request->deliveredTo;	
	$doc->user_id = $user_id;
	$doc->save();
	echo $doc_id = $doc->id;
	print $doc_id = $doc->id;
	
	$item = new item;
	//$items = Input::get('items');
	$items = $request->input('items');
	//$item->insert($items);
	//$doc->item()->saveMany($items);
	foreach($items as $key => $val){
			$item = new item;
			$item->item_desc = $val['desc'];
			$item->qty = $val['qty'];
			$item->serialNo = $val['serial'];
			$item->status = $val['status'];
			$item->remark = $val['remark'];
			$item->doc_id = $doc_id;
			$item->sircode = $val['sircode'];
			$item->lpo = $val['lpo'];
			$item->save();
	}
	Log::info("Request cycle before sending mail");
    //$doc->$item->insert(Input::get('items'));
	$items = item::where('doc_id', $doc->id)->get();
	// dispatch(new SendNewWaybillEmail($doc, $items, $user_email));
	if(Auth::user()->dept == "IT"){
		$copiEmail = email::where('dept', 'IT')->first();
		$this->newMail($doc, $items, $user_email, $copiEmail);
	}
	else{
	 $copiEmail = email::where('location', $loc)->where('company', $comp)->first();
	 if($copiEmail!=null){
		$this->newMail($doc, $items, $user_email, $copiEmail);
	 }	 
	 }
	 //Mail::to($user_email)->send(new NewWaybill($doc, $items));
	if($recEmail != '' || $recEmail != null ){
	 $newRecMailJob = (new SendNewRecWaybillEmail($doc, $items, $recEmail))->delay(Carbon::now()->addMinutes(1));
	 dispatch($newRecMailJob);		
	}
	else{
		
		//Mail::to($recEmail)->send(new recNewMail($doc, $items));
	}
	Log::info("Request cycle After sending email");
		return redirect('waybill/print')->with('message', "Waybill \n W".ucfirst($doc->wType[0]).str_pad($doc->id, 5, "0", STR_PAD_LEFT). " Successfully created! \t ")->with(['load'=>'no','sw'=>1, 'doc'=>$doc, 'items'=> $items]); 
	 
 }
public function prints(Request $req) {
	//$id=Auth::user()->email;
	//$doc = doc::where('id', $docid)->get()->first();
	//$item = item::where('doc_id', $docid)->get();
	if($req->has('docid')){
	return view('docs.create')->with(['load'=>'no']);	
	}else{
	return view('docs.print'); 
	}
	}
public function search(Request $req) {
	//$id=Auth::user()->email;
	//$doc = doc::where('id', $docid)->get()->first();
	//$item = item::where('doc_id', $docid)->get();
	if($req->has('docid')){
	return view('docs.create')->with(['load'=>'no']);	
	}else{
	return view('docs.search'); 
	}
	}	
public function rprint(Request $req) {
	//$id=Auth::user()->email;
	//$doc = doc::where('id', $docid)->get()->first();
	//$item = item::where('doc_id', $docid)->get();
	$ptype = $req->pType;
	$doc = doc::where('id', $req->doc)->first();
	$item = item::where('doc_id', $req->doc)->get();
	return view('docs.rprint')->with(['load'=>'no','doc'=>$doc, 'ptype'=>$ptype, 'items'=>$item]);
	}	
public function printreview(Request $req) {
	 $usrname=Auth::user()->name;
	//$doc = doc::where('id', $docid)->get()->first();
	//$item = item::where('doc_id', $docid)->get();
    if($req->has('docid')){
		$printStat='';
		$id = $req->docid;
		$doc = doc::find($id);
		$item = item::where('doc_id', $id)->get();
		if($doc->printNo<1){
		++$doc->printNo;
		$doc->save();

		}elseif($doc->printNo>=1){
		 ++$doc->printNo;
		 $doc->save();
		 $printStat = "Reprint";
		}
		$prt = new printlog();
		$prt->docid = $doc->id;
		$prt->printedBy = $usrname;
		$prt->printDate = date('Y-m-d');
		$prt->printTime = date('H:i:s');
		$prt->save();
		
		//$pdf = PDF::loadview('docs.waybill', compact(['item', 'doc']));
		//return $pdf->download('waybill.pdf');
		return view('docs.waybill6')->with(['items'=>$item, 'doc'=>$doc, 'prtStat'=>$printStat]); 
	}else
	{
		return view('docs.create'); 
		
	}
	return view('docs.waybill')->with(['item'=>$item, 'doc'=>$doc]); 
	}	
 public function show($id)
 {
	$id=Auth::user()->email;
	return view('docs.receive');
	 
 }

 public function edit($id)
 {
	 
 }
 public function update($id)
 {
 }
 public function destroy($id){
	 
}
		function newMail($doc, $items, $user_email, $copiEmail){	
		Log::info("Before sending email with CC & BCC recipients");
		$newMailJob = (new SendNewWaybillEmail($doc, $items, $user_email, $copiEmail))->delay(Carbon::now()->addMinutes(1));
		dispatch($newMailJob);
		Log::info("After dispatch email with CC & BCC recipients");
}
}