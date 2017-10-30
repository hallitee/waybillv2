<?php
use Illuminate\Http\Request;


use App\doc;
use App\item;
use App\itemslog;
use App\User;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('waybill/loadusers', function(Request $request){
	$company = $request->company;
	$location = $request->location;	

	$data = User::where('company', $company)->where('location', $location)->get();	
	if($data->isEmpty()){
	$data = User::where('location', $location)->get();
	}
	else{			}

	if(Auth::user()->priv == 1){
		$data = User::all();
	}	
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});
Route::get('waybill/loaddoc', function(Request $request){
	$id = $request->id;
	if ($id!=''){
	$data = doc::where('id', $id)->first();	
	}	
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});
Route::get('waybill/loadItems', function(Request $request){
	$id = $request->id;
	if ($id!=''){
	$data = item::where('doc_id', $id)->get();	
	}	
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});
Route::get('waybill/load', function(Request $request){
	$loc = $request->location;
	$id = $request->search;
	$wType = strtoupper($request->wType);
	
	if ($loc!=''){
	$data = doc::where('wType', $wType)->where('sentTo', $loc)->where('receiveStatus', 'OPEN')->orderby('sentDate', 'DESC')->get();	
	}
	else{$data = [];}
	if($id!=''){
	$data = doc::where('wType',$wType)->where('id', $id)->where('receiveStatus','OPEN')->orderby('sentDate', 'DESC')->get();
	}
	
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});

Route::get('waybill/recitem', function(Request $request){
	$recqty = $request->recqty;
	$currRec = $request->currRec;
	$doc_id = $request->doc_id;
	$item_id = $request->item_id;
	$item_stat = $request->item_stat;	
	$userid = $request->userid;
	$remText = $request->remText;
		if($item_stat=='CLOSED'){
	$g = doc::where('id', $doc_id)->first();
	$g->receiveStatus = $item_stat;
	$g->receivedBy =Auth::user()->name;
	$g->closeremark = $remText;
	$g->receiveDate = date("Y-m-d");
	$g->save();		
	}
	//$wType = strtoupper($request->wType);
	if ($item_id!=''){
	$f = item::where('id', $item_id)->first();	
	$f->recqty = $recqty;
	$f->save();
	$user_id = Auth::user()->id;
	echo "Doc id ".$doc_id." User id ".$userid;
	$il = new itemslog;
	$il->docid = $doc_id;
	$il->itemid = $item_id;
	$il->itemDesc = $f->item_desc;
	$il->serialNo = $f->serialNo;
	$il->itemRecQty = $currRec;	
	$il->status = $f->status;
	$il->remark = $f->remark;
	$il->recId = $user_id;	
	$il->recName = Auth::user()->name;
	$il->recEmail = Auth::user()->email;
	$il->save();
	echo $item_stat;

	$data = 'success';
	}	
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});


Route::get('/', function () {
    return view('auth/login');
});

Route::post('waybill/checkdoc',['as' => 'waybill.checkdoc', 'uses' => 'docs@checkdoc']);
Route::get('waybill/checkdoc',['as' => 'waybill.checkdoc', 'uses' => 'docs@checkdoc']);

//#Route::post('waybill',['as' => 'waybill_store', 'uses' => 'DocController@store']);
//Route::get('waybill/print/{doc?}',['as' => 'waybill.print', 'uses' => 'docs@print', function($doc){
//return View::make('waybill.print')->with(['doc'=>$doc]);
//}]);
Route::get('waybill/printreview/{docid?}',['as' => 'waybill.print', 'uses' => 'docs@printreview', 'docid'=>'docid']);
Route::get('waybill/print/{docid?}',['as' => 'waybill.print', 'uses' => 'docs@prints', 'docid'=>'docid']);
Route::get('waybill/receive',['as' => 'waybill.receive', 'uses' => 'docs@receive']);
Route::get('waybill/reports',['as' => 'waybill.reports', 'uses' => 'docs@reports']);
Route::post('waybill/receive',['as' => 'waybill.receive', 'uses' => 'docs@receive']);
Route::resource('waybill', 'docs',array('names' => array('receive' => 'docs.receive','load'=>'no' )));
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

