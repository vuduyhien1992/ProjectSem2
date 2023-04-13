<nav class="navbar-vertical-nav d-none d-xl-block">
    <div class="navbar-vertical">
        <div class="px-4 py-5">
            <a href="{{ Route('index') }}" class="navbar-brand">
                <img src="{{ asset('images/logo/freshcart-logo.svg') }}" alt="" />
            </a>
        </div>
        <div class="navbar-vertical-content flex-grow-1" data-simplebar="">
            <ul class="navbar-nav flex-column" id="sideNavbar">
                <li class="nav-item">
                    <a class="nav-link active" href="{{ Route('dashboard') }}">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon">
                                <i class="bi bi-house"></i></span>
                            <span class="nav-link-text">Dashboard</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item mt-6 mb-3">
                    <span class="nav-label">Store Managements</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ Route('adminProduct') }}">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-cart"></i></span>
                            <span class="nav-link-text">Products</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ Route('adminCategories') }}">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon">
                                <i class="bi bi-list-task"></i></span>
                            <span class="nav-link-text">Categories</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                        data-bs-target="#navCategoriesOrders" aria-expanded="false" aria-controls="navCategoriesOrders">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-bag"></i></span>
                            <span class="nav-link-text">Orders</span>
                        </div>
                    </a>
                    <div id="navCategoriesOrders" class="collapse" data-bs-parent="#sideNavbar">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Route('adminOrderList') }}">
                                    List
                                </a>
                            </li>
                            <!-- Nav item -->
                            <li class="nav-item">
                                <a class="nav-link" href="{{ Route('adminOrderSingle') }}">
                                    Single
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>

                {{-- <li class="nav-item">
                    <a class="nav-link" href="./dashboard/vendor-grid.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-shop"></i></span>
                            <span class="nav-link-text">Sellers / Vendors</span>
                        </div>
                    </a>
                </li> --}}
                <li class="nav-item">
                    <a class="nav-link" href="{{ Route('adminCustomers') }}">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon">
                                <i class="bi bi-people"></i></span>
                            <span class="nav-link-text">Customers</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ Route('adminReviews') }}">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-star"></i></span>
                            <span class="nav-link-text">Reviews</span>
                        </div>
                    </a>
                </li>
                <!-- Nav item -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                        data-bs-target="#navMenuLevelFirst" aria-expanded="false" aria-controls="navMenuLevelFirst">
                        <span class="nav-link-icon"><i class="bi bi-arrow-90deg-down"></i></span>
                        <span class="nav-link-text">Menu Level</span>
                    </a>
                    <div id="navMenuLevelFirst" class="collapse" data-bs-parent="#sideNavbar">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-bs-toggle="collapse"
                                    data-bs-target="#navMenuLevelSecond1" aria-expanded="false"
                                    aria-controls="navMenuLevelSecond1">
                                    Two Level
                                </a>
                                <div id="navMenuLevelSecond1" class="collapse" data-bs-parent="#navMenuLevel">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">NavItem 1</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">NavItem 2</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                                    data-bs-target="#navMenuLevelThreeOne1" aria-expanded="false"
                                    aria-controls="navMenuLevelThreeOne1">
                                    Three Level
                                </a>
                                <div id="navMenuLevelThreeOne1" class="collapse" data-bs-parent="#navMenuLevel">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                                                data-bs-target="#navMenuLevelThreeTwo" aria-expanded="false"
                                                aria-controls="navMenuLevelThreeTwo">
                                                NavItem 1
                                            </a>
                                            <div id="navMenuLevelThreeTwo" class="collapse collapse"
                                                data-bs-parent="#navMenuLevelThree">
                                                <ul class="nav flex-column">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="#">
                                                            NavChild Item 1
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#">Nav Item 2</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<nav class="navbar-vertical-nav offcanvas offcanvas-start navbar-offcanvac" tabindex="-1" id="offcanvasExample">
    <div class="navbar-vertical">
        <div class="px-4 py-5 d-flex justify-content-between align-items-center">
            <a href="./index.html" class="navbar-brand">
                <img src="{{ asset('images/logo/freshcart-logo.svg') }}" alt="" />
            </a>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="navbar-vertical-content flex-grow-1" data-simplebar="">
            <ul class="navbar-nav flex-column">
                <li class="nav-item">
                    <a class="nav-link active" href="./dashboard/index.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon">
                                <i class="bi bi-house"></i></span>
                            <span>Dashboard</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item mt-6 mb-3">
                    <span class="nav-label">Store Managements</span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./dashboard/products.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-cart"></i></span>
                            <span class="nav-link-text">Products</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./dashboard/categories.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon">
                                <i class="bi bi-list-task"></i></span>
                            <span class="nav-link-text">Categories</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                        data-bs-target="#navOrders" aria-expanded="false" aria-controls="navOrders">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-bag"></i></span>
                            <span class="nav-link-text">Orders</span>
                        </div>
                    </a>
                    <div id="navOrders" class="collapse" data-bs-parent="#sideNavbar">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="./dashboard/order-list.html">
                                    List
                                </a>
                            </li>
                            <!-- Nav item -->
                            <li class="nav-item">
                                <a class="nav-link" href="./dashboard/order-single.html">
                                    Single
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./dashboard/vendor-grid.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-shop"></i></span>
                            <span class="nav-link-text">Sellers / Vendors</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./dashboard/customers.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon">
                                <i class="bi bi-people"></i></span>
                            <span class="nav-link-text">Customers</span>
                        </div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./dashboard/reviews.html">
                        <div class="d-flex align-items-center">
                            <span class="nav-link-icon"> <i class="bi bi-star"></i></span>
                            <span class="nav-link-text">Reviews</span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
