<?php 
 use App\Http\Controllers\LA\Branch_EmployeesController;
 
 use App\Http\Controllers\LA\Invoice_TypesController;
 
 use App\Http\Controllers\LA\Payment_MethodsController;
 
 
 
 use App\Http\Controllers\LA\Users_CredentialsController;
 
 use App\Http\Controllers\LA\SunglassesController;
 
 use App\Http\Controllers\LA\OpticsController;
 
 use App\Http\Controllers\LA\Glasses_LensesController;
 
 use App\Http\Controllers\LA\LensesController;
 
 use App\Http\Controllers\LA\CoversController;
 
 use App\Http\Controllers\LA\IC_EmployeesController;
 
 use App\Http\Controllers\LA\Insurance_CompaniesController;
 
 use App\Http\Controllers\LA\BranchesController;
 
 use App\Http\Controllers\LA\ClientsController;
 
 use App\Http\Controllers\Inovice\InvoiceController;
 
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LA\UploadsController;
use App\Http\Controllers\LA\DashboardController;
use App\Http\Controllers\LA\UserController;
use App\Http\Controllers\LA\RolesController;
use App\Http\Controllers\LA\PermissionsController;
use App\Http\Controllers\LA\DepartmentsController;
use App\Http\Controllers\LA\EmployeesController;
use App\Http\Controllers\LA\OrganizationsController;
use App\Http\Controllers\LA\UsersController;

/* ================== Homepage ================== */
//Route::get('/', [HomeController::class, 'index']);
//Route::get('/home', [HomeController::class, 'index']);
Auth::routes();

/* ================== Access Uploaded Files ================== */
Route::get('files/{hash}/{name}', [UploadsController::class, 'get_file']);

/*
|--------------------------------------------------------------------------
| Admin Application Routes
|--------------------------------------------------------------------------
*/

$as = "";
if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
	$as = config('laraadmin.adminRoute').'.';
	
	// Routes for Laravel 5.3
	Route::get('/logout', [App\Http\Controllers\Auth\LoginController::class,'logout']);
}

Route::middleware(['auth'])->name($as)->group(function () {
	
	/* ================== Dashboard ================== */
	
	Route::get(config('laraadmin.adminRoute'),  [DashboardController::class, 'index']);
	Route::get(config('laraadmin.adminRoute'). '/dashboard', [DashboardController::class, 'index']);
	
	/* ================== Users ================== */
	Route::resource(config('laraadmin.adminRoute') . '/users', UsersController::class);
	Route::get(config('laraadmin.adminRoute') . '/user_dt_ajax', [UsersController::class,'dtajax']);
	
	/* ================== Uploads ================== */
	Route::resource(config('laraadmin.adminRoute') . '/uploads', UploadsController::class);
	Route::post(config('laraadmin.adminRoute') . '/upload_files', [UploadsController::class,'upload_files']);
	Route::get(config('laraadmin.adminRoute') . '/uploaded_files', [UploadsController::class,'uploaded_files']);
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_caption', [UploadsController::class,'update_caption']);
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_filename', [UploadsController::class,'update_filename']);
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_public', [UploadsController::class,'update_public']);
	Route::post(config('laraadmin.adminRoute') . '/uploads_delete_file', [UploadsController::class,'delete_file']);
	
	/* ================== Roles ================== */
	Route::resource(config('laraadmin.adminRoute') . '/roles', RolesController::class);
	Route::get(config('laraadmin.adminRoute') . '/role_dt_ajax', [RolesController::class,'dtajax']);
	Route::post(config('laraadmin.adminRoute') . '/save_module_role_permissions/{id}', [RolesController::class,'save_module_role_permissions']);
	
	/* ================== Permissions ================== */
	Route::resource(config('laraadmin.adminRoute') . '/permissions', PermissionsController::class);
	Route::get(config('laraadmin.adminRoute') . '/permission_dt_ajax', [PermissionsController::class,'dtajax']);
	Route::post(config('laraadmin.adminRoute') . '/save_permissions/{id}', [PermissionsController::class,'save_permissions']);
	
	/* ================== Departments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/departments', DepartmentsController::class);
	Route::get(config('laraadmin.adminRoute') . '/department_dt_ajax', [DepartmentsController::class,'dtajax']);
	
	/* ================== Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/employees', EmployeesController::class);
	Route::get(config('laraadmin.adminRoute') . '/employee_dt_ajax', [EmployeesController::class,'dtajax']);
	Route::post(config('laraadmin.adminRoute') . '/change_password/{id}', [EmployeesController::class,'change_password']);
	
	/* ================== Organizations ================== */
	Route::resource(config('laraadmin.adminRoute') . '/organizations', OrganizationsController::class);
	Route::get(config('laraadmin.adminRoute') . '/organization_dt_ajax', [OrganizationsController::class,'dtajax']);

	Route::resource(config('laraadmin.adminRoute') . '/backups', BackupsController::class);
	Route::get(config('laraadmin.adminRoute') . '/backup_dt_ajax', [BackupsController::class,'dtajax']);
	Route::post(config('laraadmin.adminRoute') . '/create_backup_ajax', [BackupsController::class,'create_backup_ajax']);
	Route::get(config('laraadmin.adminRoute') . '/downloadBackup/{id}', [BackupsController::class,'downloadBackup']);




	/* ================== Clients ================== */
	Route::resource(config('laraadmin.adminRoute') . '/clients', ClientsController::class);
	Route::get(config('laraadmin.adminRoute') . '/client_dt_ajax', [ClientsController::class,'dtajax']);

	/* ================== Branches ================== */
	Route::resource(config('laraadmin.adminRoute') . '/branches', BranchesController::class);
	Route::get(config('laraadmin.adminRoute') . '/branch_dt_ajax', [BranchesController::class,'dtajax']);

	/* ================== Insurance_Companies ================== */
	Route::resource(config('laraadmin.adminRoute') . '/insurance_companies', Insurance_CompaniesController::class);
	Route::get(config('laraadmin.adminRoute') . '/insurance_company_dt_ajax', [Insurance_CompaniesController::class,'dtajax']);

	/* ================== IC_Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/ic_employees', IC_EmployeesController::class);
	Route::get(config('laraadmin.adminRoute') . '/ic_employee_dt_ajax', [IC_EmployeesController::class,'dtajax']);

	/* ================== Covers ================== */
	Route::resource(config('laraadmin.adminRoute') . '/covers', CoversController::class);
	Route::get(config('laraadmin.adminRoute') . '/cover_dt_ajax', [CoversController::class,'dtajax']);

	/* ================== Lenses ================== */
	Route::resource(config('laraadmin.adminRoute') . '/lenses', LensesController::class);
	Route::get(config('laraadmin.adminRoute') . '/lens_dt_ajax', [LensesController::class,'dtajax']);

	/* ================== Glasses_Lenses ================== */
	Route::resource(config('laraadmin.adminRoute') . '/glasses_lenses', Glasses_LensesController::class);
	Route::get(config('laraadmin.adminRoute') . '/glasses_lense_dt_ajax', [Glasses_LensesController::class,'dtajax']);

	/* ================== Optics ================== */
	Route::resource(config('laraadmin.adminRoute') . '/optics', OpticsController::class);
	Route::get(config('laraadmin.adminRoute') . '/optic_dt_ajax', [OpticsController::class,'dtajax']);

	/* ================== Sunglasses ================== */
	Route::resource(config('laraadmin.adminRoute') . '/sunglasses', SunglassesController::class);
	Route::get(config('laraadmin.adminRoute') . '/sunglass_dt_ajax', [SunglassesController::class,'dtajax']);

	/* ================== Users_Credentials ================== */
	Route::resource(config('laraadmin.adminRoute') . '/users_credentials', Users_CredentialsController::class);
	Route::get(config('laraadmin.adminRoute') . '/users_credential_dt_ajax', [Users_CredentialsController::class,'dtajax']);



	/* ================== Payment_Methods ================== */
	Route::resource(config('laraadmin.adminRoute') . '/payment_methods', Payment_MethodsController::class);
	Route::get(config('laraadmin.adminRoute') . '/payment_method_dt_ajax', [Payment_MethodsController::class,'dtajax']);

	/* ================== Invoice_Types ================== */
	Route::resource(config('laraadmin.adminRoute') . '/invoice_types', Invoice_TypesController::class);
	Route::get(config('laraadmin.adminRoute') . '/invoice_type_dt_ajax', [Invoice_TypesController::class,'dtajax']);

	/* ================== Invoices ================== */
	Route::resource(config('laraadmin.adminRoute') . '/invoices', InvoiceController::class)->only([
		'create',
		'store',
		'show',
		'index',
	]);
	Route::get(config('laraadmin.adminRoute').'/items', [InvoiceController::class, 'getItems'])->name('items');
	/* ================== Branch_Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/branch_employees', Branch_EmployeesController::class);
	Route::get(config('laraadmin.adminRoute') . '/branch_employee_dt_ajax', [Branch_EmployeesController::class,'dtajax']);
});
