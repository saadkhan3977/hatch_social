<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Api\BaseController as BaseController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Bubble;
use App\Models\BubbleTeam;
use App\Models\Profile;
use Auth;

class BubbleController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try{
            $bubble = Bubble::with('profile_info')->get();
            return response()->json(['success'=>true,'message'=>'Bubble Lists' ,'bubble_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function bubble_member_pending_list($id)
    {
        try{
            $bubble = BubbleTeam::with('profile_info','bubble_info')->where('bubble_id',$id)->where('status','request')->get();
            return response()->json(['success'=>true,'message'=>'Lists' ,'request_info'=>$bubble]);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    public function bubble_member_pending_update(Request $request,$id)
    {
        try
        {
            if($request->status == 'reject')
            {
                $bubble = BubbleTeam::find($id);
                $bubble->delete();
            }
            else
            {
                $bubble = BubbleTeam::find($id);
                $bubble->status = $request->status;
                $bubble->save();
            }
            return response()->json(['success'=>true,'message'=>'Request Update Sucessfully']);
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
    public function member_add(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'bubble_id' => 'required|string|exists:bubbles,id',
                'profile_id' => 'required|string|exists:users,id',
                'status' => 'required|string',
            ]);      
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            
            $input = $request->all();
            $input['bubble_id'] = $request->bubble_id;
            $input['bubble_id'] = $request->bubble_id;
            $input['status'] = $request->status;
            $input['role'] = 'member';

            $bubble = BubbleTeam::create($input);
            
            //$usersp = Profile::with('user_info','bubble_info')->where(['id' => $request->profile_id])->first();
            return response()->json(['success'=>true,'message'=>'Request Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string',
                'type' => 'required',			
                'profile_id' => 'required',			
                'category' => 'required',			
                'photo' => 'image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
            ]);      
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            //return json_encode($request->category);
            $profile = null;
            if($request->hasFile('photo')) 
            {
                $file = request()->file('photo');
                $fileName = md5($file->getClientOriginalName() . time()) . $file->getClientOriginalExtension();
                $file->move('uploads/user/bubbles/', $fileName);  
                $profile = asset('uploads/user/bubbles/'.$fileName);
            }
    
            $input = $request->all();
            $input['photo'] = $profile;
            $input['profile_id'] = $request->profile_id;
            $input['category'] = json_encode($request->category);

            $bubble = Bubble::create($input);

            $inputs['bubble_id'] = $bubble->id;
            $inputs['profile_id'] = $request->profile_id;//Auth::user()->id;
            $inputs['status'] = 'approved';
            $inputs['role'] = 'admin';
            BubbleTeam::create($inputs);
            
            $u = Profile::find($request->profile_id);
            $u->bubbles = ($u->bubbles == '0' ) ? '1' : '1';
            $u->save();
            
            
            $usersp = Profile::with('user_info','bubble_info')->where(['id' => $request->profile_id])->first();
            return response()->json(['success'=>true,'message'=>'Bubble Create Successfully' ,'profile_info'=>$usersp]);
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
    public function show($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
