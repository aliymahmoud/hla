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

use App\Models\Insurance_Company;

class Insurance_CompaniesController extends Controller
{
	public $show_action = true;
	public $view_col = 'name';
	public $listing_cols = ['id', 'name', 'address', 'email', 'mobile', 'discount_percetage'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Insurance_Companies', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Insurance_Companies', $this->listing_cols);
		}
		$this->middleware('permission:Insurance_Companies-view|Insurance_Companies-create|Insurance_Companies-edit|Insurance_Companies-delete', ['only' => ['index','show']]);
		$this->middleware('permission:Insurance_Companies-create', ['only' => ['create','store']]);
		$this->middleware('permission:Insurance_Companies-edit', ['only' => ['edit','update']]);
		$this->middleware('permission:Insurance_Companies-delete', ['only' => ['destroy']]);
	}
	
	/**
	 * Display a listing of the Insurance_Companies.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Insurance_Companies');
		
		if(Module::hasAccess("Insurance_Companies", "view")) {
			return View('la.insurance_companies.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new insurance_company.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created insurance_company in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Insurance_Companies", "create")) {
		
			$rules = Module::validateRules("Insurance_Companies", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Insurance_Companies", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.insurance_companies.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified insurance_company.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Insurance_Companies", "view")) {
			
			$insurance_company = Insurance_Company::find($id);
			if(isset($insurance_company->id)) {
				$module = Module::get('Insurance_Companies');
				$module->row = $insurance_company;
				
				return view('la.insurance_companies.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('insurance_company', $insurance_company);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("insurance_company"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified insurance_company.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Insurance_Companies", "edit")) {
			$insurance_company = Insurance_Company::find($id);
			if(isset($insurance_company->id)) {	
				$module = Module::get('Insurance_Companies');
				
				$module->row = $insurance_company;
				
				return view('la.insurance_companies.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('insurance_company', $insurance_company);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("insurance_company"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified insurance_company in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Insurance_Companies", "edit")) {
			
			$rules = Module::validateRules("Insurance_Companies", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Insurance_Companies", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.insurance_companies.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified insurance_company from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Insurance_Companies", "delete")) {
			Insurance_Company::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.insurance_companies.index');
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
		$values = DB::table('insurance_companies')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->addColumn('action', function ($user) {
			return '';
		})->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Insurance_Companies');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				
				if($fields_popup[$col] != null && Str::startsWith($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i]->$col = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i]->$col);
				}
				if($col == $this->view_col) {
					$data->data[$i]->$col = '<a href="'.url(config('laraadmin.adminRoute') . '/insurance_companies/'.$data->data[$i]->id).'">'.$data->data[$i]->$col.'</a>';
				}

				// else if($col == "author") {
				//    $data->data[$i]->$col;
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Insurance_Companies", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/insurance_companies/'.$data->data[$i]->id.'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Insurance_Companies", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.insurance_companies.destroy', $data->data[$i]->id], 'method' => 'delete', 'style'=>'display:inline']);
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
