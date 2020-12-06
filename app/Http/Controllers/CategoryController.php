<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories=Category::all();
        return view('categories.index',['categories'=>$categories]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('categories.add');
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
            'cat_title'=>'required',
            'cat_desc'=>'required'
        ]);
        $image = $request->file('cat_img');
        $imageName=time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/imgs/category');
        $image->move($destinationPath, $imageName);
        // Save Data
        $category=new Category;
        $category->cat_title=$request->post('cat_title');
        $category->cat_slug=str_slug($request->post('cat_title'));
        $category->cat_desc=$request->post('cat_desc');
        $category->cat_img=$imageName;
        $category->save();
        return redirect('admin/category/add')->with('success','Data has been added.');
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
        $category=Category::find($id);
        return view('categories.update',[
            'id'=>$id,
            'category'=>$category
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
            'cat_title'=>'required',
            'cat_desc'=>'required'
        ]);
        if($request->hasFile('cat_img')){
            $image = $request->file('cat_img');
            $imageName=time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/imgs/category');
            $image->move($destinationPath, $imageName);
        }else{
            $imageName=$request->post('cat_prev_img');
        }
        // Save Data
        $category=Category::find($id);
        $category->cat_title=$request->post('cat_title');
        $category->cat_slug=str_slug($request->post('cat_title'));
        $category->cat_desc=$request->post('cat_desc');
        $category->cat_img=$imageName;
        $category->save();
        return redirect('admin/category/update/'.$id)->with('success','Data has been updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::where('cat_id',$id)->delete();
        return redirect('admin/categories')->with([
            'success'=>'Data has been deleted.'
        ]);
    }
}
