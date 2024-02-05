<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Community extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'community';

    public function category()
    {
        return $this->hasMany(\App\Models\CommunityInterests::class,'community_id','id');
    }

    public function profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }

    public function community_owner()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }

    public function follow()
    {
        return $this->hasOne(\App\Models\CommunityTeam::class,'community_id','id');
    }
    public function total_members()
    {
        return $this->hasMany(CommunityTeam::class,'community_id','id');
    }

    public function total_posts()
    {
        return $this->hasMany(\App\Models\Post::class ,'community_id','id');
    }

}
