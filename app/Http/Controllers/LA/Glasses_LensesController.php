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

use App\Models\Glasses_Lense;

class Glasses_LensesController extends Controller
{
	public $show_action = true;
	public $view_col = 'name';
	public $listing_cols = ['id', 'name', 'code', 'right_axls', 'left_axls', 'date_of_purchase', 'color', 'type', 'actule_price', 'sale_price', 'seller', 'quantity'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Glasses_Lenses', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Glasses_Lenses', $this->listing_cols);
		}
		$this->middleware('permission:Glasses_Lenses-view|Glasses_Lenses-create|Glasses_Lenses-edit|Glasses_Lenses-delete', ['only' => ['index','show']]);
		$this->middleware('permission:Glasses_Lenses-create', ['only' => ['create','store']]);
		$this->middleware('permission:Glasses_Lenses-edit', ['only' => ['edit','update']]);
		$this->middleware('permission:Glasses_Lenses-delete', ['only' => ['destroy']]);
	}
	
	/**
	 * Display a listing of the Glasses_Lenses.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Glasses_Lenses');
		
		if(Module::hasAccess("Glasses_Lenses", "view")) {
			return View('la.glasses_lenses.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new glasses_lense.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created glasses_lense in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Glasses_Lenses", "create")) {
		
			$rules = Module::validateRules("Glasses_Lenses", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Glasses_Lenses", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.glasses_lenses.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified glasses_lense.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Glasses_Lenses", "view")) {
			
			$glasses_lense = Glasses_Lense::find($id);
			if(isset($glasses_lense->id)) {
				$module = Module::get('Glasses_Lenses');
				$module->row = $glasses_lense;
				
				return view('la.glasses_lenses.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('glasses_lense', $glasses_lense);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("glasses_lense"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified glasses_lense.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Glasses_Lenses", "edit")) {
			$glasses_lense = Glasses_Lense::find($id);
			if(isset($glasses_lense->id)) {	
				$module = Module::get('Glasses_Lenses');
				
				$module->row = $glasses_lense;
				
				return view('la.glasses_lenses.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('glasses_lense', $glasses_lense);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("glasses_lense"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified glasses_lense in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Glasses_Lenses", "edit")) {
			
			$rules = Module::validateRules("Glasses_Lenses", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Glasses_Lenses", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.glasses_lenses.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified glasses_lense from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Glasses_Lenses", "delete")) {
			Glasses_Lense::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.glasses_lenses.index');
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
		$values = DB::table('glasses_lenses')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->addColumn('action', function ($user) {
			return '';
		})->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Glasses_Lenses');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				
				if($fields_popup[$col] != null && Str::startsWith($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i]->$col = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i]->$col);
				}
				if($col == $this->view_col) {
					$data->data[$i]->$col = '<a href="'.url(config('laraadmin.adminRoute') . '/glasses_lenses/'.$data->data[$i]->id).'">'.$data->data[$i]->$col.'</a>';
				}

				// else if($col == "author") {
				//    $data->data[$i]->$col;
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Glasses_Lenses", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/glasses_lenses/'.$data->data[$i]->id.'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Glasses_Lenses", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.glasses_lenses.destroy', $data->data[$i]->id], 'method' => 'delete', 'style'=>'display:inline']);
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
