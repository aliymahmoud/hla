<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Client extends Model
{
    use SoftDeletes;
	
	protected $table = 'clients';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];

	public function invoices()
	{
		return $this->hasMany(Invoice::class, 'invoice_id');
	}
	public function ic()
	{
		return $this->belongsTo(Insurance_Company::class, 'insurance_company_id');
	}
}
