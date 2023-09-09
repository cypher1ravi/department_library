<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>

        <title><b>CS DEPARTMENT MVSC</b></title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">

        <!---css start---->   
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="other/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
        <!---css bt end---->


    </head>
    <body>
        <!---navbar start---->

        <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">          
            <div class="container-fluid">
                <div class=" text-center pr-5" ><img src="img/logo2.png">
                    <p class="text-info h5"><sub><h5>Cs Department</h5> </sub><p>
                </div>
                <button class="navbar-toggler  " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon text-info">
                        <i class="bi bi-list"style="font-size: 2rem;"></i>
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active " aria-current="page" href="index.jsp"><b>Home</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="About Us.jsp"><b>About Us</b></a>
                        </li>
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <b>Courses</b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item text-primary" href="bsc.jsp" >Bachelors</a></li>
                                <li><a class="dropdown-item  text-primary" href="msc.jsp" >Masters</a></li>
                            </ul>
                        </li>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="Gallery.jsp"><b>Gallery</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="Services.jsp"><b>Services</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="Contact.jsp"><b>Contact</b></a>
                        </li>
                    </ul>
                    <a href="index2.jsp " target="blank">
                        <button class="btn btn-success me-2 " ><i class="bi bi-box-arrow-in-right mr-1"></i>Sing In</button>
                    </a>
                </div>
            </div>
        </nav>

        <!---Navbar end---->
        <div id="alert-main" class="alert alert-dismissible fade show alert-info" role="alert" >
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            <strong>Welcome ! </strong> To Computer science department.

        </div>
        <!---carousel start---->
        <header style="height: 100%">
            <div id="carouselExampleAutoplaying" class="carousel slide my-2 mx-2" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/college1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/college2.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/college4.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

        </header>
        <!---carousel end---->



        <!-- footer start -->

        <footer class="text-center text-lg-start" >
            <div class="text-center p-3 " >
                <p >&copy; 2023 Cs department . All rights reserved.</p>
            </div>
        </footer>
        <!-- footer end -->


        <!---js start---->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="other/script.js"></script>
        <!---js end---->

    </body>
</html>