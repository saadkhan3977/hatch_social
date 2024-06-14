<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Feed extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function community_owner()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }
    
    public function follow()
    {
        return $this->hasOne(\App\Models\FeedFollow::class,'feed_id','id');
    }
    
    public function hashtags()
    {
        return $this->hasMany(\App\Models\Hashtags::class,'feed_id','id');
    }
    
    public function profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }
    
    public function posts()
    {
        return $this->hasManyThrough(FeedPost::class, PostHashtags::class, 'feed_id', 'id', 'id', 'post_id');
    }
    
    public function postss()
    {
        return $this->hasManyThrough(FeedPost::class, PostHashtags::class, 'feed_id', 'id', 'id', 'post_id');
    }
}
