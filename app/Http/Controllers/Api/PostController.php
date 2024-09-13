<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController as BaseController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\FeedPost;
use App\Models\FeedPostLike;
use App\Models\PostImage;
use App\Models\FeedPostImage;
use App\Models\Community;
use App\Models\Hashtags;
use App\Models\PostVideo;
use App\Models\FeedPostVideo;
use App\Models\PostLike;
use App\Models\PostHashtags;
use Validator;
use Auth;

class PostController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {
    //     $post = Post::with('likes','comments','post_images','post_videos','community_info','community_info.profile_info','user_info')->get();
    //     return response()->json(['success'=>true,'message'=>'Posts Lists','post_info'=>$post],200);
    // }

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

     public function like(Request $request)
     {
         try
         {
             $validator = Validator::make($request->all(), [
                 'post_id' => 'required|exists:posts,id',
                 'profile_id' => 'required',
             ]);  
             
             
             if($validator->fails())
             {
                 return $this->sendError($validator->errors()->first());
             }
 
            $input['profile_id'] = $request->profile_id;
            $input['post_id'] = $request->post_id;
            $data = PostLike::where(['profile_id'=>$request->profile_id,'post_id' => $request->post_id])->first();
            if($data)
            {
                $data->delete();
                return response()->json(['success'=>true,'message'=>'Post Dislike Successfully']);
            }
            else
            {
                PostLike::create($input);
                return response()->json(['success'=>true,'message'=>'Post like Successfully']);
            }
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }

    
    public function feed_post_like(Request $request)
     {
         try
         {
            $validator = Validator::make($request->all(), [
                'post_id' => 'required|exists:feed_posts,id',
                'profile_id' => 'required',
            ]);  
             
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
 
            $input['profile_id'] = $request->profile_id;
            $input['post_id'] = $request->post_id;
            $data = FeedPostLike::where(['profile_id'=>$request->profile_id,'post_id' => $request->post_id])->first();
            
            if($data)
            {
                $data->delete();
                return response()->json(['success'=>true,'message'=>'Post Dislike Successfully']);
            }
            else
            {
                FeedPostLike::create($input);
                return response()->json(['success'=>true,'message'=>'Post like Successfully']);
            }
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
                'caption' => 'required|string',
                'profile_id' => 'required',		
				'video' => 'max:15000',
				'image' => 'max:15000',
            ]);
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }

            $community = Community::find($request->community_id);
			
			if($community->privacy == 'yes' || $community->profile_id != $request->profile_id)
			{
				$input['status'] = 'pending';	
			}
			else
			{
				$input['status'] = 'active';
			}

            $input['profile_id'] = $request->profile_id;
            $input['type'] = $request->type;
            $input['community_id'] = $request->community_id;
            $input['caption'] = $request->caption;
            $input['hashtags'] = json_encode($request->hashtags);
            
            $data = Post::create($input);
            
            if($request->hasFile('image')) 
            {
                $uploadedFiles = $request->file('image');
                $profileUrls = [];

                foreach ($uploadedFiles as $file) 
                {
                    $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                    $file->move('uploads/post/', $fileName);
                    $profileUrls = 'uploads/post/' . $fileName;

                    PostImage::create([
                        'post_id' => $data->id,
                        'name' => $profileUrls
                    ]);
                }
            }
            
            if ($request->file('video')) 
            {
                $uploadedVideoFiles = $request->file('video');
                $VideoUrls = [];
            
                foreach ($uploadedVideoFiles as $file) {
                    $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                    $file->move('uploads/post/', $fileName);
                    $VideoUrls = 'uploads/post/' . $fileName;

                    PostVideo::create([
                        'post_id' => $data->id,
                        'name' => $VideoUrls
                    ]);
                }
            }
            return response()->json(['success'=>true,'message'=>'Post Create Successfully']);
        }
        catch(\Eception $e)
        {
            return $this->sendError($e->getMessage());    
        }
    }
    

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
    //        return $id;
    	$profileId = $request->profile_id;

    	$posts = Post::withCount('total_likes')
        ->with('my_like', 'comments','comments.profile_info', 'post_images', 'post_videos', 'community_info', 'community_info.profile_info', 'profile_info')
		->where('status', 'active')
        ->where('community_id', $id)
        ->orWhereHas('my_like', function ($query) use ($profileId,$id) {
            $query->where('profile_id', $profileId);
			$query->where('community_id', $id);
        })
       // ->groupBy('id') // Group by the primary key to get only one post per unique ID
        ->get();
		return response()->json(['success' => true, 'message' => 'Posts Lists', 'post_info' => $posts], 200);
	}
	
	
	public function pending_post(Request $request,$community_id)
    {
    	$posts = Post::withCount('total_likes')
        ->with('my_like', 'comments','comments.profile_info', 'post_images', 'post_videos', 'community_info', 'community_info.profile_info', 'profile_info')->where(['community_id'=>$community_id,'status'=>'pending'])->get();
		return response()->json(['success' => true, 'message' => 'Posts Lists', 'post_info' => $posts], 200);
	}
	
	public function pending_post_update(Request $request,$id)
    {
        try
        {
    //         $validator = Validator::make($request->all(), [
    //             'post_id' => 'required|exists:posts,id',
				// 'status' => 'required',
    //         ]);  
            
            
            // if($validator->fails())
            // {
            //     return $this->sendError($validator->errors()->first(),500);
            // }
            
            $posts = Post::find($id);
    		if($posts)
    		{
    		    $posts->status = $request->status;
        		$posts->save();
    		    return response()->json(['success' => true, 'message' => 'Request Successfully'], 200);
    		}
    		else
    		{
                return $this->sendError('Post Not Found');    
    		}
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
	}
	
	public function show_video(Request $request, $id)
    {
    	$profileId = $request->profile_id;

    	$posts = PostVideo::withCount('total_likes')
        ->with('my_like', 'comments','comments.profile_info', 'post_videos', 'community_info', 'community_info.profile_info', 'profile_info')
        ->where('community_id', $id)
        ->orWhereHas('my_like', function ($query) use ($profileId,$id) {
            $query->where('profile_id', $profileId);
			$query->where('community_id', $id);
        })
       // ->groupBy('id') // Group by the primary key to get only one post per unique ID
        ->get();
		return response()->json(['success' => true, 'message' => 'Posts Videos Lists', 'post_info' => $posts], 200);
	}
	
	
	public function video_play(Request $request, $id)
    {
		$profileId = $request->profile_id;
    	$posts = PostVideo::with('total_likes','comments','comments.profile_info')->where('post_id',$id)
        ->orWhereHas('like', function ($query) use ($id) {
            $query->orwhere('post_id', $id);
        })
		->orWhereHas('comments', function ($query) use ($id) {
            $query->orwhere('post_id', $id);
        })->first();
		$posts->views = $posts->views +1;
		$posts->save();
		return response()->json(['success' => true, 'message' => 'Posts Videos Lists', 'post_info' => $posts], 200);
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
                'caption' => 'required|string',
                'profile_id' => 'required',			
                'hashtags' => 'required',			
            ]);  
            
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
           // return             $input['hashtags'] = json_encode($request->hashtags);

            $input['profile_id'] = $request->profile_id;
            $input['community_id'] = $request->community_id;
            $input['caption'] = $request->caption;
            $input['hashtags'] = json_encode($request->hashtags);
            $data = Post::find($id);
            $data->update($input);
            return response()->json(['success'=>true,'message'=>'Post Update Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
    
    
    
    public function update_post_by_feed(Request $request, $id)
    {
        try
        {
            $validator = Validator::make($request->all(), [
                'caption' => 'required|string',
                'profile_id' => 'required',			
                'hashtags' => 'required',			
            ]);  
            
            
            if($validator->fails())
            {
                return $this->sendError($validator->errors()->first());
            }
           
            $input['profile_id'] = $request->profile_id;
            $input['caption'] = $request->caption;
            
            $data = Post::find($id);


            if ($request->hasFile('image')) {
                $uploadedFiles = $request->file('image');
                $profileUrls = [];
            
                foreach ($uploadedFiles as $file) {
                    $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                    $file->move('uploads/post/', $fileName);
                    $profileUrls = 'uploads/post/' . $fileName;

                    PostImage::create([
                        'post_id' => $id,
                        'name' => $profileUrls
                    ]);
                }
            }
            
            if ($request->file('video')) {
                $uploadedVideoFiles = $request->file('video');
                $VideoUrls = [];
            
                foreach ($uploadedVideoFiles as $file) {
                    $fileName = md5($file->getClientOriginalName() . time()) . "Hatch-social." . $file->getClientOriginalExtension();
                    $file->move('uploads/post/', $fileName);
                    $VideoUrls = 'uploads/post/' . $fileName;

                    PostVideo::create([
                        'post_id' => $id,
                        'name' => $VideoUrls
                    ]);
                }
            }

            $data->update($input);
            return response()->json(['success'=>true,'message'=>'Post Update Successfully']);
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
    public function destroy(Request $request, $id)
    {
        try
        {
            
            $data = Post::find($id);
			$data->delete();
            
            return response()->json(['success'=>true,'message'=>'Post Delete Successfully']);
        }
        catch(\Eception $e){
            return $this->sendError($e->getMessage());    
        }
    }
}
