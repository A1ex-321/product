<?php

namespace App\Http\Controllers\Machine;

use App\Models\User;
use App\Models\Gallery;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;


class MachineController extends Controller
{
    public function index(){
        // $data['getRecord'] = User::getAdmin();
        // $data['header_title'] ="Admin List";

        return view('machine.index');

    }
    public function about(){
        return view('machine.about');

    }
    public function service(){
        return view('machine.service');

    }
    public function blog(){
        return view('machine.blog');

    }
    public function contact(){
        return view('machine.contact');

    }
    public function singleblog(){
        return view('machine.singleblog');

    }
    public function admin_add(){
        $data['header_title'] ="Add Admin ";

        return view('admin.admin.add_admin', $data);

    }
    public function add_admin_edit($id){
        $data['getRecord'] = User::getSingle($id);

        $data['header_title'] ="Edit Admin ";

        return view('admin.admin.add_admin_edit', $data);

    }
    public function admin_add_update($id, Request $request){

        request()->validate(['email'=>'required|email|unique:users,email,'.$id]);
        // dd($request->all() );

        $user = User::getSingle($id);
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->filled('password')) {
            $user->password = Hash::make($request->password);
        }
        $user->status=$request->status;
        $user->is_admin=1;
        $user->role=$request->role;
        $user->save();

        return redirect('admin/admin/list')->with('success','Admin Successfully Updated');
    }
    public function admin_add_delete($id){


       $user = User::getSingle($id);

       $user->is_delete=1;
       $user->save();
       return redirect()->back()->with('success','Admin Successfully Deleted');


    }
    public function add_admin_insert(Request $request){

        request()->validate(['email'=>'required|email|unique:users']);

        // dd($request->all() );
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        if(!empty($request->password)){
            $user->password=Hash::make($request->password);
        }
       
        $user->status=$request->status;
        $user->is_admin=1;
        $user->role=$request->role;
        $user->save();

        return redirect('admin/admin/list')->with('success','Admin Successfully Created');

    }
    public function get_logo1()
    {
        try {
            $logo = Gallery::first();
            // dd($logo);
            if ($logo) {
                $image = asset('public/images/' . $logo->image);
                return response()->json(['image' => $image]);
                // dd($logo);

            } else {
                return response()->json(['error' => 'No record found in the Gallery table']);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => 'Internal Server Error']);
        }
    }
}
