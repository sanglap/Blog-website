<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
class SettingController extends Controller
{
    // Index Page
    // function index(){
    //     return view('settings.index');
    // }
    // Save Logo
    function index(){
        return view('settings.logo',[
            'logo'=>Setting::where('meta_key','logo_img')->get()
        ]);
    }
    // Submit Logo
    function submit_logo(Request $request){
        if($request->hasFile('logo_img')){
            $image = $request->file('logo_img');
            $imageName=time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/imgs');
            $image->move($destinationPath, $imageName);
        }else{
            $imageName=$request->post('logo_img');
        }
        // Delete Logo First then insert
       Setting::where('meta_key','logo_img')->delete();
       $logo=new Setting;
       $logo->meta_key='logo_img';
       $logo->meta_value=$imageName;
       $logo->save();
       return redirect('admin/settings')->with('success','Data has been updated');
    }
}
