<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // Terlebih dahulu jalankanseeder di bawah ini
        // $this->call(SettingSeeder::class);
        // $this->call(SocialSeeder::class);
        // $this->call(TagSeeder::class);
        // $this->call(SetarticleSeeder::class);
        // $this->call(CategorypageSeeder::class);
        // $this->call(MenuFrontendSeeder::class);
        // $this->call(RoleSeeder::class);
        // $this->call(PermissionsSeeder::class);
        // $this->call(UserSeeder::class);

        // Seeder dibawah ini dijalankan setelah dapat id uuid role dan user
        // $this->call(RoleuserSeeder::class);  // id = sesauikan dengan isi table masing-masing
        // $this->call(CategorypostSeeder::class);
    }
}
