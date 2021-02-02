<?php

namespace Database\Seeders;

use App\Models\Tag;
use Illuminate\Database\Seeder;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tag::create([
            'title' => 'Berita',
            'slug' => 'berita',
            'iclass' => 'success'
        ]);
        Tag::create([
            'title' => 'HTML',
            'slug' => 'html',
            'iclass' => 'primary'
        ]);
        Tag::create([
            'title' => 'CSS',
            'slug' => 'css',
            'iclass' => 'secondary'
        ]);
        Tag::create([
            'title' => 'Pemograman',
            'slug' => 'pemograman',
            'iclass' => 'success'
        ]);
        Tag::create([
            'title' => 'PHP',
            'slug' => 'php',
            'iclass' => 'warning'
        ]);
       
    }
}
