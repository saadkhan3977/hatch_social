<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommunityInterests extends Model
{
    protected $guarded = [];
    use HasFactory;

    public function interest()
    {
        return $this->belongsTo(Interests::class,'interest_id','id');
    }
}
