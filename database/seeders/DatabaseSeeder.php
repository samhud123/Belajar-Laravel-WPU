<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Samirul Huda',
            'username' => 'samirulhuda',
            'email' => 'samirulhuda87@gmail.com',
            'password' => bcrypt('123')
        ]);

        // User::create([
        //     'name' => 'Arif Abdillah',
        //     'email' => 'arifabdillah@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt veniam dicta voluptatibus, officiis natus doloribus quibusdam',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam totam veniam ut aspernatur itaque amet, harum sequi doloribus eligendi odit maxime laborum neque, dignissimos suscipit vitae quos excepturi, autem minus sit. Debitis esse eaque quidem, aperiam inventore, tempora veritatis accusamus rerum obcaecati eius quibusdam magni beatae. Quia debitis reprehenderit itaque temporibus cupiditate aut, alias sapiente facilis inventore. Vitae suscipit vero animi possimus! Sint ipsam minima voluptatum? Tempore eaque debitis asperiores?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt veniam dicta voluptatibus, officiis natus doloribus quibusdam',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam totam veniam ut aspernatur itaque amet, harum sequi doloribus eligendi odit maxime laborum neque, dignissimos suscipit vitae quos excepturi, autem minus sit. Debitis esse eaque quidem, aperiam inventore, tempora veritatis accusamus rerum obcaecati eius quibusdam magni beatae. Quia debitis reprehenderit itaque temporibus cupiditate aut, alias sapiente facilis inventore. Vitae suscipit vero animi possimus! Sint ipsam minima voluptatum? Tempore eaque debitis asperiores?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt veniam dicta voluptatibus, officiis natus doloribus quibusdam',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam totam veniam ut aspernatur itaque amet, harum sequi doloribus eligendi odit maxime laborum neque, dignissimos suscipit vitae quos excepturi, autem minus sit. Debitis esse eaque quidem, aperiam inventore, tempora veritatis accusamus rerum obcaecati eius quibusdam magni beatae. Quia debitis reprehenderit itaque temporibus cupiditate aut, alias sapiente facilis inventore. Vitae suscipit vero animi possimus! Sint ipsam minima voluptatum? Tempore eaque debitis asperiores?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt veniam dicta voluptatibus, officiis natus doloribus quibusdam',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam totam veniam ut aspernatur itaque amet, harum sequi doloribus eligendi odit maxime laborum neque, dignissimos suscipit vitae quos excepturi, autem minus sit. Debitis esse eaque quidem, aperiam inventore, tempora veritatis accusamus rerum obcaecati eius quibusdam magni beatae. Quia debitis reprehenderit itaque temporibus cupiditate aut, alias sapiente facilis inventore. Vitae suscipit vero animi possimus! Sint ipsam minima voluptatum? Tempore eaque debitis asperiores?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
