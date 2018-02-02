<?php
use Illuminate\Http\Request;

use Carbon\Carbon;
use App\doc;
use App\item;
use App\itemslog;
use App\User;
use App\email;
use Illuminate\Support\Facades\Mail;
use App\Mail\NewWaybill;
use App\Mail\recNewMail;
use App\Mail\DailyReport;
use App\Jobs\SendNewWaybillEmail;
use App\Jobs\SendNewRecWaybillEmail;
use App\Jobs\SendDailyReport;

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

Route::get('searchuser', function(Request $request){
	$text  =  $request->search;
	$user = user::where('email', 'like', '%'.$text.'%')->first();
	return Response::json($user);
})->middleware('auth', 'admin');
Route::get('updateuser', function(Request $request){
	$id = $request->id;
	$find = user::find($id);
	$user = $find->update($request->all());
	return Response::json($user);
});
Route::get('getuser', function(Request $request){
	$srch = $request->srch; 
	$key = $request->keys;
	if($key == 'id'){
		$data = user::where('id', $srch)->first();
	}else{
	if($srch==""){
		//$data = user::all();
	}else{
	$data = user::where('email', 'LIKE', '%'.$srch.'%')->get();
	}
	
	}
	return Response::json($data);
})->middleware('auth', 'admin');
Route::get('admin/user', function(){
	$emails = App\email::all();
	$users = user::paginate(5);
	return view('admin/users')->with(['users'=>$users, 'emails'=>$emails]);
})->name('userconfig')->middleware('auth', 'admin');
Route::get('admin', function(){
	$emails = App\email::all();
	return view('admin/index')->with(['emails'=>$emails]);
})->name('config')->middleware('auth', 'admin');

Route::get('waybill/globalreport', function(){
	$day = Carbon::today()->toDateString();
	$itms= [];
	$itmr = [];
	$com = email::where('location', 'IKOYI')->first();
	$cmps = doc::where('sentDate', '=', $day)->where('sentFrom', 'LIKE', '%IKOYI%')->get();
	foreach($cmps as $d){
	$n = item::where('doc_id', $d->id)->get();
	array_push($itms, $n);
	}
	$cmpr = doc::where('sentDate', '=', $day)->where('sentTo', 'LIKE', '%IKOYI%')->get();
	foreach($cmpr as $d){
	$m = item::where('doc_id', $d->id)->get();
	array_push($itmr, $m);
	}
	return view('email.hodreport')->with(['day'=>$day, 'comp'=>$com, 'docs'=>$cmps, 'items'=>$itms, 'docr'=>$cmpr, 'itemr'=>$itmr ]);
});

Route::get('waybill/email', function(){
$today = '2017-11-28';
$users = [];
$indx;
$u=[];
$v=[];
$k = [];
$j = [];
$l = [];
$docs = doc::whereDate('sentDate','=',$today)->get();
foreach($docs as $d){
if(in_array($d->user_id, $users)){

}
else{
array_push($users, $d->user_id);
}
}

foreach($users as $key=>$user){
$m = doc::where('user_id', $user)->whereDate('sentDate', $today)->get();
//array_push($u, $m);

foreach($m as $key=>$f){
$z = item::where('doc_id', $f->id)->get();
array_push($v, $z);
} //end of each doc
array_push($k, $v);
 $n = User::where('id', $user)->first();
 array_push($u, $n);
	Mail::to($n->email)->send(new DailyReport($m, $v, $n));
 $v=[];
 $u=[];
}//end of each users

	return view('email.dailyreport');
});
/*
Route::get('waybill/email', function(){
	$doc = doc::where('id', 101)->first();
	$item = item::where('doc_id', 101)->get();
	
	
$today = date('Y-m-d');
$today = '2017-11-28';
$users = [];
$indx = 0;
$u=[];
$v=[];
$k = [];
$j = [];
$l = [];
$docs = doc::whereDate('sentDate','=',$today)->get();
foreach($docs as $d){
if(in_array($d->user_id, $users)){

}
else{
array_push($users, $d->user_id);
}
}

foreach($users as $key=>$user){
$m = doc::where('user_id', $user)->whereDate('sentDate', $today)->get();
array_push($u, $m);

foreach($m as $key=>$f){
$z = item::where('doc_id', $f->id)->get();
array_push($v, $z);
} //end of each doc
array_push($k, $v);
$v=[];
}//end of each users
//foreach($users as $key=>$y){
// $user = User::where('id', $y)->first();
// $indx = $key;
 $newRecMailJob = (new SendDailyReport($u, $k, $users));//$key, $today, $user));//->delay(Carbon::now()->addMinutes(1));
 dispatch($newRecMailJob);	
//}//
return view('email.dailyreport02')->with(['u'=>$u, 'k'=>$k, 'indx'=>1, 'today'=>$today, 'user'=>$users]);

});*/
Route::get('emailDel', function(Request $request){
	$id = $request->id;
	$r = App\email::where('id', $id)->first();
	$r->delete();
	$data = App\email::all();
    return Response::json($data);
	//return view('waybill.reports');

})->middleware('auth', 'admin');
Route::get('emailSave', function(Request $request){
	$location = $request->location;
	$company = $request->company;
	$copy = $request->copi;
	$bcopy = $request->bcopy;

	$t = new App\email;
	$t->company = $company;
	$t->location = $location;
	$t->copi = $copy;
	$t->bcopy = $bcopy;
	$t->save();
	$data = $t;
    return Response::json($data);
	//return view('waybill.reports');

})->middleware('auth', 'admin');
Route::get('waybill/return', function(Request $request){
	$id = $request->doc_id;
	$printType = $request->printType;
	if($request->printType=='CLOSED'){
	$data = doc::where('id', $id)->first();
	$data->receiveStatus = 'CLOSED';
	$data->ackcnt = 5;
	$data->save();		
		
	}
	else{

		
	$data = doc::where('id', $id)->first();
	$data->receiveStatus = 'RETURNED';
	$data->ackcnt = 20;
	$data->save();
    return Response::json($data);
	//return view('waybill.reports');
	
	}
});
Route::get('waybill/loadusers', function(Request $request){
	$company = $request->company;
	$location = $request->location;	

	$data = User::where('company', $company)->where('location', $location)->get();	
	if($data->isEmpty()){
	$data = User::where('location', $location)->get();
	}
	else{			}
/*
	if(Auth::user()->priv == 1){
		$data = User::all();
	}	
	*/
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});
Route::get('waybill/loaddoc', function(Request $request){
	$id = $request->id;
	if ($id!=''){
	$data = doc::where('id', $id)->first();	
	}	
	$itemCnt = item::where('doc_id', $id)->paginate(20);
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});
Route::get('waybill/searchitem', function(Request $request){
	$docs = [];
	$id = $request->id;
	if ($id!=''){
	$data = item::where('item_desc', 'LIKE', '%'.$id.'%')->orderby('created_at', 'DESC')->get();	
	foreach($data as $key=>$value){
		$docs[$key]= doc::where('id', $value->doc_id)->first();
		}
	}	
	//$itemCnt = item::where('doc_id', $id)->paginate(20);
    return Response::json([$data, $docs]);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
});

Route::get('waybill/loadItems', function(Request $request){
	$id = $request->id;
	if ($id!=''){
	$data = item::where('doc_id', $id)->get();	
	}	
    return Response::json($data);
	//return View::make('waybill.receive')->with('data',$data,'return',$wType);
})->middleware('auth');

Route::get('waybill/load', function(Request $request){
	$loc = $request->location;
	$id = $request->search;
	$wType = strtoupper($request->wType);
	
	if ($loc!=''){
		if($wType=='LOAN'){
	$data = doc::where('wType', $wType)->where(function($g) use ($loc){
		$g->where('sentTo',$loc)->orWhere('sentFrom',$loc);})->whereIn('receiveStatus', ['OPEN','RECEIVED','RETURNED'])->orderby('sentDate', 'DESC')->get();	
		}else{
	$data = doc::where('wType', $wType)->whereIn('receiveStatus', ['OPEN', 'RECEIVED','RETURNED'])->where(function($g) use ($loc){
		$g->where('sentTo',$loc);})->orderby('sentDate', 'DESC')->get();				
		}
	}
	else{$data = [];}
	if($id!=''){
	$data = doc::where('wType',$wType)->where('id', $id)->whereIn('receiveStatus', ['OPEN','RECEIVED', 'RETURNED'])->orderby('sentDate', 'DESC')->get();
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
	if($item_stat=='ACK'){
	$g = doc::where('id', $doc_id)->first();	
	$g->receiveStatus = 'RECEIVED';
	$g->ackcnt = 10;	
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
    return Response::json($il);
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
//Route::get('waybill/rprint',['as' => 'waybill.rprint', 'uses' => 'docs@rprint']);
Route::get('waybill/print/{docid?}',['as' => 'waybill.print', 'uses' => 'docs@prints', 'docid'=>'docid']);
Route::get('waybill/search/{docid?}',['as' => 'waybill.search', 'uses' => 'docs@search', 'docid'=>'docid']);
Route::get('waybill/receive',['as' => 'waybill.receive', 'uses' => 'docs@receive']);
Route::get('waybill/rprint',['as' => 'waybill.rprint', 'uses' => 'docs@rprint', 'doc']);
Route::get('waybill/reports',['as' => 'waybill.reports', 'uses' => 'docs@reports']);
Route::post('waybill/receive',['as' => 'waybill.receive', 'uses' => 'docs@receive']);
Route::resource('waybill', 'docs',array('names' => array('receive' => 'docs.receive','load'=>'no' )));
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

