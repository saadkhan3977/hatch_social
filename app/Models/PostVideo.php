<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostVideo extends Model
{
    use HasFactory;
    protected $guarded = [];
	
	public function like()
	{
		$profileId = request()->input('profile_id'); // Assuming you are using Laravel's request helper
	   return $this->hasOne(\App\Models\PostLike::class, 'post_id', 'id')->where('profile_id', request()->input('profile_id'));
	}
    
    public function total_likes()
    {
        return $this->hasMany(\App\Models\PostLike::class ,'post_id','id');
    }
    
    public function comments()
    {
        return $this->hasMany(\App\Models\Comment::class ,'post_id','id');
    }
    
    public function my_like()
	{
		$profileId = request()->input('profile_id'); // Assuming you are using Laravel's request helper
	   return $this->hasOne(\App\Models\PostLike::class, 'post_id', 'id')->where('profile_id', request()->input('profile_id'));
	}
}
