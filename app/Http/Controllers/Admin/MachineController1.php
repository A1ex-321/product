<?php

namespace App\Http\Controllers\Admin;

namespace App\Http\Controllers\Admin;

use App\Models\BrandModel;
use App\Models\Detail;
use App\Models\Mailstores;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Addservice;
use App\Models\Banner;
use App\Models\social;
use App\Models\raalcontact;
use App\Models\Gallery;
use App\Models\Machineservice;



use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use App\Models\Blog;
use App\Models\Blogimage;

use Illuminate\Support\Facades\File;

use Illuminate\Support\Facades\Log;
use App\Models\Contentblog;
use App\Models\Team;

class MachineController1 extends Controller
{
 
    public function client_list()
    {
         $data['getRecord'] = Machineservice::where('is_service', 0)->get();
         $data['getRecord1'] = Machineservice::where('is_service', 1)->get();

        $data['header_title'] = "Admin List";

        return view('admin.machine.service',$data);
    }
    public function client_add(Request $request)
    {
        if ($request->hasFile('image')) {
            $images = $request->file('image');

            $filename = time() . '_' . str_replace(' ', '_', $images->getClientOriginalName());
            $images->move(public_path('images'), $filename);
        }
      
        Machineservice::create([
            'image' => $filename,
            'title' => $request->title,
            'spantitle' => $request->spantitle,
            'content' =>  $request->content,
            'servicetitle' =>  $request->servicetitle,
            'servicedescription' =>  $request->servicedescription,
            'is_service' => 0,

        ]);
        return redirect('admin/service1/list')->with('success', 'uploaded successfully.');
    }
    public function client_update1(Request $request,$id)
    {
        $user = Machineservice::find($id);
       
        if ($request->hasFile('image')) {
            $images = $request->file('image');

            $filename = time() . '_' . str_replace(' ', '_', $images->getClientOriginalName());
            $images->move(public_path('images'), $filename);
         $user->image=$filename;

        }    
        else{
            $user->image=$user->image;
        }
        // $user->image=$filename;
        $user->title=$request->title;
        $user->spantitle=$request->spantitle;
        $user->content=$request->content;
        $user->servicetitle=$request->servicetitle;
        $user->servicedescription=$request->servicedescription;

        $user->save();
        return redirect('admin/service1/list')->with('success', 'updated successfully.');
    }
    public function service_add(Request $request)
    {
        if ($request->hasFile('machineimage')) {
            $images = $request->file('machineimage');

            $filename = time() . '_' . str_replace(' ', '_', $images->getClientOriginalName());
            $images->move(public_path('images'), $filename);
        }
      
        Machineservice::create([
            'machineimage' => $filename,
            'machinetitle' => $request->machinetitle,
            'description' => $request->description,
            'is_service' => 1,

        ]);
        return redirect('admin/service1/list')->with('success', 'uploaded successfully.');
    }
    public function client_update(Request $request,$id)
    {
        $user = Machineservice::find($id);
       
        if ($request->hasFile('machineimage')) {
            $images = $request->file('machineimage');

            $filename = time() . '_' . str_replace(' ', '_', $images->getClientOriginalName());
            $images->move(public_path('images'), $filename);
         $user->machineimage=$filename;

        }    
        else{
            $user->machineimage=$user->machineimage;
        }
        $user->description=$request->description;
        $user->machinetitle=$request->machinetitle;
        $user->save();
        return redirect('admin/service1/list')->with('success', 'updated successfully.');
    }
     public function serviceedit($id)
    {
        $record = Machineservice::find($id);
        return response()->json($record);
    }
    public function deleteclient($id)
    {
        $user = Machineservice::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Deleted');
    }
    public function testdelete($id)
    {
        $user = Machineservice::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Deleted');
    } 
    public function clientedit($id)
    {
        $record = Machineservice::find($id);
        return response()->json($record);
    } 
    public function Bannerlist(Request $request)
    {
         $data['getRecord'] = Banner::all();

        return view('admin.machine.banner',$data);
    }
    public function create_banner(Request $request)
    {
        //  dd($request->all());
        $data = new Banner();
        $title = $request->input('title');
        $description = $request->input('description');
        $data->title = json_encode(['title' => $title]);
        $data->description = json_encode(['description' => $description]);
        if ($request->hasFile('image')) {
            $images = $request->file('image');

            $filename = time() . '_' . str_replace(' ', '_', $images->getClientOriginalName());
            $images->move(public_path('images'), $filename);
        }
        $data->image = $filename;      
        $data->save();
        return redirect('admin/Banner/Bannerlist')->with('success', ' Added successfully.');
    }
    public function banner_delete($id, Request $request)
    {
        $image = Banner::find($id);
        $image->delete();
        return redirect('admin/Banner/Bannerlist')->with('success', ' Deleted successful');
    }
    public function banner_edit($id, Request $request)
    {
        $data['getRecord'] = Banner::find($id);
        // dd($data['getRecord']);
        return view('admin.machine.edit_banner', $data);
    }
    public function banner_update($id, Request $request)
    {

      
        $data = Banner::find($id);
        $title = $request->input('title');
        $description = $request->input('description');
        $data->title = json_encode(['title' => $title]);
        $data->description = json_encode(['description' => $description]);
        if ($request->hasFile('image')) {
            $images = $request->file('image');

            $filename = time() . '_' . str_replace(' ', '_', $images->getClientOriginalName());
            $images->move(public_path('images'), $filename);
            $data->image = $filename;
        } else {
            $data->image = $data->image;
        }
        $data->save();
        return redirect('admin/Banner/Bannerlist')->with('success', ' updated');
    }
    public function detail_list()
    {
         $data['getRecord'] = Detail::get();
        //  $data['getRecord1'] = Machineservice::where('is_service', 1)->get();

        $data['header_title'] = "Admin List";

        return view('admin.machine.detail',$data);
    }
    public function detail_add(Request $request)
    {

        Detail::create([
            'dnumber' => $request->dnumber,
            'wnumber' => $request->wnumber,
            'mail' => $request->mail,
            'address' =>  $request->address,
            'header' =>  $request->header,
            'footer' =>  $request->footer,


        ]);
        return redirect('admin/detail/list')->with('success', 'uploaded successfully.');
    }
    public function detail_update(Request $request,$id)
    {
        $user = Detail::find($id);
 
        // $user->image=$filename;
        $user->dnumber=$request->dnumber;
        $user->wnumber=$request->wnumber;
        $user->address=$request->address;
        $user->mail=$request->mail;
        $user->header=$request->header;
        $user->footer=$request->footer;

        $user->save();
        return redirect('admin/detail/list')->with('success', 'updated successfully.');
    }
    public function detailedit($id)
    {
        $record = Detail::find($id);
        return response()->json($record);
    }
    public function detaildelete($id)
    {
        $user = Detail::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Deleted');
    }

    public function social_list()
    {
         $data['getRecord'] = social::where('is_social', 0)->get();
         $data['getRecord1'] = social::where('is_social', 1)->get();

        $data['header_title'] = "Admin List";

        return view('admin.machine.social',$data);
    }
    public function social_add(Request $request)
    {
 
        social::create([
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'google' =>  $request->google,
            'instagram' =>  $request->instagram,

            'is_social' => 0,

        ]);
        return redirect('admin/social/list')->with('success', 'uploaded successfully.');
    }
    public function social_update(Request $request,$id)
    {
        $user = social::find($id);
       
   
        $user->facebook=$request->facebook;
        $user->twitter=$request->twitter;
        $user->google=$request->google;
        $user->instagram=$request->instagram;

        $user->save();
        return redirect('admin/social/list')->with('success', 'updated successfully.');
    }
    public function socialedit($id)
    {
        $record = social::find($id);
        // dd($record);
        return response()->json($record);
    }
    public function socialclient($id)
    {
        $user = social::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Deleted');
    }
    public function query_add(Request $request)
    {
        social::create([
            'contact' => $request->contact,
            'description' => $request->description,
            'is_social' => 1,

        ]);
        return redirect('admin/social/list')->with('success', 'uploaded successfully.');
    }
    public function query_update(Request $request,$id)
    {
        $user = social::find($id);
       
        
        // $user->image=$filename;
        $user->contact=$request->contact;
        $user->description=$request->description;
     

        $user->save();
        return redirect('admin/social/list')->with('success', 'updated successfully.');
    }
    public function queryedit($id)
    {
        $record = social::find($id);
        return response()->json($record);
    }
    public function querydelete($id)
    {
        $user = social::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Deleted');
    } 
}
