<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $posts = [];
        // $faker = Factory::create();
        $faker = Faker::create();
        $date = Carbon::now()->modify('-1 year');

        for ($i = 1; $i <= 36; $i++)
        {
            $date->addDays(10);
            $createdDate   = clone($date);

            DB::table('posts')->insert([
                'author_id'    => 'b8882e24-5fc5-4032-a094-544a253d6121',
                // 'author_id'    => rand(1, 2),
                'title'        => $faker->sentence(rand(8, 12)),
                'slug'         => $faker->slug(),
                'excerpt'      => $faker->text(rand(100, 200)),
                'content'         => $faker->paragraphs(rand(10, 15), true),
                'categorypost_id'  => $faker->uuid(),
                'setarticle_id'  => $faker->uuid(),
                'headline'   => 1,
                'selection'   => 0,
                'status'   => 1,
                'created_at'   => $createdDate,
                'updated_at'   => $createdDate,
                'view_count'   => rand(1, 10) * 10,
            ]);
        }
        
    }
}
