<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Profile;
use App\Models\Subscribe;
use App\Models\User;
use Auth;

class SubscribeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function store(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string',
                'type' => 'required',			
                'photo' => 'image|mimes:jpeg,png,jpg,bmp,gif,svg|max:2048',
            ]);      
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
            
            $profile = null;
            if($request->hasFile('photo')) 
            {
                $file = request()->file('photo');
                $fileName = md5($file->getClientOriginalName() . time()) . $file->getClientOriginalExtension();
                $file->move('uploads/user/bubbles/', $fileName);  
                $profile = 'uploads/user/bubbles/'.$fileName;
            }
    
            $input = $request->all();
            $input['photo'] = $profile;
            $input['profile_id'] = $request->profile_id;

            $bubble = Subscribe::create($input);
            
            $u = Profile::find($request->profile_id);
            $u->bubbles = ($u->bubbles == '0' ) ? '1' : '1';
            $u->save();
            
            
            $usersp = Profile::with('user_info','bubble_info','subscribe_info')->where(['id' => $request->profile_id])->first();
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
