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
            'author_id'     => '76456224-0616-4d12-9dbb-14f68b1b1290',
        ]);
        Categorypost::create([
            'title' => 'Belajar HTML, CSS',
            'slug' => 'bejara-html-css',
            'author_id'     => '76456224-0616-4d12-9dbb-14f68b1b1290',
        ]);
        Categorypost::create([
            'title' => 'Berita',
            'slug' => 'berita',
            'author_id'     => '76456224-0616-4d12-9dbb-14f68b1b1290',
        ]);
        Categorypost::create([
            'title' => 'Tutorial',
            'slug' => 'tutorial',
            'author_id'     => '76456224-0616-4d12-9dbb-14f68b1b1290',
        ]);
        Categorypost::create([
            'title' => 'Belajar Laravel',
            'slug' => 'belajar-laravel',
            'author_id'     => '76456224-0616-4d12-9dbb-14f68b1b1290',
        ]);
    }
}
