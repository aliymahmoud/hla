<?php

namespace App\Http\Controllers\Inovice;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Dwij\Laraadmin\Models\Module;
use App\Models\Glasses_Lense;
use App\Models\Sunglass;
use App\Models\Optic;
use App\Models\Lens;
use App\Models\Invoice;
class InvoiceController extends Controller
{
    public function create()
    {
        $user = \Auth::user();
        $module = Module::get('Clients');
        $payment_methods = \App\Models\Payment_Method::pluck('name', 'id');
        $clients = \App\Models\Client::all();
        return view('la.invoice.create', compact('module', 'user', 'payment_methods', 'clients'));
    }
    public function getItems(Request $request)
    {
        // by any chance if any developer read this in the future, i swear to god i know how to use oop principles, the project scale wasn't that big at the time. sorry for what you gonna see.
        $type = $request->type;
        switch ($type) {
            case 'sun_glasses':
                $items = Sunglass::all();
                $item_type = 'Sun Glasses';
                break;
            case 'optics':
                $items = Optic::all();
                $item_type = 'Optics';
                break;
            case 'lenses':
                $items = Lens::all();
                $item_type = 'Contact Lense';
                break;
            case 'glass_lenses':
                $items = Glasses_Lense::all();
                $item_type = 'Glass Lense';
                break;
            default:
                $items = [];
            break;
        }
        return response()->json([
            'items' => $items,
            'item_type' => $item_type,
        ]);
    }
    public function store(Request $request)
    {
        return $request;
        // $request->validate([]);
        $invoice = Invoice::create([
            'paid' => $request->paid,
            'total_price' => $request->total_price,
            'notes' => 'testing',
            'date' => $request->date,
            'client_id' => $request->client_id,
            'employee_id' => \Auth::user()->id,
            'branch_id' => $user->branch->first()->id,
            'insurance_company_id' => '1',
            'payment_method_id' => '1',
            'invoice_type_id' => '1',
            'invoice_code' => '1',
        ]);
        
    }
}
