<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $faker = \Faker\Factory::create();
        User::create([
            'name'      => 'Super Admin',
            'slug'      => 'super-admin',
            'email'     => 'super@gmail.com',
            'email_verified_at' => now(),
            'bio'     => 'Saya merupakan pemilik website www.lamankreasi.com',
            'password' => bcrypt('secret12'),
            'remember_token' => Str::random(30),
        ]);
        
       
        //  Script dibawah dapat diakttifkan jika tidak menggunakan Uuid
        // karena pada aplikasi ini untu user, role, permission mengunakan Uuid maka gunakan RoleuserSeeder

        //assign permission to role
        // $role = Role::find(1);
        // $permissions = Permission::all();

        // $role->syncPermissions($permissions);

        //assign role with permission to user
        // $user = User::find(1);
        // $user->assignRole($role->name);
    }
}
