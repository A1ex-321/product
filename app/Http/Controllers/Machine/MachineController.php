<?php

namespace App\Http\Controllers\Machine;

use App\Models\User;
use App\Models\Gallery;
use App\Models\detail;
use App\Models\Banner;
use App\Models\Machineservice;
use App\Models\Scolink;
use App\Models\home;
use App\Models\social;
use App\Models\about;
use App\Models\service;
use App\Models\soloblog;

use App\Models\contacts;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Mailstores;
use App\Models\Blogsco;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;


class MachineController extends Controller
{
    public function index()
    {
        $data['getRecord'] = Banner::get();
        $data['content'] = Machineservice::where('is_service', 0)->get();
        $data['service'] = Machineservice::where('is_service', 1)->get();


        //   dd($data['content']);
        // $data['header_title'] ="Admin List";

        return view('machine.index', $data);
    }
    public function about()
    {
        $data['service'] = Machineservice::where('is_service', 0)->get();
        return view('machine.about', $data);
    }
    public function service()
    {
        $data['content'] = Machineservice::where('is_service', 0)->get();
        $data['service'] = Machineservice::where('is_service', 1)->get();
        return view('machine.service', $data);
    }
    public function blog()
    {
        $data['getRecord'] = Blogsco::get();
        // dd($data['getRecord']);
        return view('machine.blog', $data);
    }
    public function contact()
    {
        return view('machine.contact');
    }
    public function singleblog()
    {
        return view('machine.singleblog');
    }
    public function admin_add()
    {
        $data['header_title'] = "Add Admin ";

        return view('admin.admin.add_admin', $data);
    }
    public function add_admin_edit($id)
    {
        $data['getRecord'] = User::getSingle($id);

        $data['header_title'] = "Edit Admin ";

        return view('admin.admin.add_admin_edit', $data);
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
        $user->role = $request->role;
        $user->save();

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

        request()->validate(['email' => 'required|email|unique:users']);

        // dd($request->all() );
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        if (!empty($request->password)) {
            $user->password = Hash::make($request->password);
        }

        $user->status = $request->status;
        $user->is_admin = 1;
        $user->role = $request->role;
        $user->save();

        return redirect('admin/admin/list')->with('success', 'Admin Successfully Created');
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
    public function store(Request $request)
    {
        // Extract form data
        //  dd($request->all());
        $name = $request->input('name');
        $phone = $request->input('phone');
        $message = $request->input('msg');

        // Create a new record in the database
        Mailstores::create([
            'name' => $name,
            'phone' => $phone,
            'msg' => $message,
        ]);

        // Redirect or return a response
        return redirect('/contact')->with('success', 'Message sent successfully');
    }
    public function get_profile()
    {
        try {
            $profile = detail::first();
            // dd($logo);
            if ($profile) {
                //  $image = asset('public/images/' . $logo->image);
                return response()->json(['profile' => $profile]);
                // dd($logo);

            } else {
                return response()->json(['error' => 'No record found in the Gallery table']);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => 'Internal Server Error']);
        }
    }
    public function get_service()
    {
        try {
            $service = Machineservice::where('is_service', 1)->get();
            // dd($logo);
            if ($service) {
                //  $image = asset('public/images/' . $logo->image);
                return response()->json(['service' => $service]);
                // dd($logo);

            } else {
                return response()->json(['error' => 'No record found in the Gallery table']);
            }
        } catch (\Exception $e) {
            return response()->json(['error' => 'Internal Server Error']);
        }
    }
    public function get_blog(Request $request, $id)
    {
        $data['blog'] = Blogsco::find($id);
        //  dd($data['blog']);
        $data['getRecord'] = Blogsco::get();
        $data['blog']['ogimage'] = asset('public/images/' . $data['blog']['ogimage']);
        $jsonResponse = response()->json(['blog' => $data['blog']]);
        
                if ($request->expectsJson()) {
            // Return JSON response if the request expects JSON
            return $jsonResponse;
        }
        // $data['header_title'] = "Add New Brand";
        return view('machine.singleblog', $data)->with('jsonResponse', $jsonResponse);
    }



    public function get_all()
    {
        try {
            $home = home::get();
            $link = Scolink::get();
            $sociallink = social::where('is_social', 0)->get();
            $gather = social::where('is_social', 1)->get();
            $about = about::get();
            $blog = soloblog::get();
            $service = service::get();
            $contact = contacts::get();

            return response()->json([
                'home' => $home,
                'link' => $link,
                'sociallink' => $sociallink,
                'gather' => $gather,
                'about' => $about,
                'blog' => $blog,
                'service' => $service,
                'contact' => $contact

            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Internal Server Error']);
        }
    }
}
