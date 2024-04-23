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
use App\Models\Tag;



use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use App\Models\Blog;
use App\Models\Blogimage;

use Illuminate\Support\Facades\File;

use Illuminate\Support\Facades\Log;
use App\Models\Contentblog;
use App\Models\Team;

class NewsController extends Controller
{
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
            'category' => $request->dnumber,
        ]);
        return redirect('admin/detail/list')->with('success', 'uploaded successfully.');
    }
    public function detail_update(Request $request,$id)
    {
        $user = Detail::find($id);
        // $user->image=$filename;
        $user->category=$request->dnumber;


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

    public function tag_list()
    {
         $data['getRecord'] = Tag::get();
        //  $data['getRecord1'] = Machineservice::where('is_service', 1)->get();

        $data['header_title'] = "Admin List";

        return view('admin.machine.tag',$data);
    }
    public function tag_add(Request $request)
    {

        Tag::create([
            'tag' => $request->dnumber,
        ]);
        return redirect('admin/tag/list')->with('success', 'uploaded successfully.');
    }
    public function tag_update(Request $request,$id)
    {
        $user = Tag::find($id);
        // $user->image=$filename;
        $user->tag=$request->dnumber;


        $user->save();
        return redirect('admin/tag/list')->with('success', 'updated successfully.');
    }
    public function tagedit($id)
    {
        $record = Tag::find($id);
        return response()->json($record);
    }
    public function tagdelete($id)
    {
        $user = Tag::find($id);
        $user->delete();
        return redirect()->back()->with('success', 'Deleted');
    }

}
