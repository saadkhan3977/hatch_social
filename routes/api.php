<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;




/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

 Route::get("/asdkjn",function(){
         return "<h1>asdasd</h1>";
 });

Route::get('/clear-cache', function () {
    Artisan::call('make:model Community-m');
    return 'Cache cleared successfully.';
});

Route::get('cron', [\App\Http\Controllers\Api\RegisterController::class, 'cron'])->name('cron');
Route::get('cron/plane', [\App\Http\Controllers\Api\RegisterController::class, 'cron_plane'])->name('cron_plane');

Route::post('register', [\App\Http\Controllers\Api\RegisterController::class, 'register']);
Route::get('noauth', [\App\Http\Controllers\Api\RegisterController::class, 'noauth'])->name('noauth');
 

Route::any('login', [\App\Http\Controllers\Api\RegisterController::class, 'login']);    
Route::post('verify', [\App\Http\Controllers\Api\RegisterController::class, 'verify']);
Route::post('password/email',  [\App\Http\Controllers\Api\ForgotPasswordController::class,'forget']);
Route::any('password/reset', [\App\Http\Controllers\Api\CodeCheckController::class,'index']);
Route::post('password/code/check', [\App\Http\Controllers\Api\CodeCheckController::class,'code_verify']);
Route::get('guide', [\App\Http\Controllers\Api\CMSController::class, 'guide']);
Route::get('term/conditions', [\App\Http\Controllers\Api\CMSController::class, 'termanscondition']);

Route::group(['middleware' => ['auth:sanctum'], 'prefix' => 'auth'], function () {
	Route::get('home_multiple_community/{id}', [\App\Http\Controllers\Api\CommunityController::class,'home_multi_community']);
	Route::get('community_out/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_out']);
	
    Route::resource('profile', \App\Http\Controllers\Api\ProfileController::class);
	Route::post('change_passcode/{id}', [\App\Http\Controllers\Api\ProfileController::class, 'change_passcode']); 
	Route::resource('post', \App\Http\Controllers\Api\PostController::class);
	Route::get('post_video_list/{id}', [\App\Http\Controllers\Api\PostController::class,'show_video']);
	Route::get('pending_post/{id}', [\App\Http\Controllers\Api\PostController::class,'pending_post']);
	Route::post('pending_post_update/{id}', [\App\Http\Controllers\Api\PostController::class,'pending_post_update']);
	Route::post('feed', [\App\Http\Controllers\Api\FeedController::class,'store']);
	

    // Feed Urls
	Route::post('post-feed', [\App\Http\Controllers\Api\PostController::class,'post_feed']);
	Route::post('hashtags_list', [\App\Http\Controllers\Api\FeedController::class,'hashtags_list']);
    Route::get('all-feed-list', [\App\Http\Controllers\Api\FeedController::class,'all_feed_list']);
    Route::get('post-by-feed/{id}', [\App\Http\Controllers\Api\FeedController::class,'post_by_feed']);
	Route::get('post-by-profile/{id}', [\App\Http\Controllers\Api\FeedController::class,'post_by_profile']);
    Route::post('show-feed', [\App\Http\Controllers\Api\FeedController::class,'index']);
	Route::post('feed-follow', [\App\Http\Controllers\Api\FeedController::class,'feed_follow']); 
    Route::post('feed_post_like', [\App\Http\Controllers\Api\PostController::class,'feed_post_like']);
    Route::post('feed_post_comment', [\App\Http\Controllers\Api\CommentController::class,'feed_post_comment']); 
	
    Route::post('post_like', [\App\Http\Controllers\Api\PostController::class,'like']);
	Route::get('post_video_detail/{id}', [\App\Http\Controllers\Api\PostController::class,'video_play']);
	Route::resource('event', \App\Http\Controllers\Api\EventController::class);
    Route::post('event_join', [\App\Http\Controllers\Api\EventController::class, 'event_join']);
	Route::resource('profileqa', \App\Http\Controllers\Api\ProfileQAController::class);
    Route::post('profile_login', [\App\Http\Controllers\Api\ProfileController::class, 'login']);
    Route::post('update-post-by-feed/{id}', [\App\Http\Controllers\Api\FeedController::class,'update_post_by_feed']);
    Route::get('my-feed-list/{id}', [\App\Http\Controllers\Api\FeedController::class,'my_feed_list']);
    Route::get('feed-detail/{id}', [\App\Http\Controllers\Api\FeedController::class,'detail']);
    Route::get('feed-post-list/{id}', [\App\Http\Controllers\Api\FeedController::class,'feed_post_list']);
    
	Route::get('interest_list', [\App\Http\Controllers\Api\InterestController::class, 'index']);
    Route::get('member', [\App\Http\Controllers\Api\ProfileController::class, 'member_list']);
    Route::post('member_search', [\App\Http\Controllers\Api\ProfileController::class, 'search']);
    Route::post('search', [\App\Http\Controllers\Api\CommunityController::class, 'search']);

    //Route::resource('interest', \App\Http\Controllers\Api\InterestController::class); 
    // Route::resource('bubble', \App\Http\Controllers\Api\BubbleController::class); 
	Route::post('community_multi_request', [\App\Http\Controllers\Api\CommunityController::class,'multi_request']); 
	Route::post('community_member/add', [\App\Http\Controllers\Api\CommunityController::class,'member_add']); 
	Route::get('community_member/my_pending_list/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_member_my_pending_list']); 
	Route::get('community_member/pending_list/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_member_pending_list']); 
	Route::post('community_member/pending_list/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_member_pending_update']); 
	Route::delete('community_member/remove/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_member_remove']); 
	Route::get('community_member/list/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_member_list']); 

    Route::resource('community', \App\Http\Controllers\Api\CommunityController::class); 
	
    Route::get('community_list/{id}', [\App\Http\Controllers\Api\CommunityController::class,'indexx']); 
	Route::post('community_update/{id}', [\App\Http\Controllers\Api\CommunityController::class,'update']); 
	Route::post('community_member_admin', [\App\Http\Controllers\Api\CommunityController::class,'member_admin']); 
    Route::get('my_community/{id}', [\App\Http\Controllers\Api\CommunityController::class,'my_communities']); 
    Route::get('community_interest/{id}', [\App\Http\Controllers\Api\CommunityController::class,'community_interest']); 
    Route::get('community_detail/{id}', [\App\Http\Controllers\Api\CommunityController::class,'detail']); 
    Route::resource('comment', \App\Http\Controllers\Api\CommentController::class); 
	Route::post('subscribe', [\App\Http\Controllers\Api\ProfileController::class,'subscribe']); 
	Route::post('interest', [\App\Http\Controllers\Api\ProfileController::class,'interest']); 
	Route::post('logout', [\App\Http\Controllers\Api\ProfileController::class,'logout']); 

    // // Route::middleware('auth:api')->group( function () {
    // Route::group(['prefix' => 'barber'], function () {
	//     Route::resource('service',App\Http\Controllers\Api\Barber\ServiceController::class);
    // });


    // Route::get('notification', [\App\Http\Controllers\Api\UserController::class, 'un_reead_notification']); 
    // Route::post('/notification',[\App\Http\Controllers\Api\UserController::class,'read_notification']);
    // Route::post('/checkout', [App\Http\Controllers\Api\OrderController::class, 'store']);
    // Route::get('shipping', [\App\Http\Controllers\Api\ShippingController::class, 'index']); 
    // Route::get('category', [\App\Http\Controllers\Api\CategoryController::class, 'index']); 
    // Route::get('brand', [\App\Http\Controllers\Api\BrandController::class, 'index']); 
    // Route::get('product', [\App\Http\Controllers\Api\ProductController::class, 'index']); 
    // Route::get('product/{brand}', [\App\Http\Controllers\Api\ProductController::class, 'brand_product']); 
	// Route::resource('cart',App\Http\Controllers\Api\CartController::class);
	
	// Route::resource('trophy',App\Http\Controllers\Api\TrophyController::class);
    // Route::post('set_goal', [\App\Http\Controllers\Api\GoalController::class, 'set_goal']); 
    // Route::get('goal/list', [\App\Http\Controllers\Api\GoalController::class, 'list']); 
    // Route::post('addcard', [\App\Http\Controllers\UserCardController::class, 'addcard']);
	// Route::post('updatecard', [\App\Http\Controllers\UserCardController::class, 'updatecard']); 
    // Route::get('me', [\App\Http\Controllers\Api\RegisterController::class, 'me']);
    // Route::get('user', [\App\Http\Controllers\Api\RegisterController::class, 'user']);
    // Route::get('orders', [\App\Http\Controllers\Api\OrderController::class, 'orders']);
    // Route::get('children_orders', [\App\Http\Controllers\Api\OrderController::class, 'childorders']);
    // Route::post('order/{status}', [\App\Http\Controllers\Api\OrderController::class, 'orders_status']);
    // Route::get('transaction', [\App\Http\Controllers\TranasactionController::class, 'index']);
    // Route::post('withdraw', [\App\Http\Controllers\TranasactionController::class, 'store']);
    // Route::get('withdraw/list', [\App\Http\Controllers\TranasactionController::class, 'index']);
    // Route::post('change_password', [\App\Http\Controllers\Api\RegisterController::class, 'change_password']); 
	// Route::post('cuurent/plan', [\App\Http\Controllers\Api\UserController::class, 'current_plan']);  	
    // Route::get('financial/breakdowns/{date}', [\App\Http\Controllers\Api\FinancialController::class, 'financialdata']);
    // Route::post('financial/breakdowns/post', [\App\Http\Controllers\Api\FinancialController::class, 'financialpost']);
    // Route::get('admin/info', [\App\Http\Controllers\Api\ContactController::class, 'admininfo']);
    // Route::post('contact/submit', [\App\Http\Controllers\Api\ContactController::class, 'contact_info']);
    // Route::get('logout', [\App\Http\Controllers\Api\RegisterController::class, 'logout']);
});
