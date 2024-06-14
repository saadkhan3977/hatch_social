<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FeedPost extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function total_likes()
    {
        return $this->hasMany(\App\Models\FeedPostLike::class ,'post_id','id');
    }

    public function comments()
    {
        return $this->hasMany(\App\Models\FeedComment::class ,'post_id','id');
    }

    public function postHashtags()
    {
        return $this->belongsTo(\App\Models\PostHashtags::class ,'id','post_id');
    }

    public function my_like()
    {
        return $this->hasOne(\App\Models\FeedPostLike::class ,'post_id','id');
    }

    public function profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class ,'id','profile_id');
    }
}
