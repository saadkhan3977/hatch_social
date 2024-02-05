<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Profile extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $guarded = [];

	public function user_info()
	{
		return $this->hasMany(User::class,'id','user_id');
	}

	public function interests()
	{
		return $this->hasMany(ProfileInterests::class,'profile_id','id');
	}

    public function bubble_info()
	{
		return $this->hasMany(Bubble::class,'profile_id','id');
	}
    public function total_post()
	{
		return $this->hasMany(Post::class,'profile_id','id');
	}

	public function community_list()
    {
        return $this->hasMany(\App\Models\CommunityTeam::class ,'profile_id','id');
    }

	public function community_info()
    {
        return $this->hasMany(\App\Models\Community::class ,'id','community_id');
    }

    public function subscribe_info()
	{
		return $this->hasMany(Subscribe::class,'profile_id','id');
	}
}
