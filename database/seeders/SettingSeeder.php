<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Seeder;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::create([
            'title' => 'Laman Kreasi',
            'tagline' => 'Belajar dan terus belajar',
            'website' => 'www.lamankreasi.com',
            'email' => 'laman.kreasi@gmail.com',
            'description' => 'Web sumber pembelajaran',
            ]);
    }
}
