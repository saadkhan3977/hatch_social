<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommunityTeam extends Model
{
    use HasFactory;
    protected $table = 'community_teams';
    protected $guarded = [];

    public function profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }
    
    public function invite_profile_info()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','invite_profile_id');
    }

    public function community_info()
    {
        return $this->hasOne(\App\Models\Community::class,'id','community_id');
    }
    
    public function community_list()
    {
        return $this->hasOne(\App\Models\Community::class,'id','community_id');
    }

    public function community_owner()
    {
        return $this->hasOne(\App\Models\Profile::class,'id','profile_id');
    }
}
