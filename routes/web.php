<?php
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Inovice\InvoiceController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('home');
});

/* ================== Homepage + Admin Routes ================== */

require __DIR__.'/admin_routes.php';
	Route::get('items', [InvoiceController::class, 'getItems'])->name('items');

//Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
