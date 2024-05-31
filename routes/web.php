<?php

use Illuminate\Support\Facades\Route;
use App\Mail\SendMail;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\MailController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\OrdersController;
use App\Http\Controllers\Web\HomeController;
use App\Http\Controllers\Web\PageController;
use App\Http\Controllers\Web\LoginController;
use App\Http\Controllers\Web\RegisterController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\Web\ProductDetailsController;
use App\Http\Controllers\web\CartController;
use App\Http\Controllers\web\CheckoutController;
use App\Http\Controllers\web\OrderDetailsController;
use App\Http\Controllers\Admin\FranchiseController;
use App\Http\Controllers\Admin\BlogController;
use App\Http\Controllers\Admin\DemoController;
use App\Http\Controllers\Admin\ScoController;
use App\Http\Controllers\Machine\MachineController;
use App\Http\Controllers\Admin\MachineController1;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\SitemapController;
use Spatie\Permission\Models\Role;     
use App\Http\Controllers\Admin\NewsController;
use App\Http\Controllers\News\NewsController1;

    $user = Role::all();
    $userRoles = $user->pluck('name')->toArray();
    $middlewareString = 'role:' . implode('|', $userRoles);

    Route::group(['middleware' => 'auth'], function () {


    //category
    Route::get('admin/detail/list', [NewsController::class, 'detail_list'])->name('detail-list');
    Route::post('admin/detail/add', [NewsController::class, 'detail_add'])->name('add-detail');
    Route::post('admin/detail/update/{id}', [NewsController::class, 'detail_update'])->name('updatedetail');
    Route::get('admin/detail/edit/{id}', [NewsController::class, 'detailedit']);
    Route::get('admin/detail/delete/{id}', [NewsController::class, 'detaildelete']);
    //tag
    Route::get('admin/tag/list', [NewsController::class, 'tag_list'])->name('tag-list');
    Route::post('admin/tag/add', [NewsController::class, 'tag_add'])->name('tag-detail');
    Route::post('admin/tag/update/{id}', [NewsController::class, 'tag_update'])->name('updatetag');
    Route::get('admin/tag/edit/{id}', [NewsController::class, 'tagedit']);
    Route::get('admin/tag/delete/{id}', [NewsController::class, 'tagdelete']);
    //no
    Route::get('admin/dashboard', [DashboardController::class, 'dashboard']);
    //admin
    Route::get('admin/admin/list', [AdminController::class, 'admin_list']);
    Route::get('admin/admin/add', [AdminController::class, 'admin_add']);
    Route::post('admin/admin/add', [AdminController::class, 'add_admin_insert']);
    Route::get('admin/admin/edit/{id}', [AdminController::class, 'add_admin_edit']);
    Route::post('admin/admin/edit/{id}', [AdminController::class, 'admin_add_update']);
    Route::get('admin/admin/delete/{id}', [AdminController::class, 'admin_add_delete']);
    //role
    Route::get('admin/role/role', [AdminController::class, 'role_list']);
    Route::get('admin/role/permissionto/{id}', [AdminController::class, 'addpermission']);

    Route::post('admin/role/givepermission/{id}', [AdminController::class, 'givepermission']);
    Route::post('admin/create_role/create_role', [AdminController::class, 'add_role'])->name('add_role');
    Route::post('admin/edit_role/edit_role', [AdminController::class, 'update'])->name('update_role');
    Route::post('admin/role/roledelete/{id}', [AdminController::class, 'roledelete']);

    //logo
    Route::get('admin/logo/logo', [BlogController::class, 'logo'])->name('blog-logo');
    Route::post('admin/addlogo/logo', [BlogController::class, 'create_logo'])->name('create-logo');
    Route::get('admin/logo/delete/{id}', [BlogController::class, 'gallery_delete'])->name('delete-brand');
    //   SCO blog no sco
    Route::get('admin/blogseo/bloglist', [ScoController::class, 'bloglist'])->name('blogsco-list');
    Route::get('admin/blogseo/blogcreate', [ScoController::class, 'createblog'])->name('create-blog');
    Route::get('/getTags', [ScoController::class, 'getTags']);
    Route::get('/get-states', [NewsController::class, 'getStates'])->name('get-states');
    Route::post('/store-tag', [NewsController::class, 'store'])->name('store-tag');

    Route::post('admin/blogseo/addblog', [ScoController::class, 'create_blogsco'])->name('create-blogsco');
    Route::get('admin/blogseo/delete/{id}', [ScoController::class, 'blogsco_delete']);
    Route::get('admin/blogseo/edit/{id}', [ScoController::class, 'blogsco_edit']);
    Route::post('admin/blogseo/edit/{id}', [ScoController::class, 'blogsco_update'])->name('blogsco-update');

    Route::post('admin/sco/edit/{id}', [ScoController::class, 'sco_update'])->name('sco-update');
    Route::get('view_blogcontent/{id}', [ScoController::class, 'content_view'])->name('view_blogcontent');
    //message
    Route::get('admin/message', [MailController::class, 'maillist']);
    Route::get('admin/brand/deletemail/{id}', [MailController::class, 'deletemail']);
    //   SCO link
    Route::get('admin/seo/seolist', [ScoController::class, 'scolist'])->name('sco-list');
    Route::post('admin/seo/addlink', [ScoController::class, 'create_link'])->name('create-link');
    Route::get('admin/seo/delete/{id}', [ScoController::class, 'link_delete']);
    Route::get('admin/link/edit/{id}', [ScoController::class, 'link_edit']);
    Route::post('admin/link/edit/{id}', [ScoController::class, 'link_update'])->name('update-link');
    //   SCO home
    Route::get('admin/home/homelist', [ScoController::class, 'homelist'])->name('home-list');
    Route::post('admin/home/addhome', [ScoController::class, 'create_home'])->name('create-home');
    Route::get('admin/home/delete/{id}', [ScoController::class, 'home_delete']);
    Route::get('admin/home/edit/{id}', [ScoController::class, 'home_edit']);
    Route::post('admin/home/edit/{id}', [ScoController::class, 'home_update'])->name('home-update');
});
// }

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
// role:SuperAdmin
Route::middleware('SuperAdmin')->group(function () {
    //  Route::get('admin/brand/mail1', function () {Mail::to('@gmail.com')->send(new SendMail($data));});










    // Route::get('admin/brand/mail/{arg1}/{arg2}', [BrandController::class, 'mail']);





    // Route::get('mail1', [Website::class, 'mail']);


    // routes/web.php or routes/web/web.php (depending on your Laravel version)



    //   Route::delete('delete-image/{filename}', [BlogController::class, 'deleteImage'])->name('delete.image');

    //   SCO About
    Route::get('admin/about/aboutlist', [ScoController::class, 'aboutlist'])->name('about-list');
    Route::post('admin/about/addabout', [ScoController::class, 'create_about'])->name('create-about');
    Route::get('admin/about/delete/{id}', [ScoController::class, 'about_delete']);
    Route::get('admin/about/edit/{id}', [ScoController::class, 'about_edit']);
    Route::post('admin/about/edit/{id}', [ScoController::class, 'about_update'])->name('about-update');
    //   SCO service
    Route::get('admin/service/servicelist', [ScoController::class, 'servicelist'])->name('service-list');
    Route::post('admin/service/addservice', [ScoController::class, 'create_service'])->name('create-service');
    Route::get('admin/service/delete/{id}', [ScoController::class, 'service_delete']);
    Route::get('admin/service/edit/{id}', [ScoController::class, 'service_edit']);
    Route::post('admin/service/edit/{id}', [ScoController::class, 'service_update'])->name('service-update');
    //   SCO contact
    Route::get('admin/contact/contactlist', [ScoController::class, 'contactlist'])->name('contact-list');
    Route::post('admin/contact/addcontact', [ScoController::class, 'create_contact'])->name('create-contact');
    Route::get('admin/contact/delete/{id}', [ScoController::class, 'contact_delete']);
    Route::get('admin/contact/edit/{id}', [ScoController::class, 'contact_edit']);
    Route::post('admin/contact/edit/{id}', [ScoController::class, 'contact_update'])->name('contact-update');

    //   SCO content blog
    Route::get('admin/scoblog/scobloglist', [ScoController::class, 'scobloglist'])->name('scoblog-list');
    Route::post('admin/scoblog/addscoblog', [ScoController::class, 'create_scoblog'])->name('create-scoblog');
    Route::get('admin/scoblog/delete/{id}', [ScoController::class, 'scoblog_delete']);
    Route::get('admin/scoblog/edit/{id}', [ScoController::class, 'edit_scoblog']);
    Route::post('admin/scoblog/edit/{id}', [ScoController::class, 'scoblog_update'])->name('scoblog-update');
    //   SCO work
    Route::get('admin/work/worklist', [ScoController::class, 'worklist'])->name('work-list');
    Route::post('admin/work/addwork', [ScoController::class, 'create_work'])->name('create-work');
    Route::get('admin/work/delete/{id}', [ScoController::class, 'work_delete']);
    Route::get('admin/work/edit/{id}', [ScoController::class, 'work_edit']);
    Route::post('admin/work/edit/{id}', [ScoController::class, 'work_update'])->name('work-update');
    //SCO work find id page
    Route::get('admin/solo/solowork', [ScoController::class, 'soloworklist'])->name('solowork-list');
    Route::post('admin/solo/solowork', [ScoController::class, 'solowork_work'])->name('create-solowork');
    Route::get('admin/solowork/delete/{id}', [ScoController::class, 'solowork_delete']);
    Route::get('admin/solowork/edit/{id}', [ScoController::class, 'solowork_edit']);
    Route::post('admin/solowork/edit/{id}', [ScoController::class, 'solowork_update'])->name('solowork-update');
    //SCO blog page find id page
    Route::get('admin/oneblog/onebloglist', [ScoController::class, 'onebloglist'])->name('oneblog-list');
    Route::post('admin/oneblog/onebloglist', [ScoController::class, 'create_oneblog'])->name('create-oneblog');
    Route::get('admin/oneblog/delete/{id}', [ScoController::class, 'oneblog_delete']);
    Route::get('admin/oneblog/edit/{id}', [ScoController::class, 'oneblog_edit']);
    Route::post('admin/oneblog/edit/{id}', [ScoController::class, 'oneblog_update'])->name('oneblog-update');
    Route::post('/check-slug-availability', [ScoController::class, 'checkSlugAvailability']);
    Route::post('/validate-slug', 'ScoController@validateSlug')->name('validate-slug');
});

Route::post('logout', [LoginController::class, 'logout'])->name('logout');
Route::get('/', [NewsController1::class, 'index'])->name('home');
Route::get('/singlepage', [NewsController1::class, 'singlepage']);
Route::get('/contacts', [NewsController1::class, 'contact'])->name('contacts');
Route::get('/about1', [NewsController1::class, 'about']);
Route::get('/product', [NewsController1::class, 'product']);
// routes/web.php
Route::get('/blog/{id}', [NewsController1::class, 'getBlogData'])->name('blog');





Route::get('/about', [MachineController::class, 'about']);
Route::get('/service', [MachineController::class, 'service']);
Route::get('/getservice', [MachineController::class, 'getservice'])->name('getservice');

Route::get('/blog', [MachineController::class, 'blog']);
Route::get('/contact', [MachineController::class, 'contact']);
Route::get('/singleblog', [MachineController::class, 'singleblog']);
Route::get('admin', [AuthController::class, 'login']);
Route::post('admin', [AuthController::class, 'auth_login_admin']);
Route::get('admin/logout', [AuthController::class, 'logout_admin']);
Route::get('/header', [MachineController::class, 'get_logo1']);
Route::post('/contact', [MachineController::class, 'store'])->name('contact.store');
Route::get('/profile', [MachineController::class, 'get_profile']);
Route::get('/service1', [NewsController1::class, 'get_service']);
Route::get('/singleblog/{id}/{slug}', [MachineController::class, 'get_blog']);
Route::get('/allget', [MachineController::class, 'get_all']);
Route::get('/singleblog/{id}', [MachineController::class, 'get_single_blog']);
Route::get('sitemap.xml', [SitemapController::class, 'index']);



Route::group(['middleware' => ['role:']], function () {



    //details
    // Route::get('admin/detail/list', [MachineController1::class, 'detail_list'])->name('detail-list');
    // Route::post('admin/detail/add', [MachineController1::class, 'detail_add'])->name('add-detail');

    // Route::post('admin/detail/update/{id}', [MachineController1::class, 'detail_update'])->name('updatedetail');
    // Route::get('admin/detail/edit/{id}', [MachineController1::class, 'detailedit']);

    // Route::get('admin/detail/delete/{id}', [MachineController1::class, 'detaildelete']);

    Route::get('admin/admin1/list', [AdminController::class, 'admin_list1']);

    //link and Query
    Route::get('admin/social/list', [MachineController1::class, 'social_list'])->name('social-list');
    Route::post('admin/social/add', [MachineController1::class, 'social_add'])->name('add-social');
    // Route::post('admin/client/test', [MachineController1::class, 'test_add'])->name('add-test');
    Route::get('admin/social/edit/{id}', [MachineController1::class, 'socialedit']);
    Route::post('admin/social/update/{id}', [MachineController1::class, 'social_update'])->name('updatesocial');

    Route::post('admin/query/update/{id}', [MachineController1::class, 'query_update'])->name('updatequery');
    Route::get('admin/query/edit/{id}', [MachineController1::class, 'queryedit']);
    Route::post('admin/query/add', [MachineController1::class, 'query_add'])->name('add-query');

    Route::get('admin/social/delete/{id}', [MachineController1::class, 'socialclient']);

    Route::get('admin/query/delete/{id}', [MachineController1::class, 'querydelete']);
});
