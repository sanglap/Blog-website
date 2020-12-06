<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Category;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $posts=Post::all();
        return view('posts.index',['posts'=>$posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories=Category::all();
        return view('posts.add',[
            'categories'=>$categories
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'post_title'=>'required',
            'post_desc'=>'required',
            'post_cat'=>'required',
            'post_tags'=>'required'
        ]);
        $image = $request->file('post_img');
        $imageName=time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/imgs');
        $image->move($destinationPath, $imageName);
        // Save Data
        $post=new Post;
        $post->post_title=$request->post('post_title');
        $post->post_body=$request->post('post_desc');
        $post->post_slug=str_slug($request->post('post_title'));
        $post->post_cats=implode(',',$request->post('post_cat'));
        $post->post_tags=$request->post('post_tags');
        $post->featured_img=$imageName;
        $post->save();
        return redirect('admin/post/add')->with('success','Data has been added.');
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
        $categories=Category::all();
        $post=Post::find($id);
        return view('posts.update',[
            'id'=>$id,
            'post'=>$post,
            'categories'=>$categories
        ]);
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
        $request->validate([
            'post_title'=>'required',
            'post_desc'=>'required',
            'post_cat'=>'required',
            'post_tags'=>'required'
        ]);
        if($request->hasFile('post_img')){
            $image = $request->file('post_img');
            $imageName=time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/imgs');
            $image->move($destinationPath, $imageName);
        }else{
            $imageName=$request->post('post_prev_img');
        }
        // Save Data
        $post=Post::find($id);
        $post->post_title=$request->post('post_title');
        $post->post_body=$request->post('post_desc');
        $post->post_slug=str_slug($request->post('post_title'));
        $post->post_cats=implode(',',$request->post('post_cat'));
        $post->post_tags=$request->post('post_tags');
        $post->featured_img=$imageName;
        $post->save();
        return redirect('admin/post/update/'.$id)->with([
            'success'=>'Data has been updated.',
            'id'=>$id
        ]);
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
        Post::where('post_id',$id)->delete();
        return redirect('admin/posts')->with([
            'success'=>'Data has been deleted.'
        ]);
    }
}
