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
		$transfers = doc::where('user_id', $id)->where('wType', 'TRANSFER')->count();
		$loaned = doc::where('user_id', $id)->where('wType', 'LOAN')->count();
		$repaired = doc::where('user_id', $id)->where('wType', 'REPAIR')->count();
		$rTransfers = doc::where('user_id', $id)->where('wType', 'TRANSFER')->where('receiveStatus', 'CLOSED')->count();
		$rLoans = doc::where('user_id', $id)->where('wType', 'LOAN')->where('receiveStatus', 'CLOSED')->count();
		$rRepairs = doc::where('user_id', $id)->where('wType', 'REPAIR')->where('receiveStatus', 'CLOSED')->count();
		$rPromo = doc::where('user_id', $id)->where('wType', 'PROMO')->where('receiveStatus', 'CLOSED')->count();		
        return view('home')->with(['transfers'=>$transfers,'loaned'=>$loaned, 'repaired'=>$repaired, 'rTransfers'=>$rTransfers, 'rLoans'=>$rLoans, 'rRepairs'=>$rRepairs, 'rPromo'=>$rPromo]);
    }
}
