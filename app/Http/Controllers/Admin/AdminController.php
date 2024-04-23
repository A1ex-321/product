<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    // public function __construct()
    // {
    // $this->middleware('permission:delete posts',['only' => ['delete']]);

    // }
    public function admin_list()
    {
        $data['getRecord'] = User::getAdmin();

        $data['header_title'] = "Admin List";

        return view('admin.admin.list', $data);
    }
    public function role_list()
    {
        // $data['getRecord'] = Role::get();
        $data['getRecord'] = Role::whereNotIn('name', ['All'])->get();

        $data['header_title'] = "Admin List";

        return view('admin.admin.role', $data);
    }
    public function admin_list1()
    {
        $data['getRecord'] = User::getAdmin();
        $data['header_title'] = "Admin List";

        return view('admin.admin.list', $data);
    }
    public function admin_add()
    {
        $data['header_title'] = "Add Admin ";
        $data['role'] = Role::pluck('name', 'name')->all();

        return view('admin.admin.add_admin', $data);
    }
    public function add_admin_edit($user)
    {
        // $data['getRecord'] = User::getSingle($user->id);

        // $data['roles'] = Role::pluck('name','name')->all();
        // $data['userRoles'] = $user->{$data['roles']}->pluck('name', 'name')->all();

        // $data['header_title'] = "Edit Admin ";

        // return view('admin.admin.add_admin_edit', $data);
        // return $user;
        $getRecord = User::findorfail($user);
        // dd($getRecord);
        $roles = Role::pluck('name', 'name')->all();
        $userRoles = $getRecord->roles->pluck('name', 'name')->all();
        //  dd($userRoles);


        return view('admin.admin.add_admin_edit', ['user' => $user, 'roles' => $roles, 'userRoles' => $userRoles, 'getRecord' =>  $getRecord]);
    }
    public function admin_add_update($id, Request $request)
    {

        request()->validate(['email' => 'required|email|unique:users,email,' . $id]);
        // dd($request->all() );

        $user = User::getSingle($id);
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->filled('password')) {
            $user->password = Hash::make($request->password);
        }
        $user->status = $request->status;
        $user->is_admin = 1;
        $user->role = 0;
        $user->save();
        $user->syncRoles($request->permission);

        return redirect('admin/admin/list')->with('success', 'Admin Successfully Updated');
    }
    public function admin_add_delete($id)
    {
        $user = User::getSingle($id);
        $user->is_delete = 1;
        $user->save();
        return redirect()->back()->with('success', 'Admin Successfully Deleted');
    }
    public function add_admin_insert(Request $request)
    {
        request()->validate([
            'email' => 'required|email|unique:users',
            'name' => 'required',
            'password' => 'required',
            'status' => 'required',
            'permission' => 'required|array', 
        ]);
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->status = $request->status;
        $user->is_admin = 1; 
        $user->role = 0;
        $user->save();
        $user->syncRoles($request->permission);

        // Redirect with success message
        return redirect('admin/admin/list')->with('success', 'Admin Successfully Created');
    }

    public function addpermission($roleid)
    {
        $data['header_title'] = "Add Admin ";
        $data['role'] = Role::findorfail($roleid);
        $data['permission'] = Permission::get();
        $data['rolepermission'] = DB::table('role_has_permissions')
            ->where('role_has_permissions.role_id', $data['role']->id)
            ->pluck('role_has_permissions.permission_id')
            ->all();
        return view('admin.admin.roleedit', $data);
    }
    
    public function givepermission(Request $request, $role)
    {
        $role = Role::findorfail($role);
        $role->syncPermissions($request->permission);

        return redirect('admin/role/role')->with('success', ' Successfully update ');
    }
}
