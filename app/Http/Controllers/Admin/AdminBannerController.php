<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Banner;

class AdminBannerController extends Controller
{
    public function index()
    {
        $banners = Banner::all();
        return view('admin.pages.Banner.index', compact('banners'));
    }

    public function create()
    {
        return view('admin.pages.Banner.create');
    }

    public function store(Request $request)
    {
        $item = $request->all();

        if ($request->hasFile('photo')) { // kiểm tra xem có file hình tồn tại chưa
            $file = $request->file('photo');
            $ext = $file->getClientOriginalExtension();
            if ($ext != 'jpg' && $ext != 'jpeg' && $ext != 'png') {
                return redirect('admin/banner');
            }
            $imageFile = $file->getClientOriginalName();
            $file->move("images/banner", $imageFile);
        } else {
            $imageFile = null;
        }

        $item['image'] = $imageFile;
        Banner::create($item);
        return redirect('admin/banner');
    }

    public function show(Banner $id_banner)
    {
        return view('admin.pages.Banner.detail', compact('id_banner'));
    }

    public function edit(Banner $id_banner)
    {
        return view('admin.pages.Banner.update', compact('id_banner'));
    }

    public function update(Request $request, $id_banner)
    {
        $banners = Banner::findOrFail($id_banner);
        $banners->status        = $request->input('status');
        $banners->type          = $request->input('type');
        $banners->title         = $request->input('title');
        $banners->title_color   = $request->input('title_color');
        $banners->content       = $request->input('content');
        $banners->content_color = $request->input('content_color');
        $banners->btn_content   = $request->input('btn_content');
        $banners->btn_bg_color  = $request->input('btn_bg_color');
        $banners->btn_color     = $request->input('btn_color');
        $banners->link          = $request->input('link');
        $banners->attr          = $request->input('attr');

        if ($request->hasFile('photo')) {
            // Xóa hình ảnh hiện tại của sản phẩm
            // unlink(public_path('images/category/' . $cats->image));

            // Lưu tệp tin mới vào thư mục lưu trữ hình ảnh
            $file = $request->file('photo');
            // $extension = $file->getClientOriginalExtension();
            $filename = $file->getClientOriginalName();
            $file->move('images/banner', $filename);

            // Cập nhật tên tệp tin mới cho sản phẩm
            $banners->image = $filename;
        }

        $banners->save();

        return redirect()->route('adminBanners');
        // return view('admin.pages.Banner.update', compact('id_banner'));
    }

    public function delete($id_banner)
    {
        Banner::find($id_banner)->delete();
        return redirect()->route('adminBanners');
    }
}
