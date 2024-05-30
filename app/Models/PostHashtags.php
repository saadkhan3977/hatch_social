<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PostHashtags extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function posts()
    {
        return $this->hasMany(Post::class,'id','post_id');
    }
    
    public function post()
    {
        return $this->hasOne(Post::class,'id','post_id');
    }
    
    public function feed()
    {
        return $this->hasMany(Feed::class,'id','feed_id');
    }
    
    public function byfeed()
    {
        return $this->hasOne(Feed::class,'id','feed_id');
    }
    
    public function post_hashtags()
    {
        return $this->hasMany(Hashtags::class,'id','hashtag_id');
    }
}
