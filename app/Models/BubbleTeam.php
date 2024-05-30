<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BubbleTeam extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }

    public function bubble_info()
    {
        return $this->hasOne(\App\Models\Bubble::class,'id','bubble_id');
    }
}
