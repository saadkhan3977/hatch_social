<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Api\BaseController as BaseController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Community;
use App\Models\CommunityTeam;
use App\Models\Interests;
use App\Models\FeedInterest;
use App\Models\Profile;
use App\Models\Feed;
use App\Models\Post;
use App\Models\CommunityInterests;
use App\Models\ProfileInterests;
use App\Models\CommunityKeywords;
use App\Models\CommuinityCheckIn;
use Auth;
use DB;

class CommunityController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function community_out(Request $request , $id)
    {
        try
        {
            $currenttime = \Carbon\Carbon::now();

            $timein = CommuinityCheckIn::where('profile_id',$request->profile_id)->where('community_id',$id)->first();
            // $timein->timeout = $mytime->toDateTimeString(),

            $startDateTime = $timein->time_in;
            $endDateTime = $currenttime->toDateTimeString();

            // Parse the date-time strings into Carbon instances
            $start = \Carbon\Carbon::parse($startDateTime);
            $end = \Carbon\Carbon::parse($endDateTime);
            
            $totalMinutes = $start->diffInMinutes($end);
            $timein->time_in = null;
            $timein->total_min =  $timein->total_min + $totalMinutes;
            $timein->save();
        }
        catch(\Eception $e)
        {
            return $this->sendError($e->getMessage());    
        }
    }
     public function home_multi_community($id)
     {
        try
        {
            $teamo = CommunityTeam::where('role', 'owner')->where('profile_id', $id)->limit(2)->select('community_id')->pluck('community_id'); // Use pluck to get an array of community IDs
            // Get the communities using the fetched IDs
            $communityso = Community::whereIn('id', $teamo)->get();
            
            // Add the 'type' => 'owner' key to each community
            $communityso->each(function ($community) {
                $community->type = 'owner';
            });
            
            $teama = CommunityTeam::where('role', 'admin')->where('profile_id', $id)->limit(2)->select('community_id')->pluck('community_id'); // Use pluck to get an array of community IDs
            $communitysa = Community::whereIn('id', $teama)->get();
            // Add the 'type' => 'owner' key to each community
            $communitysa->each(function ($community) {
                $community->type = 'admin';
            });
            
            // $teamm = CommunityTeam::where('role','moderator')->where('profile_id',$id)->limit(2)->select('community_id')->get();
            $teamm = CommunityTeam::where('role', 'moderator')->where('profile_id', $id)->limit(2)->select('community_id')->pluck('community_id'); // Use pluck to get an array of community IDs
            $communitysm = Community::whereIn('id',$teamm)->get();
            // Add the 'type' => 'owner' key to each community
            $communitysm->each(function ($community) {
                $community->type = 'moderator';
            });

            
            // $communityt = CommuinityCheckIn::where('profile_id',$id)->orderBy('total_min', 'desc')->limit(2)->select('community_id')->get();
            $communityt = CommuinityCheckIn::where('profile_id',$id)->orderBy('total_min', 'desc')->limit(2)->select('community_id')->pluck('community_id'); // Use pluck to get an array of community IDs
            $communityst = Community::whereIn('id',$communityt)->get();
            $communityst->each(function ($community) {
                $community->type = 'spend time';
            });

            
            $matchingCommunities = array_merge($communityso->toArray(),$communitysa->toArray(),$communitysm->toArray(),$communityst->toArray());

            return $this->sendResponse('Community List', $matchingCommunities);    
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
     }
    public function indexx(Request $request,$id)
    {
        try{
            // return 'as';
// 			$profileInterests = DB::table('profile_interests')
				// ->where('profile_id', $id)
				// ->pluck('interest_id');
			$profileInterests =	ProfileInterests::with('interests')->where('profile_id',$id)->get()->pluck('interest_id');
            if($profileInterests == [])
            {
                
                return response()->json(['success'=>true,'message'=>'Community Lists', 'data' => $profileInterests],200);
            }
            else
            {
               
			
			 $matchingCommunities = DB::table('community_interests')
				->select('community_id')
				->whereIn('interest_id', $profileInterests)
				->groupBy('community_id')
				->get();

                if($matchingCommunities == [])
                {
                    return response()->json(['success'=>true,'message'=>'Community Lists', 'data' => $profileInterests],200);
                }
                else
                {
        			$communitiesd = Community::with(['follow' => function ($query) use ($id) {
                		$query->where('profile_id', $id);
            		}, 'community_owner'])
        				->whereIn('id', $matchingCommunities->pluck('community_id'))
        				->orwhere('profile_id', $id)
        				->get();
                    return response()->json(['success'=>true,'message'=>'Community Lists', 'data' => $communitiesd],200);
                }
    			
			
			
		
		
// 			$profile = Profile::with('community_list')->find($id);
            // $matchprofile = Profile::where('type',$profile->type)->pluck('id');
            // $matchingCommunities = Community::with(['follow' => function ($query) use ($id) {
                // $query->where('profile_id', $id);
    // 		}, 'community_owner'])->whereIn('profile_id', $matchprofile)->get();
            // $feed =  Feed::with('community_owner')->where('profile_id',$id)->get();
			
            // $matchingCommunities = array_merge($matchingCommunitiess->toArray(),$feed->toArray());
            return response()->json(['success'=>true,'message'=>'Community Lists', 'data' => $matchingCommunities],200);    
            }


        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
        
        // $userp = Community::where('profile_id',$id)->get();
        // return response()->json(['success'=>true,'message'=>'Community Lists','community_info'=>$userp]);
    }
    
    public function community_interest(Request $request,$id)
    {
        try
        {
            // return $request->profile_id;
            $profileId = $request->profile_id;
            // Communties Interest By Interest ID
			$matchingCommunities = CommunityInterests::where('interest_id', $id)->select('community_id')
				->groupBy('community_id')
				->get();
			

            // Communties By $matchingCommunities ID
    		$data['community_list'] = Community::with(['follow' => function ($query) use ($profileId) {
        		$query->where('profile_id', $profileId);
    		}, 'community_owner'])
			->whereIn('id', $matchingCommunities->pluck('community_id'))
			->orwhere('profile_id', $profileId)
			->get();
        		
            // Feed Interest By Interest ID
			$matchingFeeds = FeedInterest::where('interest_id', $id)->select('feed_id')
			->groupBy('feed_id')
			->get();
			
            // Feed By $matchingFeeds ID
			$data['feeds_list'] = Feed::with('profile_info','hashtags','posts','posts.total_likes','posts.comments','posts.comments.profile_info','posts.post_images','posts.post_videos','posts.profile_info','follow')
			        ->whereIn('id',$matchingFeeds->pluck('feed_id'))
			        ->get();
                

            // Communities By Role Member on profile ID
 			$popular_community = CommunityTeam::with('community_info')->where('profile_id',$request->profile_id)->where('role','member')->get()->pluck('community_id');
            $data['popular_community'] = Community::with(['follow' => function ($query) use ($profileId) {
            		$query->where('profile_id', $profileId);
        		}, 'community_owner'])
    			->whereIn('id', $popular_community)
    			->orwhere('profile_id', $profileId)
    			->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'data'=>$data]);
		

        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
        
        // $userp = Community::where('profile_id',$id)->get();
        // return response()->json(['success'=>true,'message'=>'Community Lists','community_info'=>$userp]);
    }

    public function community_member_my_pending_list($id)
    {
        try{
            $bubble = CommunityTeam::with('invite_profile_info','community_list')->where('profile_id',$id)->whereNot('status','follow')->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'member_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    public function community_member_pending_list($id)
    {
        try{
            $bubble = CommunityTeam::with('profile_info','community_list')->where('community_id',$id)->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'member_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function community_member_list($id)
    {
        try{
            // $bubble = CommunityTeam::with('profile_info','community_info')->where('community_id',$id)->where('status','follow')->get();
            $bubble = CommunityTeam::with('profile_info','community_list')->where('community_id',$id)->get();
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
                if($community)
                {
                    if($community->privacy == 'No')
                    {
                        $input['status'] = $request->status;
                    }
                    else
                    {
    
                        // $input['status'] = ($request->status == 'accept') ? 'accept' : $request->status;
                        $input['status'] =  ($request->status == 'invite') ? 'invite' : 'follow';
                        // $input['status'] = 'follow';
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
                    $input['status'] =  ($request->status == 'invite') ? 'invite' : 'follow';
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
            // print_r($request->all());die;

            // print_r($request->interests[0]['name']);die;
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
            $input = $request->except(['keywords','interest']);
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
            
            // Community Interest
            if(isset($request->interest))
    		{
                $interest = Interests::find($request->interest);
    // 			$profile->bubbles = $request->bubble ? json_encode($request->bubble) : json_encode($profile->bubble);
                // foreach($request->interests as $key => $row)
                // {
                    // return $row['id'];
                    CommunityInterests::create([
                        'profile_id' => $request->profile_id,
                        'community_id' => $bubble->id,
                        'interest_id' => $interest->id,
                        'name' => $interest->name,
                    ]);
                // }
    		}
    		
    		
			
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
            return response()->json(['success'=>true,'message'=>'Community Create Successfully' ,'community_list'=>$usersp]);
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
            // return 'saad';
// 			$profileInterests = DB::table('profile_interests')
// 				->where('profile_id', $id)
// 				->pluck('interest_id');

			
// 			$matchingCommunities = DB::table('community_interests')
// 				->select('community_id')
// 				->whereIn('interest_id', $profileInterests)
// 				->groupBy('community_id')
// 				->get();

// // 			return $matchingCommunities;
// return			$communitiesd = Community::with(['follow' => function ($query) use ($id) {
//         		$query->where('profile_id', $id);
//     		}, 'community_owner'])
// 				->whereIn('id', $matchingCommunities->pluck('community_id'))
// 				->where('profile_id', $id)
// 				->get();
			
			
// 			$profile = Profile::with('community_list')->find($id);
//             $matchprofile = Profile::where('id', '!=' ,$id)->where('type',$profile->type)->pluck('id');
//             $matchingCommunitiess = Community::with(['follow' => function ($query) use ($id) {
//                 $query->where('profile_id', $id);
//     		}, 'community_owner'])->whereIn('profile_id', $matchprofile)->get();
//             $feed =  Feed::with('community_owner')->where('profile_id',$id)->get();
			
//             $matchingCommunities = array_merge($matchingCommunitiess->toArray(),$feed->toArray());
//             return response()->json(['success'=>true,'message'=>'Community Lists', 'data' => $matchingCommunities],200);




            $data['interests'] = ProfileInterests::with('interest_detail')->where('profile_id',$id)->get();
            $data['community_list'] = CommunityTeam::with('community_info','community_info.community_owner')->where('profile_id',$id)->where('role','moderator')->where('role','admin')->where('role','owner')->where('status','follow')->get();
            
            return response()->json(['success'=>true,'message'=>'Interests Lists', 'data' => $data],200);

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
            $mytime = \Carbon\Carbon::now();
// echo $mytime->toDateTimeString();die;
            $timein = CommuinityCheckIn::where('profile_id',$request->profile_id)->where('community_id',$id)->first();
            if($timein)
            {
                $timein->time_in = $mytime->toDateTimeString();
                $timein->save();
            }
            else
            {
                CommuinityCheckIn::create([
                    'community_id' => $id,
                    'profile_id' => $request->profile_id,
                    'time_in' => $mytime->toDateTimeString(),
                ]);
            }
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
            $input = $request->all();
            $filename = $communitys->image;
            if($request->hasFile('image')) 
            {
                $file = request()->file('image');
                $fileName = md5($file->getClientOriginalName() . time()) .'.'. $file->getClientOriginalExtension();
                $file->move('uploads/community/', $fileName);  
                $input['image'] = 'uploads/community/'.$fileName;
                //$profile = asset('uploads/community/'.$fileName);
            }
    
            
            
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
    
    public function search(Request $request)
    {
        $query = $request->input('search');
        $community = Community::withCount('total_posts','total_members','follow')->with('follow','profile_info')->where('title', 'like', "%$query%")->get();
        $feeds = Feed::with('profile_info','hashtags','posts','posts.total_likes','posts.comments','posts.comments.profile_info','posts.post_images','posts.post_videos','posts.profile_info','follow')->where('name', 'like', "%$query%")->get();

        $posts = Post::withCount('total_likes')
        ->with('my_like', 'comments','comments.profile_info', 'post_images', 'post_videos', 'community_list', 'community_list.profile_info', 'profile_info')
		->where('status', 'active')
        ->where('caption', 'like', "%$query%")
        ->get();

        return response()->json(['success'=>true,'message'=>'Lists' ,'community_list'=>$community,'feeds'=>$feeds,'posts'=>$posts]);
    }
    
    public function destroy($id)
    {
        $community = Community::where('id',$id)->delete();
        CommunityTeam::where('community_id',$id)->delete();
        CommuinityCheckIn::where('community_id',$id)->delete();
        CommunityInterests::where('community_id',$id)->delete();
        CommunityKeywords::where('community_id',$id)->delete();
        $posts = Post::where('community_id',$id)->get();
        
        foreach($posts as $post)
        {
            PostHashtags::where('post_id')->delete();
            $images = PostImage::where('post_id')->get();
            foreach($images as $image)
            {
                \File::delete('uploads/post/', $image->name);
                $image->delete();
            }
            PostLike::where('post_id')->delete();
            $videos = PostVideo::where('post_id')->get();
            
            foreach($videos as $video)
            {
                \File::delete('uploads/post/', $video->name);
                $video->delete();
            }
        }
        // return response()->json(['success'=>true,'barber_booking_list'=> $barberbooking],200);
    }
}
