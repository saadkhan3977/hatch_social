<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController as BaseController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\EventJoin;
use App\Models\EventImage;
use Validator;
use Auth;

class EventController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function event_join(Request $request)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'profile_id' => 'required|exists:profiles,id',
                'event_id' => 'required|exists:events,id',
            ]);  
            
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
           //return $request->all();

            $input['profile_id'] = $request->profile_id;
            $input['event_id'] = $request->event_id;
            $data = EventJoin::create($input);
            
            return response()->json(['success'=>true,'message'=>'Event Request Successfully']);
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
                'profile_id' => 'required',
                'community_id' => 'required',
                'title' => 'required|string',
                'description' => 'required',			
                'date' => 'required',			
                'time' => 'required',			
            ]);  
            
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
           //return $request->all();

            $input['profile_id'] = $request->profile_id;
            $input['community_id'] = $request->community_id;
            $input['title'] = $request->title;
            $input['description'] = $request->description;
            $input['date'] = $request->date;
            $input['time'] = $request->time;
            $data = Event::create($input);
            if ($request->hasFile('image')) {
                $uploadedFiles = $request->file('image');
                $profileUrls = [];
            
                foreach ($uploadedFiles as $file) {
                    $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                    $file->move('uploads/event/', $fileName);
                    $profileUrls = 'uploads/event/' . $fileName;

                    EventImage::create([
                        'event_id' => $data->id,
                        'name' => $profileUrls
                    ]);
                }
            }
            
            return response()->json(['success'=>true,'message'=>'Event Create Successfully']);
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
        $post = Event::with('images','user_info')->where('community_id',$id)->get();
        return response()->json(['success'=>true,'message'=>'Event Lists','event_info'=>$post],200);
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
