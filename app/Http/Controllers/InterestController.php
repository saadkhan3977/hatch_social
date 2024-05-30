<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class InterestController extends Controller
{
    public function create()
    {
        return view('interests.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'type' => 'required|string|in:biz,invest,social,traders',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);

        $name = $request->input('name');
        $type = $request->input('type');
        $file = $request->file('image');
        $fileName = md5($file->getClientOriginalName() . time()) . '.' . $file->getClientOriginalExtension();
        $filePath = 'uploads/user/interests/' . $fileName;

        // Move the file to the desired directory
        $file->move(public_path('uploads/user/interests/'), $fileName);

        // Here you can store the file path and type in the database if needed.
        // Example:
        \DB::table('interests')->insert([
            'name' => $name,
            'type' => $type,
            'image' => $filePath,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return back()->with('success', 'Images uploaded successfully!');
    }
}
