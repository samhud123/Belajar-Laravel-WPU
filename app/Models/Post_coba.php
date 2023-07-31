<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Postingan Pertama",
            "slug" => "postingan-ke-satu",
            "author" => "Samirul Huda",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam mollitia natus assumenda sit cum ducimus sunt minus illo rerum minima accusamus dolorem, optio reiciendis nostrum in nulla molestiae excepturi at neque earum unde architecto laboriosam alias dolor? Voluptatibus sequi error dolorum totam aut, consequuntur voluptatem enim cum quasi architecto! Suscipit quo saepe ea, asperiores, rem exercitationem impedit temporibus numquam adipisci ipsum natus ex tempora facilis inventore dolor, earum quis? Molestiae officia ad labore porro dignissimos earum nam autem non eaque!"
        ],
        [
            "title" => "Postingan Kedua",
            "slug" => "postingan-ke-dua",
            "author" => "Ulinnuha",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vero at praesentium consequuntur deleniti laborum cupiditate error pariatur aliquid, eligendi soluta necessitatibus nam vitae repellendus atque blanditiis aperiam. Similique aliquid voluptatibus distinctio quaerat et deserunt incidunt tempora, suscipit magnam, perferendis, quia voluptatum fugit pariatur facilis aspernatur sit at harum vel. Eligendi, tempore dicta. Illum facilis corporis voluptas repudiandae aperiam aliquam est eius possimus perspiciatis quidem voluptates nesciunt nobis saepe reprehenderit animi minus eligendi nulla fuga consequuntur, adipisci sapiente officiis! Corporis tenetur at quae recusandae repudiandae odio, eligendi aperiam nisi tempore ea veniam quia, provident, ut minus. Sed eaque at laborum placeat."
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
