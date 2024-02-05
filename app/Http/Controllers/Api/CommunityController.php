<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Api\BaseController as BaseController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Community;
use App\Models\CommunityTeam;
use App\Models\Profile;
use App\Models\CommunityInterests;
use App\Models\CommunityKeywords;
use Auth;
use DB;

class CommunityController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $userp = Community::where('profile_id',$id)->get();
        return response()->json(['success'=>true,'message'=>'Community Lists','community_info'=>$userp]);
    }

    public function community_member_my_pending_list($id)
    {
        try{
            $bubble = CommunityTeam::with('profile_info','community_info')->where('profile_id',$id)->where('status','request')->orwhere('status','invite')->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'member_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    public function community_member_pending_list($id)
    {
        try{
            $bubble = CommunityTeam::with('profile_info','community_info')->where('community_id',$id)->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'member_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function community_member_list($id)
    {
        try{
            $bubble = CommunityTeam::with('profile_info','community_info')->where('community_id',$id)->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'member_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function community_member_pending_update(Request $request,$id)
    {
        try
        {
			if($request->status == 'admin')
            {
                $bubble = CommunityTeam::find($id);
                $bubble->role = 'admin';
				$bubble->save();
                return response()->json(['success'=>true,'message'=>'Role Assign Sucessfully']);
            }
			
			if($request->status == 'moderator')
            {
                $bubble = CommunityTeam::find($id);
                $bubble->role = 'moderator';
				$bubble->save();
                return response()->json(['success'=>true,'message'=>'Role Assign Sucessfully']);
            }
			
			if($request->status == 'team')
            {
                $bubble = CommunityTeam::find($id);
                $bubble->role = 'team';
				$bubble->save();
                return response()->json(['success'=>true,'message'=>'Role Assign Sucessfully']);
            }
			
			if($request->status == 'member')
            {
                $bubble = CommunityTeam::find($id);
                $bubble->role = 'member';
				$bubble->save();
                return response()->json(['success'=>true,'message'=>'Role Assign Sucessfully']);
            }
            if($request->status == 'reject')
            {
                $bubble = CommunityTeam::find($id);
                $bubble->delete();
                return response()->json(['success'=>true,'message'=>'Request Delete Sucessfully']);
            }
            else
            {
                $bubble = CommunityTeam::find($id);
                $bubble->status = ($request->status == 'blocked') ? 'blocked' : 'follow';
                $bubble->save();
                if($request->status == 'blocked')
                {
                    return response()->json(['success'=>true,'message'=>'Request Blocked Sucessfully']);

                }
                return response()->json(['success'=>true,'message'=>'You Have Accepted Joining Request']);
            }
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function multi_request(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'community_id' => 'required',
                'profile_id' => 'required|exists:profiles,id',
                'status' => 'required|string',
            ]);      
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            
            foreach($request->community_id as $id => $row)
            {
                $community = Community::find($row);
                if($community->privacy == 'No')
                {
                    $input['status'] = $request->status;
                }
                else
                {
                    // $input['status'] = ($request->status == 'accept') ? 'accept' : $request->status;
                    $input['status'] = 'follow';
                }
                $input['community_id'] = $row;
                $input['profile_id'] = $request->profile_id;
                $input['role'] = 'member';

                $communityt = CommunityTeam::where(['community_id'=>$row,'profile_id' => $request->profile_id])->first();
                if($communityt)
                {
                    $communityt->delete();
                }
                else
                {
                    $bubble = CommunityTeam::create($input);
                }
            }
            //$usersp = Profile::with('user_info','bubble_info')->where(['id' => $request->profile_id])->first();
            return response()->json(['success'=>true,'message'=>'Request Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }


    public function member_add(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'community_id' => 'required',
                'profile_id' => 'required',
                'status' => 'required',
            ]);      
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
             
            $community = Community::find($request->community_id);
            
            $input = $request->all();
            $input['community_id'] = $request->community_id;
            $input['invite_profile_id'] = $request->invite_profile_id;
            if(strtolower($community->privacy) == 'yes')
            {
                $input['status'] = $request->status;
            }
            else
            {
                    // $input['status'] = ($request->status == 'accept') ? 'accept' : $request->status;
                    $input['status'] = 'follow';
            }
            $input['role'] = 'member';
            foreach($request->profile_id as $key => $pid)
            {
                // return $pid;
                $communityt = CommunityTeam::where(['community_id'=>$request->community_id,'profile_id' => $pid])->first();
                if($communityt)
                {
                    $communityt->delete();
                }
                else
                {
                    $input['profile_id'] = $pid;
                    $bubble = CommunityTeam::create($input);
                }

            }
             
             //$usersp = Profile::with('user_info','bubble_info')->where(['id' => $request->profile_id])->first();
            return response()->json(['success'=>true,'message'=>'Request Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
	
	public function member_admin(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'community_id' => 'required',
                'profile_id' => 'required',
                'role' => 'required',
            ]);      
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }

            $communityt = CommunityTeam::where(['community_id'=>$request->community_id,'profile_id' => $request->profile_id])->first();
            $communityt->role = $request->role;
            $communityt->save(); 

            return response()->json(['success'=>true,'message'=>'Request Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
	
    public function store(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'title' => 'required|string',
                //'approval_admittance' => 'required',			
                'approval_post' => 'required',			
                'membership_cost' => 'required',			
                'privacy' => 'required',			
                //'post_privacy' => 'required',			
                //'remove_content' => 'required',			
                //'remove_comments' => 'required',			
                //'invite_members' => 'required',						
                'profile_id' => 'required',						
                'image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
            ]);      

            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            
            $profile = null;
            if($request->hasFile('image')) 
            {
                $file = request()->file('image');
                $fileName = md5($file->getClientOriginalName() . time()) .'.'. $file->getClientOriginalExtension();
                $file->move('uploads/community/', $fileName);  
                $profile = asset('uploads/community/'.$fileName);
            }
    
			
            $input = $request->all();
            $input = $request->except('keywords');
            $input['image'] = 'uploads/community/'.$fileName;//$profile;
            $input['profile_id'] = $request->profile_id;
			//$input['category'] = json_encode($request->category);
            //print_r($request->all());die;
			$bubble = Community::create($input);

            //foreach($request->category as $row)
            //{
            //    CommunityInterests::create([
            //        'community_id' => $bubble->id,
            //        'interest_id' => $row,
            //        'profile_id' => $request->profile_id
            //    ]);
            //}
			
			foreach($request->keywords as $row)
            {
                CommunityKeywords::create([
                    'community_id' => $bubble->id,
                    'name' => $row,
                    'profile_id' => $request->profile_id
                ]);
            }

            CommunityTeam::create([
                'community_id' => $bubble->id,
                'profile_id' => $request->profile_id,
                'role' => 'owner',
                'status' => 'follow',
            ]);
            
            $usersp = Community::where(['profile_id' => $request->profile_id])->get();
            return response()->json(['success'=>true,'message'=>'Community Create Successfully' ,'community_info'=>$usersp]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request,$id)
    {
        try{
			$profileInterests = DB::table('profile_interests')
				->where('profile_id', $id)
				->pluck('interest_id');

			
			$matchingCommunities = DB::table('community_interests')
				->select('community_id')
				->whereIn('interest_id', $profileInterests)
				->groupBy('community_id')
				->get();

			
			$communitiesd = Community::with(['follow' => function ($query) use ($id) {
        		$query->where('profile_id', $id);
    		}, 'community_owner'])
				->whereIn('id', $matchingCommunities->pluck('community_id'))
				->orwhere('profile_id', $id)
				->get();
			
			//$profile = Profile::with('community_info')->find($id);
			//$matchprofile = Profile::with('community_info')->where('type',$profile->type)->get();
			//$communities['community_info'] = $profile;
			//$communities['community_info'] = $matchprofile;
			
			$profile = Profile::with('community_list')->find($id);
			$matchprofile = Profile::where('type',$profile->type)->pluck('id');
		 	$matchingCommunities = Community::with(['follow' => function ($query) use ($id) {
        		$query->where('profile_id', $id);
    		}, 'community_owner'])->whereIn('profile_id', $matchprofile)->get();
			
            return response()->json(['success'=>true,'message'=>'Community Lists','community_info'=>$matchingCommunities],200);

        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function my_communities(Request $request,$id)
    {
        try{
            
            $teams = CommunityTeam::with('community_info','community_info.community_owner')->where('profile_id',$id)->where('status','follow')->orwhere('status','admin')->get();
            // $filteredCommunities = [];
            // foreach($teams as $row)
            // {
            //     $filteredCommunities[] = Community::with('community_owner')->find($row->community_id);
            // }
            return response()->json(['success'=>true,'message'=>'Community Lists','community'=>$teams],200);

        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function detail(Request $request,$id)
    {
        try{
            $community = Community::withCount('total_posts')->find($id);
            $community['total_members'] = CommunityTeam::where(['community_id'=>$community->id,'status'=>'follow'])->count();
            $community['follow'] = CommunityTeam::where(['community_id'=>$community->id,'profile_id'=>$request->profile_id])->first();
            return response()->json(['success'=>true,'message'=>'Community Detail' ,'community_info'=>$community]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'title' => 'required|string',
                //'approval_admittance' => 'required',			
                'approval_post' => 'required',			
                'membership_cost' => 'required',			
                'privacy' => 'required',			
                //'post_privacy' => 'required',			
                //'remove_content' => 'required',			
                //'remove_comments' => 'required',			
                //'invite_members' => 'required',						
                'profile_id' => 'required',						
                //'image' => 'required|image|mimes:jpeg,png,jpg,bmp,gif,svg',
            ]);      
        //    return $request->all(); 
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            $communitys = Community::find($id); 

            $profile = $communitys->image;
            if($request->hasFile('image')) 
            {
                $file = request()->file('image');
                $fileName = md5($file->getClientOriginalName() . time()) .'.'. $file->getClientOriginalExtension();
                $file->move('uploads/community/', $fileName);  
                $profile = asset('uploads/community/'.$fileName);
            }
    
            $input = $request->all();
            $input['image'] = $profile;
            $input['profile_id'] = $request->profile_id;
			
			//$input['category'] = json_encode($request->category);

            
            $bubble = $communitys->update($input);
            
            //$usersp = Community::where(['profile_id' => Auth::user()->id])->get();
            return response()->json(['success'=>true,'message'=>'Community Update Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function community_member_remove($id)
    {
        try
        {
            $community = CommunityTeam::find($id);
            $community->delete();
            return response()->json(['success'=>true,'message'=>'Member Removed Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }

    }
    
    public function destroy($id)
    {
        //
    }
}
