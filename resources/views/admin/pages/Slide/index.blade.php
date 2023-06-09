@extends('admin.partials.master')
@section('admin-content')
    <main>
        <div class="container">
            <!-- row -->
            <div class="row mb-8">
                <div class="col-md-12">
                    <div class="d-md-flex justify-content-between align-items-center">
                        <!-- pageheader -->
                        <div>
                            <h2>Slide</h2>
                            <!-- breacrumb -->
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Dashboard</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Slide</li>
                                </ol>
                            </nav>
                        </div>
                        <!-- button -->
                        <div>
                            <a href="{{ Route('adminAddSlides') }}" class="btn btn-primary">Add New Slide</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <div class="row ">
                <div class="col-xl-12 col-12 mb-5">
                    <!-- card -->
                    <div class="card h-100 card-lg">
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
                                            <th>Created At</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($slides as $slide)
                                            <tr>
                                                <td>{{ $slide->id_slide }}</td>
                                                <td style="text-align: center">
                                                    <img src="{{ asset('images/slider/' . $slide->image) }}"
                                                        alt="{{ $slide->image }}" style="width: 200px;">
                                                    <br>
                                                    <br>
                                                    <span style="color:red;">1660 x 625 px</span>
                                                </td>
                                                <td><a
                                                        href="{{ Route('adminShowSlides', $slide->id_slide) }}">{{ $slide->title }}</a>
                                                </td>
                                                <td>{{ $slide->updated_at }}</td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a href="#" class="text-reset" data-bs-toggle="dropdown"
                                                            aria-expanded="false">
                                                            <i class="fa-solid fa-ellipsis-vertical fs-5"></i>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <li>
                                                                <a class="dropdown-item"
                                                                    href="{{ Route('adminShowSlides', $slide->id_slide) }}">
                                                                    <i class="bi bi-eye me-3"></i>Detail</a>
                                                            </li>

                                                            <li>
                                                                <a class="dropdown-item"
                                                                    href="{{ Route('adminEditSlides', $slide->id_slide) }}">
                                                                    <i class="bi bi-pencil-square me-3"></i>Edit</a>
                                                            </li>
                                                            <li>
                                                                <form
                                                                    action="{{ Route('adminDeleteSlides', $slide->id_slide) }}"
                                                                    method="POST">
                                                                    @csrf
                                                                    @method('DELETE')
                                                                    <button type="submit" class="dropdown-item">
                                                                        <i class="bi bi-trash me-3"></i>Delete
                                                                    </button>
                                                                </form>
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
                                {{ $slides->links('pagination::bootstrap-5') }}
                            </div> --}}
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </main>
@endsection
