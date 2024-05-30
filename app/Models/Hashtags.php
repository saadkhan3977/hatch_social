<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hashtags extends Model
{
    use HasFactory;
    protected $guarded = [];
    
    public function feed_info()
    {
        return $this->hasOne(\App\Models\Feed::class,'id','feed_id');
    }
}
