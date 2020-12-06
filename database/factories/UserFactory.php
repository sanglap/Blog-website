<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'name'              => $faker->name,
        'email'             => $faker->unique()->safeEmail,
        'password'          => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', // secret
        'remember_token'    => str_random(10),
    ];
});
// Admin Data
$factory->define(App\Admin::class, function (Faker $faker) {
    return [
        'admin'     => $faker->userName,
        'password'  => '123456'
    ];
});
// Category Data
$factory->define(App\Category::class, function (Faker $faker){
    return [
        'cat_title'     => $faker->name,
        'cat_slug'      => str_slug($faker->name),
        'cat_desc'      => $faker->text,
        'cat_img'       => $faker->image('public/imgs/category', 300, 300, 'abstract', false)
    ];
});
// Posts Data
$factory->define(App\Post::class, function (Faker $faker){
    return [
        'post_title'    => $faker->name,
        'post_slug'     => str_slug($faker->name),
        'post_body'     => $faker->text,
        'featured_img'  => $faker->image('public/imgs', 800, 300, 'fashion', false),
        'post_cats'     => App\Category::all()->random()->cat_id,
        'post_tags'     => $faker->randomElement(['php', 'codeigniter','laravel']),
        'post_views'    => $faker->numberBetween(100,1000)
    ];
});
// Comments Data
$factory->define(App\Comment::class, function (Faker $faker){
    return [
        'post_id'       => App\Post::all()->random()->post_id,
        'email_id'      => $faker->email,
        'name'          => $faker->name,
        'comment_body'  => $faker->text,
    ];
});
