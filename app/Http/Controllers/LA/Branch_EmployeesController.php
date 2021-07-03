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

use App\Models\Branch_Employee;

class Branch_EmployeesController extends Controller
{
	public $show_action = true;
	public $view_col = 'branch_id';
	public $listing_cols = ['id', 'branch_id', 'user_id'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Branch_Employees', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Branch_Employees', $this->listing_cols);
		}
		$this->middleware('permission:Branch_Employees-view|Branch_Employees-create|Branch_Employees-edit|Branch_Employees-delete', ['only' => ['index','show']]);
		$this->middleware('permission:Branch_Employees-create', ['only' => ['create','store']]);
		$this->middleware('permission:Branch_Employees-edit', ['only' => ['edit','update']]);
		$this->middleware('permission:Branch_Employees-delete', ['only' => ['destroy']]);
	}
	
	/**
	 * Display a listing of the Branch_Employees.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Branch_Employees');
		
		if(Module::hasAccess("Branch_Employees", "view")) {
			return View('la.branch_employees.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new branch_employee.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created branch_employee in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Branch_Employees", "create")) {
		
			$rules = Module::validateRules("Branch_Employees", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Branch_Employees", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.branch_employees.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified branch_employee.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Branch_Employees", "view")) {
			
			$branch_employee = Branch_Employee::find($id);
			if(isset($branch_employee->id)) {
				$module = Module::get('Branch_Employees');
				$module->row = $branch_employee;
				
				return view('la.branch_employees.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('branch_employee', $branch_employee);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("branch_employee"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified branch_employee.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Branch_Employees", "edit")) {
			$branch_employee = Branch_Employee::find($id);
			if(isset($branch_employee->id)) {	
				$module = Module::get('Branch_Employees');
				
				$module->row = $branch_employee;
				
				return view('la.branch_employees.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('branch_employee', $branch_employee);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("branch_employee"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified branch_employee in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Branch_Employees", "edit")) {
			
			$rules = Module::validateRules("Branch_Employees", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Branch_Employees", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.branch_employees.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified branch_employee from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Branch_Employees", "delete")) {
			Branch_Employee::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.branch_employees.index');
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
		$values = DB::table('branch_employees')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->addColumn('action', function ($user) {
			return '';
		})->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Branch_Employees');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				
				if($fields_popup[$col] != null && Str::startsWith($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i]->$col = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i]->$col);
				}
				if($col == $this->view_col) {
					$data->data[$i]->$col = '<a href="'.url(config('laraadmin.adminRoute') . '/branch_employees/'.$data->data[$i]->id).'">'.$data->data[$i]->$col.'</a>';
				}

				// else if($col == "author") {
				//    $data->data[$i]->$col;
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Branch_Employees", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/branch_employees/'.$data->data[$i]->id.'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Branch_Employees", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.branch_employees.destroy', $data->data[$i]->id], 'method' => 'delete', 'style'=>'display:inline']);
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
