<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController as BaseController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\FeedPost;
use App\Models\FeedPostLike;
use App\Models\FeedPostImage;
use App\Models\Community;
use App\Models\PostHashtags;
use App\Models\FeedPostVideo;
use App\Models\Hashtags;

use Validator;
use Auth;

class FeedPostController extends BaseController
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
                'caption' => 'required|string',
                'profile_id' => 'required',		
				'video' => 'max:15000',
				'image' => 'max:15000',
            ]);  
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first(),500);
            }
           
            $input['profile_id'] = $request->profile_id;
            $input['caption'] = $request->caption;
            $input['type'] = $request->type;
            
            $data = FeedPost::create($input);
            if($request->type == 'photo')
            {
                if ($request->hasFile('file')) {
                    $uploadedFiles = $request->file('file');
                    $profileUrls = [];
                
                    foreach ($uploadedFiles as $file) {
                        $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                        $file->move('uploads/post/', $fileName);
                        $profileUrls = 'uploads/post/' . $fileName;
    
                        FeedPostImage::create([
                            'post_id' => $data->id,
                            'name' => $profileUrls
                        ]);
                    }
                }
            }
            else
            {
                if ($request->file('video')) {
                    $file = $request->file('file');
                    $VideoUrls = [];
                
                    // foreach ($uploadedVideoFiles as $file) {
                        $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                        $file->move('uploads/post/', $fileName);
                        $VideoUrls = 'uploads/post/' . $fileName;
    
                        FeedPostVideo::create([
                            'post_id' => $data->id,
                            'name' => $VideoUrls
                        ]);
                    // }
                }
            }
            
            foreach($request->hashtags as $hashtags)
            {
                $hashtagss = Hashtags::find($hashtags);
                if($hashtagss)
                {
                    PostHashtags::create([
                        'post_id' => $data->id,
                        'feed_id' =>$hashtagss->feed_id,
                        // 'comunity_id' => $request->community_id,
                        'hashtag_id' =>$hashtagss->id,
                        'profile_id' => $request->profile_id,
                    ]);
                }
            }

            return response()->json(['success'=>true,'message'=>'Post Create Successfully']);
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
