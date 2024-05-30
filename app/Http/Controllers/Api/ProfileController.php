<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController as BaseController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Profile;
use App\Models\ProfileInterests;
use App\Models\User;
use Auth;

class ProfileController extends BaseController
{
    public function index()
    {
        $userp = Profile::with('interests','community_list')->where('user_id',Auth::user()->id)->get();
        return response()->json(['success'=>true,'message'=>'Profiles Lists','profile_info'=>$userp],200);
    }
    
    public function member_list()
    {
        $userp = User::get();
        return response()->json(['success'=>true,'message'=>'Members Lists','profile_info'=>$userp],200);
    }

    public function login(Request $request)
    {
		//return Auth::user();
		
        $validatorss = Validator::make($request->all(), [
            //'name' => 'required|exists:profiles',
        ]);  
        if($validatorss->fails()){
            return $this->sendError($validatorss->errors()->first(),500);
        }
        $userp = Profile::with('interests','community_list','community_list.community_info')->find($request->id);
		
        if(!$userp)
        {
            return response()->json(['error' => 'Unauthorised User'], 401);
        }
        if($userp->privacy == 'private')
        {
            // $userp = Profile::where('name',$request->name)->first();
            $validators = Validator::make($request->all(), [
                'passcode' => 'required|exists:profiles',
            ]);  
            if($validators->fails())
            {
				return $this->sendError($validators->errors()->first(),500);
            }

            //$userp = Profile::firstWhere('name',$request->name);
			//return $userp->passcode;
            if($userp->passcode == $request->passcode){
                $userp->is_logged_in = 'true';
                $userp->save();
$userp['user_info'] = User::withCount('profiles as total_profile')->find(Auth::user()->id);
                return response()->json(['success' => true, 'message' => 'Profile Logged In successfully', 'profile_info' => $userp]);
            } else {
                return response()->json(['error' => 'Unauthorised User'], 401);
            }
        }
        else
        {
            $userp->is_logged_in = 'true';
            $userp->save();

            return response()->json(['success' => true, 'message' => 'Profile Logged In successfully', 'profile_info' => $userp]);
        }
    }

    public function store(Request $request)
    { 
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|unique:profiles',
            'description' => 'string',
            'type' => 'required',			
            'privacy' => 'required',			
            'photo' => 'image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
        ]);      
        
        if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }
        
        $profilename = null;
        if($request->hasFile('photo')) 
        {
            $file = request()->file('photo');
            $fileName = md5($file->getClientOriginalName() . time()) .'.' . $file->getClientOriginalExtension();
            $file->move('uploads/user/profiles/', $fileName);  
            $profilename = 'uploads/user/profiles/'.$fileName;
        }

        $input = $request->all();
        $input['photo'] = $profilename;
		if($request->passcode)
        {
            $input['passcode'] = $input['passcode'];
        }
        $input['user_id'] = Auth::user()->id;
        $userp = Profile::create($input);

        
        //$input['interests'] = json_decode($request->interests);
        // $token =  $userp->createToken('user_profile_hatch_social')->plainTextToken;
		
		
		
		
        //$usersp = Profile::with('user_info')->where(['id' => $userp->id, 'name' => $request->name])->first();
		$usersp = Profile::with('interests','community_list','community_list.community_info','user_info')->where(['id' => $userp->id, 'name' => $request->name])->first();
		$usersp['user_infos'] = User::withCount('profiles as total_profile')->find(Auth::user()->id);
		
        return response()->json(['success'=>true,'message'=>'Profile Create Successfully' ,'profile_info'=>$usersp]);
    }

    public function search(Request $request)
    {
        $query = $request->input('search');
        // return Auth::user()->id;
        $profile = Profile::find($request->profile_id);
        $users = Profile::where('name', 'like', "%$query%")
                    ->where('type',$profile->type)
                    ->where('type',$profile->type)
                    ->where('id', '!=', $profile->id)
                     ->get();

        return response()->json(['success'=>true,'message'=>'Profile Lists' ,'profile_info'=>$users]);
        // return response()->json(['users' => $users]);
    }

    public function show($id)
    {
        
    }

    public function edit($id)
    {
        
    }

    public function interest(Request $request)
	{
		//return 'sda';
		$profile = Profile::find($request->profile_id);
		if(isset($request->name))
		{
			//return 'saad';
			$profile->interests = $request->name ? json_encode($request->name) : json_encode($profile->interests);
		}
			$profile->save();
			// $profile = User::with('profiles')->find(Auth::user()->id);
		return response()->json(['success' => true, 'message' => 'Interest Selected successfully', 'info' => $profile]);
	}

    public function subscribe(Request $request)
	{
		$profile = Profile::find($request->id);
		if(isset($request->bubble))
		{
			$profile->bubbles = $request->bubble ? json_encode($request->bubble) : json_encode($profile->bubble);
            foreach($request->bubbles as $row)
            {
                CommunityInterests::create([
                    'community_id' => $request->id,
                    'interest_id' => $row
                ]);
            }
		}
		if(isset($request->interests))
		{
            foreach($request->interests as $row)
            {

        
                ProfileInterests::create([
                    'profile_id' => $request->id,
                    'interest_id' => $row,
                    // 'name' => $row['name'],
                    // 'image' => $row['image'],
                ]);
            }
            // $profile->interests = json_encode($request->interests);
			// $profile->bubbles = $request->bubble ? json_encode($request->bubble) : json_encode($profile->bubble);
		}
		if(isset($request->feed))
		{
			$profile->feed = $request->feed ? json_encode($request->feed) : json_encode($profile->feed);
			$profile->save();
		}
			$profile = Profile::with('interests','community_list','community_list.community_info','user_info')->find($request->id);
		return response()->json(['success' => true, 'message' => 'Bubbles Selected successfully', 'profile_info' => $profile]);
	}

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'description' => 'string',
            'privacy' => 'required',			
            'photo' => 'image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
        ]);      
        
        if($validator->fails())
        {
            return $this->sendError($validator->errors()->first(),500);
        }
        
        
        $profilee = Profile::find($id);
        
        if($request->privacy =='private')
        {
            $profilee->passcode = $request->passcode;
        }
        $profilename = $profilee->photo;
        if($request->hasFile('photo')) 
        {
            $file = request()->file('photo');
            $fileName = md5($file->getClientOriginalName() . time()) .'.' . $file->getClientOriginalExtension();
            $file->move('uploads/user/profiles/', $fileName);  
            $profilename = 'uploads/user/profiles/'.$fileName;
        }

        $input = $request->all();
        $input['user_id'] = Auth::user()->id;
        
        $profilee->name = $request->name;
        $profilee->description = $request->description;
        $profilee->privacy = $request->privacy;
        $profilee->photo = $profilename;
        $profilee->save();


		$usersp = Profile::with('interests','community_list','community_list.community_info','user_info')->find($id);
		$usersp['user_infos'] = User::withCount('profiles as total_profile')->find(Auth::user()->id);
		
        return response()->json(['success'=>true,'message'=>'Profile Update Successfully' ,'profile_info'=>$usersp]);
    }
    
    
    public function change_passcode(Request $request,$id)
    {
        try{
            $validator = Validator::make($request->all(),[
                'current_passcode' => 'required',
                'new_passcode' => 'required|same:confirm_passcode',
                'confirm_passcode' => 'required',
            ]);
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());       
            }
            $profile = Profile::find($id);
            if ($request->current_passcode != $profile->passcode) {
                return $this->sendError('Current Passcode is Incorrect');
            }
            $profile->passcode = $request->new_passcode;
            $profile->save();

            $usersp = Profile::with('interests','community_list','community_list.community_info','user_info')->find($id);
		    $usersp['user_infos'] = User::withCount('profiles as total_profile')->find(Auth::user()->id);
            return response()->json(['success'=>true,'message'=>'Password Passcode Changed','profile_info'=>$usersp]);
        }
        catch(\Eception $e){
           return $this->sendError($e->getMessage());    
        }
    }   

    public function destroy($id)
    {
		$user = Profile::find($id);
        $user->delete();
        return response()->json(['success'=>true,'message'=>'Profile Deleted Successfully']);
    }
}
