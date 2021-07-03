<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Validator;
use Yajra\DataTables\Datatables;
use Collective\Html\FormFacade as Form;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;
use Illuminate\Support\Str;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

use App\Models\Payment_Method;

class Payment_MethodsController extends Controller
{
	public $show_action = true;
	public $view_col = 'name';
	public $listing_cols = ['id', 'name'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Payment_Methods', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Payment_Methods', $this->listing_cols);
		}
		$this->middleware('permission:Payment_Methods-view|Payment_Methods-create|Payment_Methods-edit|Payment_Methods-delete', ['only' => ['index','show']]);
		$this->middleware('permission:Payment_Methods-create', ['only' => ['create','store']]);
		$this->middleware('permission:Payment_Methods-edit', ['only' => ['edit','update']]);
		$this->middleware('permission:Payment_Methods-delete', ['only' => ['destroy']]);
	}
	
	/**
	 * Display a listing of the Payment_Methods.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Payment_Methods');
		
		if(Module::hasAccess("Payment_Methods", "view")) {
			return View('la.payment_methods.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new payment_method.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created payment_method in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Payment_Methods", "create")) {
		
			$rules = Module::validateRules("Payment_Methods", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Payment_Methods", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.payment_methods.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified payment_method.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Payment_Methods", "view")) {
			
			$payment_method = Payment_Method::find($id);
			if(isset($payment_method->id)) {
				$module = Module::get('Payment_Methods');
				$module->row = $payment_method;
				
				return view('la.payment_methods.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('payment_method', $payment_method);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("payment_method"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified payment_method.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Payment_Methods", "edit")) {
			$payment_method = Payment_Method::find($id);
			if(isset($payment_method->id)) {	
				$module = Module::get('Payment_Methods');
				
				$module->row = $payment_method;
				
				return view('la.payment_methods.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('payment_method', $payment_method);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("payment_method"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified payment_method in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Payment_Methods", "edit")) {
			
			$rules = Module::validateRules("Payment_Methods", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Payment_Methods", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.payment_methods.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified payment_method from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Payment_Methods", "delete")) {
			Payment_Method::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.payment_methods.index');
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}
	
	/**
	 * Datatable Ajax fetch
	 *
	 * @return
	 */
	public function dtajax()
	{
		$values = DB::table('payment_methods')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->addColumn('action', function ($user) {
			return '';
		})->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Payment_Methods');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				
				if($fields_popup[$col] != null && Str::startsWith($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i]->$col = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i]->$col);
				}
				if($col == $this->view_col) {
					$data->data[$i]->$col = '<a href="'.url(config('laraadmin.adminRoute') . '/payment_methods/'.$data->data[$i]->id).'">'.$data->data[$i]->$col.'</a>';
				}

				// else if($col == "author") {
				//    $data->data[$i]->$col;
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Payment_Methods", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/payment_methods/'.$data->data[$i]->id.'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Payment_Methods", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.payment_methods.destroy', $data->data[$i]->id], 'method' => 'delete', 'style'=>'display:inline']);
					$output .= ' <button class="btn btn-danger deleteFormBtn btn-xs" type="submit"><i class="fa fa-times"></i></button>';
					$output .= Form::close();
				}
				$data->data[$i]->action = (string)$output;
			}
		}
		$out->setData($data);
		return $out;
	}
}
