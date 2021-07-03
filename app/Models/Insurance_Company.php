<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Insurance_Company extends Model
{
    use SoftDeletes;
	
	protected $table = 'insurance_companies';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];

	public function clients()
	{
		return $this->hasMany(Client::class);
	}

	public function invoices()
	{
		return $this->hasMany(Invoice::class);
	}
}
