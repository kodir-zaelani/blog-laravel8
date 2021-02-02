<?php

namespace Database\Seeders;

use App\Models\Setarticle;
use Illuminate\Database\Seeder;

class SetarticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setarticle::create([
            'title' => 'Belajar HTML',
            'slug' => 'belajar-html',
            
        ]);
        Setarticle::create([
            'title' => 'Belajar PHP',
            'slug' => 'belajar php',
            
        ]);
        Setarticle::create([
            'title' => 'Belajar Laravel',
            'slug' => 'belajar-laravel',
            
        ]);
        
        
    }
}
