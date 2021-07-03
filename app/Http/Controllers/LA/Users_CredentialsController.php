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

use App\Models\Users_Credential;

class Users_CredentialsController extends Controller
{
	public $show_action = true;
	public $view_col = 'name';
	public $listing_cols = ['id', 'name', 'email', 'password', 'role'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Users_Credentials', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Users_Credentials', $this->listing_cols);
		}
		$this->middleware('permission:Users_Credentials-view|Users_Credentials-create|Users_Credentials-edit|Users_Credentials-delete', ['only' => ['index','show']]);
		$this->middleware('permission:Users_Credentials-create', ['only' => ['create','store']]);
		$this->middleware('permission:Users_Credentials-edit', ['only' => ['edit','update']]);
		$this->middleware('permission:Users_Credentials-delete', ['only' => ['destroy']]);
	}
	
	/**
	 * Display a listing of the Users_Credentials.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Users_Credentials');
		
		if(Module::hasAccess("Users_Credentials", "view")) {
			return View('la.users_credentials.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new users_credential.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created users_credential in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Users_Credentials", "create")) {
		
			$rules = Module::validateRules("Users_Credentials", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Users_Credentials", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.users_credentials.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified users_credential.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Users_Credentials", "view")) {
			
			$users_credential = Users_Credential::find($id);
			if(isset($users_credential->id)) {
				$module = Module::get('Users_Credentials');
				$module->row = $users_credential;
				
				return view('la.users_credentials.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('users_credential', $users_credential);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("users_credential"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified users_credential.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Users_Credentials", "edit")) {
			$users_credential = Users_Credential::find($id);
			if(isset($users_credential->id)) {	
				$module = Module::get('Users_Credentials');
				
				$module->row = $users_credential;
				
				return view('la.users_credentials.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('users_credential', $users_credential);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("users_credential"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified users_credential in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Users_Credentials", "edit")) {
			
			$rules = Module::validateRules("Users_Credentials", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Users_Credentials", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.users_credentials.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified users_credential from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Users_Credentials", "delete")) {
			Users_Credential::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.users_credentials.index');
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
		$values = DB::table('users_credentials')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->addColumn('action', function ($user) {
			return '';
		})->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Users_Credentials');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				
				if($fields_popup[$col] != null && Str::startsWith($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i]->$col = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i]->$col);
				}
				if($col == $this->view_col) {
					$data->data[$i]->$col = '<a href="'.url(config('laraadmin.adminRoute') . '/users_credentials/'.$data->data[$i]->id).'">'.$data->data[$i]->$col.'</a>';
				}

				// else if($col == "author") {
				//    $data->data[$i]->$col;
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Users_Credentials", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/users_credentials/'.$data->data[$i]->id.'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Users_Credentials", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.users_credentials.destroy', $data->data[$i]->id], 'method' => 'delete', 'style'=>'display:inline']);
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
