@extends('admin.partials.master')
@section('admin-content')
    <main>
        <div class="container">
            <!-- row -->
            <div class="row mb-8">
                <div class="col-md-12">
                    <div class="d-md-flex justify-content-between align-items-center">
                        <!-- page header -->
                        <div>
                            <h2>Edit Product</h2>
                            <!-- breacrumb -->
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0">
                                    <li class="breadcrumb-item">
                                        <a href="#" class="text-inherit">Dashboard</a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a href="#" class="text-inherit">Products</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Edit Product
                                    </li>
                                </ol>
                            </nav>
                        </div>
                        <!-- button -->
                        <div>
                            <a href="{{ Route('adminProduct') }}" class="btn btn-light">Back to Product</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- row -->
            <div class="row">
                <div class="col-12">
                    <!-- card -->
                    <div class="card p-6 card-lg">
                        {{-- //asd asd asd --}}

                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h2>{{ __('Edit Product') }}</h2>
                                        </div>

                                        <div class="card-body">
                                            <form method="POST" action="{{ route('adminUpdateProduct', $id_product) }}"
                                                enctype="multipart/form-data">
                                                @csrf
                                                @method('PUT')
                                                <div class="form-group row mt-3">
                                                    <label for="name"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                                                    <div class="col-md-6">
                                                        <input id="name" type="text"
                                                            class="form-control @error('name') is-invalid @enderror"
                                                            name="name" value="{{ $id_product->name }}" required
                                                            autocomplete="name" autofocus>

                                                        @error('name')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="id_type"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Type') }}</label>

                                                    <div class="col-md-6">
                                                        <input type="text" class="form-control"
                                                            value="{{ $id_product->typeproduct->type }}" disabled>
                                                        <select id="id_type" name="id_type"
                                                            class="form-control @error('id_type') is-invalid @enderror"
                                                            required>
                                                            <option value="">-- Select Type --</option>
                                                            @foreach ($types as $type)
                                                                <option value="{{ $type->id_type }}"
                                                                    @if (old('id_type') == $type->id_type) selected @endif>
                                                                    {{ $type->type }}</option>
                                                            @endforeach
                                                        </select>

                                                        @error('id_type')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="description"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Description') }}</label>

                                                    <div class="col-md-6">
                                                        <textarea id="description" class="form-control @error('description') is-invalid @enderror" name="description" required>{{ $id_product->description }}</textarea>

                                                        @error('description')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="quantity"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Quantity') }}</label>

                                                    <div class="col-md-6">
                                                        <input id="quantity" type="number"
                                                            class="form-control @error('quantity') is-invalid @enderror"
                                                            name="quantity" value="{{ $id_product->quantity }}" required>

                                                        @error('quantity')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="original_price"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Original Price') }}</label>

                                                    <div class="col-md-6">
                                                        <input id="original_price" type="number"
                                                            class="form-control @error('original_price') is-invalid @enderror"
                                                            name="original_price" value="{{ $id_product->original_price }}"
                                                            required>

                                                        @error('original_price')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="price"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Price') }}</label>

                                                    <div class="col-md-6">
                                                        <input id="price" type="number"
                                                            class="form-control @error('price') is-invalid @enderror"
                                                            name="price" value="{{ $id_product->price }}" required>

                                                        @error('price')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="sale"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Sale') }}</label>

                                                    <div class="col-md-6">
                                                        <input id="sale" type="number"
                                                            class="form-control @error('sale') is-invalid @enderror"
                                                            name="sale" value="{{ $id_product->sale }}" required>

                                                        @error('sale')
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $message }}</strong>
                                                            </span>
                                                        @enderror
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3">
                                                    <label for="image"
                                                        class="col-md-4 col-form-label text-md-right">{{ __('Images') }}</label>

                                                    <div class="col-md-6">
                                                        @foreach ($id_product->libraries as $library)
                                                            <img src="{{ asset('images/products/' . $library->image) }}"
                                                                alt="" style="max-width:100px; height:auto;"
                                                                class="mt-3">
                                                        @endforeach
                                                        <input type="file" id="form5Example3" name="photos[]" multiple
                                                            onchange="previewImages()">
                                                        <div id="image-preview"></div>
                                                    </div>
                                                </div>

                                                <div class="form-group row mt-3 mb-0">
                                                    <div class="col-md-6 offset-md-4">
                                                        <button type="submit" class="btn btn-primary">
                                                            {{ __('Save') }}
                                                        </button>
                                                        <a href="{{ route('adminProduct') }}"
                                                            class="btn btn-secondary">{{ __('Cancel') }}</a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <script>
                            function previewImages() {
                                var preview = $('#image-preview');
                                preview.empty();
                                var files = $('#form5Example3')[0].files;
                                var promises = [];

                                for (var i = 0; i < files.length; i++) {
                                    var file = files[i];
                                    var reader = new FileReader();
                                    promises.push(new Promise(function(resolve, reject) {
                                        reader.onload = function(event) {
                                            var img = $('<img>').attr('src', event.target.result).attr('style',
                                                'width:100px;');
                                            preview.append(img);
                                            resolve();
                                        };
                                        reader.onerror = function(event) {
                                            reject(event.target.error);
                                        };
                                        reader.readAsDataURL(file);
                                    }));
                                }

                                Promise.all(promises).then(function() {
                                    console.log('All images loaded');
                                }).catch(function(error) {
                                    console.log(error);
                                });
                            }
                        </script>



                    </div>

                </div>
            </div>
    </main>
@endsection