<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blogsco;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class SitemapController extends Controller
{


    public function index(): Response{
        $post = Blogsco::latest()->get();
        return Response()->view('sitemap',['post' => $post])->header('Content-Type','text/xml');
    }

   
}
