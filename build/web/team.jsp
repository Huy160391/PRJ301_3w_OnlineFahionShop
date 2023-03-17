<%-- 
    Document   : team
    Created on : Mar 13, 2023, 12:40:51 PM
    Author     : legia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Hotelier - Hotel HTML Template</title>
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

<boddiv class="container-xxl bg-white p-0">
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
                            <h1 class="m-0 text-primary text-uppercase">Hotelier</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                <div class="navbar-nav mr-auto py-0">
                                    <a href="home.jsp" class="nav-item nav-link active">Home</a>
                                    <a href="room.jsp" class="nav-item nav-link">Blogs</a>
                                    <a href="contact.jsp" class="nav-item nav-link">Contact</a>

                                    <div class="nav-item dropdown">
                                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login</a>
                                        <div class="dropdown-menu rounded-0 m-0">
                                            
                                            <a href="team.jsp" class="dropdown-item">Team</a>
                                            <a href="login.jsp" class="dropdown-item">Login</a>
                                            <a href="createAccount.jsp" class="dropdown-item">Sign Up</a>
                                            <a href="login.jsp" class="dropdown-item">Log out</a>

                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <!-- Header End -->


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(img/carousel-1.jpg);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Our Team</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                            <li class="breadcrumb-item"><a href="room.jsp">Blogs</a></li>

                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        


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


        <!-- Newsletter Start -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row justify-content-center">
                <div class="col-lg-10 border rounded p-1">
                    <div class="border rounded text-center p-1">
                        <div class="bg-white rounded text-center p-5">
                            <h4 class="mb-4">Subscribe Our <span class="text-primary text-uppercase">Newsletter</span></h4>
                            <div class="position-relative mx-auto" style="max-width: 400px;">
                                <input class="form-control w-100 py-3 ps-4 pe-5" type="text" placeholder="Enter your email">
                                <button type="button" class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter Start -->
        

        <!-- Footer Start -->
                                <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.1s">
                                    <div class="container pb-5">
                                        <div class="row g-5">
                                            <div class="col-md-6 col-lg-4">
                                                <div class="bg-primary rounded p-4">
                                                    <a href="home.jsp"><h1 class="text-white text-uppercase mb-3">TRAVEL BLOG</h1></a>
                                                    <p class="text-white mb-0">
                                                        Download <a class="text-dark fw-medium" href="https://htmlcodex.com/hotel-html-template-pro">Hotelier ? Premium Version</a>, build a professional website for your hotel business and grab the attention of new visitors upon your site?s launch.
                                                    </p>
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
                                                        <a class="btn btn-link" href="">Contact Us</a>
                                                        <a class="btn btn-link" href="">Privacy Policy</a>
                                                        <a class="btn btn-link" href="">Terms & Condition</a>
                                                        <a class="btn btn-link" href="">Support</a>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <h6 class="section-title text-start text-primary text-uppercase mb-4">Services</h6>
                                                        <a class="btn btn-link" href="">Food & Restaurant</a>
                                                        <a class="btn btn-link" href="">Spa & Fitness</a>
                                                        <a class="btn btn-link" href="">Sports & Gaming</a>
                                                        <a class="btn btn-link" href="">Event & Party</a>
                                                        <a class="btn btn-link" href="">GYM & Yoga</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Footer End -->



        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
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