<?php

namespace Database\Seeders;

use App\Models\Categorypost;
use Illuminate\Database\Seeder;

class CategorypostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categorypost::create([
            'title' => 'Uncategorized',
            'slug' => 'uncategorized',
            'author_id'     => '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d',
        ]);
        Categorypost::create([
            'title' => 'Belajar HTML, CSS',
            'slug' => 'bejara-html-css',
            'author_id'     => '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d',
        ]);
        Categorypost::create([
            'title' => 'Berita',
            'slug' => 'berita',
            'author_id'     => '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d',
        ]);
        Categorypost::create([
            'title' => 'Tutorial',
            'slug' => 'tutorial',
            'author_id'     => '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d',
        ]);
        Categorypost::create([
            'title' => 'Belajar Laravel',
            'slug' => 'belajar-laravel',
            'author_id'     => '54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d',
        ]);
    }
}
