<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\DocFormRequest;
use Auth;
use App\doc;
use App\item;
use App\printlog;
use PDF;


class docs extends Controller
{
    //
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
	$arr_option = array($company." ".$location=>$company." ".$location);
        echo "i is cake";
		break;
	case "4":
	        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI', 'ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW');
        break;
}
	return view('docs.create')->with(['load'=>'no', 'arr_option'=>$arr_option]);
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
        echo "i is cake";
		break;
	case "4":
	        $arr_option = array('ESRNL IKOYI' => 'ESRNL IKOYI', 'NPRNL IKOYI'=>'NPRNL IKOYI','PFNL IKOYI'=>'PFNL IKOYI','GSNL IKOYI'=>'GSNL IKOYI', 'ESRNL PARKVIEW' => 'ESRNL PARKVIEW','NPRNL PARKVIEW' => 'NPRNL PARKVIEW','PFNL PARKVIEW' => 'PFNL PARKVIEW', 'GSNL PARKVIEW' => 'GSNL PARKVIEW');
        break;
}
	return view('docs.receive')->with('message', "Waybill \n ".$searched. " Successfully created! \t ")->with('form', $form)->with('searched', $searched)->with('userid', $id)->with('arr_option',$arr_option);
	}
	
public function reports(Request $request) {
	$type = strtoupper($request->input('type'));
	$status = $request->input('status');		
	$id=Auth::user()->id;
	$doc = doc::where('wType', $type)->where('receiveStatus', $status)->where('user_id', $id)->orderby('sentDate', 'DESC')->get();
	return view('docs.reports')->with('userid', $id)->with('type', $type)->with('status', $status)->with('doc', $doc);
}
	
public function checkdoc()
{
	
}
		
 public function store(DocFormRequest  $request)
 {
	 $user_id = Auth::user()->id;
	$doc = new doc;
	$doc->wType = $request->wType;	
	if($doc->wType == 'PROMO'){
		$doc->receiveStatus = 'CLOSED';
	}
	$doc->sentBy = $request->sentBy;

	$doc->sentTo = $request->sentTo;
    if($request->sentTo=='VENDOR'){
		$doc->vendorName = $request->sento;
	}
    if($request->sentFrom=='VENDOR'){
		$doc->vendorName = $request->sentFro;
	}
				
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
    //$doc->$item->insert(Input::get('items'));
	
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
}