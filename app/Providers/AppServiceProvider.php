<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Post;
use App\Category;
use App\Setting;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        // Fetch Post Data
        $logo=Setting::where('meta_key','logo_img')->get();
        $popularPosts=Post::orderBy('post_views','desc')->take('5')->get();
        $recentPosts=Post::orderBy('post_id','desc')->take('5')->get();
        view()->share([
            'popularPosts'=>$popularPosts,
            'recentPosts'=>$recentPosts,
            'logo'=>$logo
        ]);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
