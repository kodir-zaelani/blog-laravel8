<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleuserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //assign permission to role
        $role = Role::find('eb8c30e0-9d3f-4d1b-9f98-da30f7aeefa6');
        $permissions = Permission::all();

        $role->syncPermissions($permissions);

        //assign role with permission to user
        $user = User::find('54a5e23a-bd3b-4fb7-99ac-f3ef35339f7d');
        $user->assignRole($role->name);
    }
}
