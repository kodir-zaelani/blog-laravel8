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
        $role = Role::find('1806ce9c-5d9e-400e-8ac3-e6bfded9aa74');
        $permissions = Permission::all();

        $role->syncPermissions($permissions);

        //assign role with permission to user
        $user = User::find('76456224-0616-4d12-9dbb-14f68b1b1290');
        $user->assignRole($role->name);
    }
}
