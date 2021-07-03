<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;
    protected $guarded = [];


    public function items()
    {
        return $this->hasMany(Invoice_Item::class, 'invoice_id');
    }
    
    public function client()
    {
        return $this->belongsTo(Client::class, 'client_id');
    }

    public function payment_method()
    {
        return $this->belongsTo(Payment_Method::class, 'payment_method_id');
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }

    public function insurance_company()
    {
        return $this->belongsTo(Insurance_Company::class, 'insurance_company_id');
    }

    public function refund()
    {
        return $this->hasMany(Invoice::class, 'code', 'invoice_code');
    }
}
