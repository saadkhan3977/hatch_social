<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;
    protected $guarded = [];
    
    public function images()
    {
        return $this->hasMany(\App\Models\EventImage::class,'event_id','id');
    }
    
    public function user_info()
    {
        return $this->hasOne(\App\Models\User::class,'id','user_id');
    }
    
    public function join()
    {
        return $this->hasOne(\App\Models\EventJoin::class,'event_id','id');
    }
}
