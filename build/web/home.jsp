
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type", content="text/html" charset="UTF-8">
        <title>TRAVEL BLOG - Hotel HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container-xxl bg-white p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->

            <!-- Header Start -->
            <div class="container-fluid bg-dark px-0">
                <div class="row gx-0">
                    <div class="col-lg-3 bg-dark d-none d-lg-block">
                        <a href="home.jsp" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                            <h1 class="m-0 text-primary text-uppercase">TRAVEL BLOG</h1>
                        </a>
                    </div>
                    <div class="col-lg-9">
                        <div class="row gx-0 bg-white d-none d-lg-flex">
                            <div class="col-lg-7 px-5 text-start">
                                <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                    <i class="fa fa-envelope text-primary me-2"></i>
                                    <p class="mb-0">Group8@fpt.edu.vn</p>
                                </div>
                                <div class="h-100 d-inline-flex align-items-center py-2">
                                    <i class="fa fa-phone-alt text-primary me-2"></i>
                                    <p class="mb-0">0335581250</p>
                                </div>
                            </div>
                            <div class="col-lg-5 px-5 text-end">
                                <div class="d-inline-flex align-items-center py-2">
                                    <a class="me-3" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="me-3" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="me-3" href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a class="me-3" href=""><i class="fab fa-instagram"></i></a>
                                    <a class="" href=""><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                        <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                            <a href="home.jsp" class="navbar-brand d-block d-lg-none">
                                <h1 class="m-0 text-primary text-uppercase">TRAVEL BLOG</h1>
                            </a>
                            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                <div class="navbar-nav mr-auto py-0">
                                    <a href="home.jsp" class="nav-item nav-link active">Home</a>
                                    <a href="room.jsp" class="nav-item nav-link">Blogs</a>
                                    <a href="team.jsp" class="nav-item nav-link">Team</a>
                                    <div class="nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                        <div class="dropdown-menu rounded-0 m-0">
                                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                            <a href="admin.jsp" class="dropdown-item">Manager Users</a>
                                            <a href="#" class="dropdown-item">Manager Places</a>
                                            </c:if>
                                            <c:if test="${sessionScope.acc == null}">
                                                <a href="login.jsp" class="dropdown-item">Login</a>
                                            </c:if>
                                            <c:if test="${sessionScope.acc != null}">
                                                <a href="login.jsp" class="dropdown-item">Logout</a>
                                            </c:if>
                                        </div>
                                    </div>
                                    </nav>
                                </div>
                            </div>
                    </div>
                    <!-- Header End -->


                    <!-- Carousel Start -->
                    <div class="container-fluid p-0 mb-5">
                        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="w-100" src="img/Binhthuan.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">VietNam Travel Blog</h6>
                                            <h1 class="display-3 text-white mb-4 animated slideInDown">Binh Thuan</h1>

                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="w-100" src="img/Lamdong.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">VietNam Travel Blog</h6>
                                            <h1 class="display-3 text-white mb-4 animated slideInDown">Lam Dong</h1>

                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="w-100" src="img/hue.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">VietNam Travel Blog</h6>
                                            <h1 class="display-3 text-white mb-4 animated slideInDown">Thua Thien Hue</h1>

                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="w-100" src="img/quangnam.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">VietNam Travel Blog</h6>
                                            <h1 class="display-3 text-white mb-4 animated slideInDown">Quang Nam</h1>

                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="w-100" src="img/Quangninh.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">VietNam Travel Blog</h6>
                                            <h1 class="display-3 text-white mb-4 animated slideInDown">Quang Ninh</h1>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <!-- Carousel End 
                    <!-- Room Start -->
                    <div class="container-xxl py-5">
                        <div class="container">
                            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                                <c:if test="${sessionScope.acc != null}">
                                    <h6 class="section-title text-center text-primary text-uppercase">Welcome ${sessionScope.acc.fullName}</h6>
                                </c:if>
                                <h1 class="mb-5">Top attractive tourist destinations in Vietnam</h1>
                            </div>
                            <div class="row g-4">
                                <c:forEach begin="1" end="6" var="o">
                                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="room-item shadow rounded overflow-hidden">
                                            <div class="position-relative">
                                                <img class="img-fluid" src="img/room-1.jpg" alt="">
                                            </div>
                                            <div class="p-4 mt-2">
                                                <div class="d-flex justify-content-between mb-3">
                                                    <h5 class="mb-0">Binh Thuan</h5>
                                                    <div class="ps-2">
                                                        <small class="fa fa-star text-primary"></small>
                                                        <small class="fa fa-star text-primary"></small>
                                                        <small class="fa fa-star text-primary"></small>
                                                        <small class="fa fa-star text-primary"></small>
                                                        <small class="fa fa-star text-primary"></small>
                                                    </div>
                                                </div>
                                                <div class="d-flex mb-3">
                                                    <small class="border-end me-3 pe-3"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                                    <small class="border-end me-3 pe-3"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                                    <small><i class="fa fa-wifi text-primary me-2"></i>Wifi</small>
                                                </div>
                                                <p class="text-body mb-3">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet lorem.</p>
                                                <div class="d-flex justify-content-between">
                                                    <a class="btn btn-sm btn-primary rounded py-2 px-4" href="">View Detail</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- Room End -->


                    <!-- Video Start -->
                    <div class="container-xxl py-5 px-0 wow zoomIn" data-wow-delay="0.1s">
                        <div class="row g-0">
                            <div class="col-md-12 bg-dark d-flex align-items-center">
                                <div class="p-5">
                                    <h6 class="section-title text-start text-white text-uppercase mb-3">WELCOME TO VIETNAM</h6>
                                    <h1 class="text-white mb-4">Discover A Brand Luxurious Hotel</h1>
                                    <p class="text-white mb-4">Vietnam is a country which situates in the South East Asia. Vietnam geography shapes S-letter and devided into three parts: Northern part, Middle part and Southern one. Ha Noi is the capital of Vietnam but it isn't the biggest city. Ho Chi Minh city is the largest city in Vietnam.
                                        Eco-tourism attractions attract tourists who love nature and want to spend time living there but sociable and close to beautiful nature.</p>
                                </div>
                            </div>

                        </div>
                        <!-- Video Start -->


                        <!-- Testimonial Start -->
                        <div class="container-xxl testimonial my-5 py-5 bg-dark wow zoomIn" data-wow-delay="0.1s">
                            <div class="container">
                                <div class="owl-carousel testimonial-carousel py-5">
                                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden">
                                        <p>Tempor stet labore dolor clita stet diam amet ipsum dolor duo ipsum rebum stet dolor amet diam stet. Est stet ea lorem amet est kasd kasd et erat magna eos</p>
                                        <div class="d-flex align-items-center">
                                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-1.jpg" style="width: 45px; height: 45px;">
                                            <div class="ps-3">
                                                <h6 class="fw-bold mb-1">Client Name</h6>
                                                <small>Profession</small>
                                            </div>
                                        </div>
                                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                                    </div>
                                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden">
                                        <p>Tempor stet labore dolor clita stet diam amet ipsum dolor duo ipsum rebum stet dolor amet diam stet. Est stet ea lorem amet est kasd kasd et erat magna eos</p>
                                        <div class="d-flex align-items-center">
                                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-2.jpg" style="width: 45px; height: 45px;">
                                            <div class="ps-3">
                                                <h6 class="fw-bold mb-1">Client Name</h6>
                                                <small>Profession</small>
                                            </div>
                                        </div>
                                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                                    </div>
                                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden">
                                        <p>Tempor stet labore dolor clita stet diam amet ipsum dolor duo ipsum rebum stet dolor amet diam stet. Est stet ea lorem amet est kasd kasd et erat magna eos</p>
                                        <div class="d-flex align-items-center">
                                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-3.jpg" style="width: 45px; height: 45px;">
                                            <div class="ps-3">
                                                <h6 class="fw-bold mb-1">Client Name</h6>
                                                <small>Profession</small>
                                            </div>
                                        </div>
                                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Testimonial End -->


                        <!-- Team Start -->
                        <div class="container-xxl py-5">
                            <div class="container">
                                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                                    <h6 class="section-title text-center text-primary text-uppercase">Our Team</h6>
                                    <h1 class="mb-5">Explore Our <span class="text-primary text-uppercase">Staffs</span></h1>
                                </div>
                                <div class="row g-4">
                                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="rounded shadow overflow-hidden">
                                            <div class="position-relative">
                                                <img class="img-fluid image" src="img/quanghuy.jpg" alt="">
                                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4 mt-3">
                                                <h5 class="fw-bold mb-0">Nguyen Quang Huy</h5>
                                                <small>SE160391</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="rounded shadow overflow-hidden">
                                            <div class="position-relative">
                                                <img class="img-fluid image" src="img/hoanganh.jpg" alt="">
                                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4 mt-3">
                                                <h5 class="fw-bold mb-0">Nguyen Le Hoang Anh</h5>
                                                <small>SE160406</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="rounded shadow overflow-hidden">
                                            <div class="position-relative">
                                                <img class="img-fluid" src="img/giatrieu.jpg" alt="">
                                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4 mt-3">
                                                <h5 class="fw-bold mb-0">Le Gia Trieu</h5>
                                                <small>SE160392</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                                        <div class="rounded shadow overflow-hidden">
                                            <div class="position-relative">
                                                <img class="img-fluid" src="img/giaphong.jpg" alt="">
                                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4 mt-3">
                                                <h5 class="fw-bold mb-0">Nguyen Gia Phong</h5>
                                                <small>SE160405</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Team End -->

                        <!--  Newsletter Start  -->

                        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
                            <div class="row justify-content-center">
                                <div class="col-lg-10 border rounded p-1">


                                </div>
                            </div>
                        </div>
                    </div><!--
                     Newsletter Start -->


                    <!-- Footer Start -->
                    <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.1s">
                        <div class="container pb-5">
                            <div class="row g-5">
                                <div class="col-md-6 col-lg-4">
                                    <div class="bg-primary rounded p-4">
                                        <a href="home.jsp"><h1 class="text-white text-uppercase mb-3">TRAVEL BLOG</h1></a>

                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3">
                                    <h6 class="section-title text-start text-primary text-uppercase mb-4">Contact</h6>
                                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>FPT University,Q9,Thu Duc city</p>
                                    <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+0335581250</p>
                                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>Group8@fpt.edu.vn</p>
                                    <div class="d-flex pt-2">
                                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                                        <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-12">
                                    <div class="row gy-5 g-4">
                                        <div class="col-md-6">
                                            <h6 class="section-title text-start text-primary text-uppercase mb-4">Company</h6>
                                            <a class="btn btn-link" href="">About Us</a>
                                            <a class="btn btn-link" href="">Privacy Policy</a>
                                            <a class="btn btn-link" href="">Terms & Condition</a>
                                            <a class="btn btn-link" href="">Support</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer End -->


                    <!-- Back to Top -->

                </div>

                <!-- JavaScript Libraries -->
                <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="lib/wow/wow.min.js"></script>
                <script src="lib/easing/easing.min.js"></script>
                <script src="lib/waypoints/waypoints.min.js"></script>
                <script src="lib/counterup/counterup.min.js"></script>
                <script src="lib/owlcarousel/owl.carousel.min.js"></script>
                <script src="lib/tempusdominus/js/moment.min.js"></script>
                <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
                <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

                <!-- Template Javascript -->
                <script src="js/main.js"></script>
                </body>

                </html>