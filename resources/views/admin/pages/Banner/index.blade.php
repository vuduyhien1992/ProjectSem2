@extends('admin.partials.master')
@section('admin-content')
    <main>
        <div class="container">
            <div class="row mb-8">
                <div class="col-md-12">
                    <div>
                        <!-- page header -->
                        <h2>Banners</h2>
                        <!-- breacrumb -->
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Banners</li>
                            </ol>
                        </nav>

                    </div>
                </div>
            </div>
            <!-- row -->
            <div class="row ">
                <div class="col-xl-12 col-12 mb-5">
                    <!-- card -->
                    <div class="card h-100 card-lg">
                        <div class="p-6 ">
                            <div class="row justify-content-between">
                                <div class="col-md-4 col-12 mb-2 mb-md-0">
                                    <!-- form -->
                                    {{-- <form action="{{ Route('review.findByName') }}" class="d-flex" role="search">
                                        <input class="form-control" type="search" placeholder="Search Rating"
                                            aria-label="Search" name="product">
                                        <button class="btn btn-primary" value="Search"><i
                                                class="fas fa-search"></i></button>
                                    </form> --}}
                                </div>
                                <div class="col-lg-2 col-md-4 col-12">
                                    {{-- <form action="{{ Route('review.findByName') }}" class="d-flex" role="search">
                                        <select class="form-select" name="rating" onchange="this.form.submit()">
                                            <option selected>Select Rating</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                            <option value="4">Four</option>
                                            <option value="5">Five</option>
                                        </select>
                                    </form> --}}
                                </div>
                            </div>
                        </div>
                        <!-- card body -->
                        <div class="card-body p-0">
                            <!-- table -->
                            <div class="table-responsive">
                                <table
                                    class="table table-centered table-hover table-borderless mb-0 table-with-checkbox text-nowrap">
                                    <thead class="bg-light">
                                        <tr>
                                            <th>No.</th>
                                            <th>Images</th>
                                            <th>Title</th>
                                            <th>Content</th>
                                            <th>Created At</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($banners as $banner)
                                            <tr>
                                                <td>{{ $banner->id_banner }}</td>
                                                <td>
                                                    <img src="{{ asset('images/banner/' . $banner->image) }}"
                                                        alt="{{ $banner->image }}" style="width: 200px;">
                                                </td>
                                                <td><a
                                                        href="{{ Route('adminShowBanners', $banner->id_banner) }}">{{ $banner->title }}</a>
                                                </td>
                                                <td>{{ $banner->content }}</td>
                                                <td>{{ $banner->updated_at }}</td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a href="#" class="text-reset" data-bs-toggle="dropdown"
                                                            aria-expanded="false">
                                                            <i class="fa-solid fa-ellipsis-vertical fs-5"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li>
                                                                <a class="dropdown-item"
                                                                    href="{{ Route('adminShowBanners', $banner->id_banner) }}">
                                                                    <i class="bi bi-eye me-3"></i>Detail</a>
                                                            </li>

                                                            <li>
                                                                <a class="dropdown-item"
                                                                    href="{{ Route('adminEditBanners', $banner->id_banner) }}">
                                                                    <i class="bi bi-pencil-square me-3"></i>Edit</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>

                            </div>

                            {{-- <div class="p-5">
                                {{ $banners->links('pagination::bootstrap-5') }}
                            </div> --}}
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </main>
@endsection