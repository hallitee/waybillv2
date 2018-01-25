<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\doc;
use App\item;
use Auth;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$id=Auth::user()->id;
		$name = Auth::user()->name;
		$loc = Auth::user()->company." ".Auth::user()->location;
		$transfers = doc::where('user_id', $id)->where('wType', 'TRANSFER')->count();
		$pendCnt = doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc);})->where(function($q){
			$q->where('receiveStatus', 'OPEN')->orWhere('receiveStatus', 'RECEIVED')->orWhere('receiveStatus', 'RETURNED');
		})->count();		
		$loaned = doc::where('user_id', $id)->where('wType', 'LOAN')->count();
		$repaired = doc::where('user_id', $id)->where('wType', 'REPAIR')->count();
		$rTransfers = doc::where('user_id', $id)->where('wType', 'TRANSFER')->where('receiveStatus', 'CLOSED')->count();
		$rLoans = doc::where('user_id', $id)->where('wType', 'LOAN')->where('receiveStatus', 'CLOSED')->count();
		$rRepairs = doc::where('user_id', $id)->where('wType', 'REPAIR')->where('receiveStatus', 'CLOSED')->count();
		$rPromo = doc::where('user_id', $id)->where('wType', 'PROMO')->where('receiveStatus', 'CLOSED')->count();	
		$open= doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc);})->where(function($q){
			$q->where('receiveStatus', 'OPEN')->orWhere('receiveStatus', 'RECEIVED')->orWhere('receiveStatus', 'RETURNED');
		})->get();
		// Transfer metrics
		$tSent = doc::where('sentBy', $name)->where('wType', 'TRANSFER')->count();
		$tRec = doc::where('receivedBy', $name)->where('wType','TRANSFER')->count();
		$tPend = doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc);})->where('receiveStatus', 'OPEN')->where('wType', 'TRANSFER')->count();
		//$tPend = doc::where(function($q) use ($loc, $name){
		//$q->where('deliveredTo', $name)->orWhere('sentTo', $loc);})->where('receiveStatus', 'OPEN')->where('wType', 'TRANSFER')->count();
		//End of transfer metric
		//Start of Loan metrics
		$lSent = doc::where('sentBy', $name)->where('wType', 'LOAN')->count();
		$lRec = doc::where('receivedBy', $name)->where('wType','LOAN')->count();
		$lPend = doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc)->orWhere('sentBy', $name);})->where('receiveStatus', 'OPEN')->where('wType', 'LOAN')->count();
	
		//End  of Loan metrics
		//Repair
		$rSent = doc::where('sentBy', $name)->where('wType', 'REPAIR')->count();
		$rRec = doc::where('receivedBy', $name)->where('wType','REPAIR')->count();
		$rPend = doc::where(function($q) use ($loc, $name){
		$q->where('deliveredTo', $name)->orWhere('sentTo', $loc)->orWhere('sentBy', $name);})->where('receiveStatus', 'OPEN')->where('wType', 'REPAIR')->count();		//Repair 
        return view('home')->with(['transfers'=>$transfers,'loaned'=>$loaned, 'repaired'=>$repaired, 'rTransfers'=>$rTransfers, 'rLoans'=>$rLoans, 'rRepairs'=>$rRepairs, 'rPromo'=>$rPromo, 'tPend'=>$tPend,'open'=>$open, 'tSent'=>$tSent,'tRec'=>$tRec,'lSent'=>$lSent, 'lRec'=>$lRec,'lPend'=>$lPend,'rSent'=>$rSent, 'rRec'=>$rRec,'rPend'=>$rPend]);

    }
}
