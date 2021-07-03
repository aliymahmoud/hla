<?php
/**
 * Model genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Glasses_Lense extends Model
{
    use SoftDeletes;
	
	protected $table = 'glasses_lenses';
	
	protected $hidden = [
        
    ];

	protected $guarded = [];

	protected $dates = ['deleted_at'];

	protected static function booted()
	{
		static::created(function($model){
			Item::create([
				'item_id' => $model->id,
				'type' => 'App\Models\Glasses_lense',
				'code' => $model->code,
			]);
		});
	}
}
