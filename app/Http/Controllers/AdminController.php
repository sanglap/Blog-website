<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Admin;
use App\Post;
use App\Category;
use App\Comment;
use App\Newsletter;
class AdminController extends Controller
{
    // Admin Login
    function login(){
        return view('login');
    }
    // Submit Login
    function submit_login(Request $request){
        $request->validate([
            'user'=>'required',
            'pwd'=>'required'
        ]);
        $adminCount=Admin::where([
            'admin'=>$request->post('user'),
            'password'=>$request->post('pwd')
        ])->count();
        if($adminCount>0){
            session(['adminSession' =>true]);
            return redirect('admin');
        }else{
            return redirect('admin/login')->with('error','Invalid Username/Password!!');
        }
    }
    // Logout
    function logout(){
        session()->forget('adminSession');
        return redirect('admin/login');
    }
    // Dashboard
    public function index()
    {
        $totalPosts=Post::count();
        $totalCategories=Category::count();
        $totalComments=Comment::count();
        $posts=Post::all();
        return view('dashboard',[
            'totalPosts'=>$totalPosts,
            'totalCategories'=>$totalCategories,
            'totalComments'=>$totalComments,
            'posts'=>$posts
        ]);
    }
    // All Subscribers
    function subscribers(){
        $emails=Newsletter::all();
        return view('subscribers.index',[
            'emails'=>$emails
        ]);
    }
    // Delete Subscriber
    public function destroy($id)
    {
        //
        Newsletter::where('newsletter_id',$id)->delete();
        return redirect('admin/subscribers')->with([
            'success'=>'Data has been deleted.'
        ]);
    }
}
