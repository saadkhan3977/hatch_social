<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function my_like()
	{
		$profileId = request()->input('profile_id'); // Assuming you are using Laravel's request helper
	   //print_r($profileId);die;
	   return $this->hasOne(\App\Models\PostLike::class, 'post_id', 'id')->where('profile_id', request()->input('profile_id'));
	}
    
    public function postHashtags()
    {
        return $this->belongsTo(\App\Models\PostHashtags::class ,'id','post_id');
    }
    
    public function total_likes()
    {
        return $this->hasMany(\App\Models\PostLike::class ,'post_id','id');
    }
    
    public function comments()
    {
        return $this->hasMany(\App\Models\Comment::class ,'post_id','id');
    }

    public function post_images()
    {
        return $this->hasMany(\App\Models\PostImage::class ,'post_id','id');
    }
    
    public function post_videos()
    {
        return $this->hasMany(\App\Models\PostVideo::class ,'post_id','id');
    }

    public function community_info()
    {
        return $this->hasOne(\App\Models\Community::class ,'id','community_id');
    }
    
    public function community_list()
    {
        return $this->hasOne(\App\Models\Community::class ,'id','community_id');
    }
    
    public function profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class ,'id','profile_id');
    }
    
    public function hashtags()
    {
        return $this->hasMany(\App\Models\PostHashtags::class,'post_id','id');
    }
    
    // public function hashtags()
    // {
    //     return $this->hasManyThrough(Hashtags::class, PostHashtags::class, 'hashtag_id', 'id', 'id', 'id');
    // }
    
    // public function my_like()
    // {
    //     return $this->hasOne(\App\Models\PostLike::class ,'id','post_id');
    // }
}
