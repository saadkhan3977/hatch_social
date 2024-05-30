<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProfileInterests extends Model
{
    use HasFactory;
    protected $guarded = [];
	
	public function interests()
	{
		return $this->hasOne(Interests::class,'id','interest_id');
	}
	
	public function interest_detail()
	{
		return $this->hasOne(Interests::class,'id','interest_id');
	}
}
