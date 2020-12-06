<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
// Models
use App\Post;
use App\Category;
use App\Comment;
use App\Newsletter;
class HomeController extends Controller
{
    // Show All Posts
    function index(Request $request){
        if($request->has('s')){
            $search=$request->get('s');
            $posts=Post::where('post_title','like',$search.'%')->paginate(15);
        }else{
            $posts=Post::paginate(15);
        }
        return view('front.home',[
            'posts'=>$posts
        ]);
    }
    // Search Post, Category
    // Show All Categories
    function categories(){
        return view('front.all-category',[
            'categories'=>Category::paginate(9)
        ]);
    }
    // Single Category
    function category(Request $request,$slug,$id){
        return view('front.category',[
            'posts'=>Post::whereRaw('FIND_IN_SET('.$id.',post_cats)')->get()
        ]);
    }
    // Show All tags
    function tags(){
        $allPosts=Post::select('post_tags')->paginate();
        $tags=[];
        foreach($allPosts as $post){
            $tag=explode(',',$post['post_tags']);
            foreach($tag as $t){
                $tags[]=$t;
            }
        }
        return view('front.all-tags',[
            'tags'=>array_unique($tags)
        ]);
    }
    // Single Tag Posts
    function tag(Request $request,$slug){
        return view('front.tag',[
            'posts'=>Post::whereRaw("FIND_IN_SET('".$slug."',post_tags)")->paginate(15)
        ]);
    }
    // Show Single Post With Comments
    function postdetail(Request $request,$slug,$id){
        return view('front.post-detail',[
            'postDetail'=>Post::find($id),
            'comments'=>Comment::where(['post_id'=>$id,'comment_status'=>1])->orderBy('comment_id','desc')->get(),
            'post_id'=>$id,
            'slug'=>$slug,
        ]);
    }
    // Submit Comment
    function submit_comment(Request $request,$slug,$post_id){
        $request->validate([
            'comment'=>'required',
            'email'=>'required|email',
            'name'=>'required'
        ]);
        $comment=new Comment;
        $comment->email_id=$request->email;
        $comment->name=$request->name;
        $comment->comment_body=$request->comment;
        $comment->post_id=$post_id;
        $comment->save();
        return redirect('post/'.$slug.'/'.$post_id)->with('success','Comment has been added.');
    }
    // Subscribe Newsletter
    function subscribe(Request $request){
        $request->validate([
            'subscriber'=>'required|email'
        ]);
        $newsletter=new Newsletter;
        $newsletter->email=$request->subscriber;
        $newsletter->save();
        return redirect('/')->with('success','Subscribed :)');
    }
}
