<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>

        <title>CS DEPARTMENT MVSC</title>
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

        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.css">
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

        <!---gallery start---->

        <div class="container-fluid">
            <div class="jumbotron jumgallery">
                <center>
                    <h1 class="display-4"><b> Our Gallery</b> </h1>
                    <hr class="w-25 mx-auto text-info">
                </
            </div>

            <div class="row gallery">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/g1.jpg">
                        <img class="img-fluid"src="img/g1.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/college1.jpg">
                        <img class="img-fluid"src="img/college1.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/college2.jpg">
                        <img class="img-fluid"src="img/college2.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/cs3.jpg">
                        <img class="img-fluid"src="img/cs3.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/g7.jpg">
                        <img class="img-fluid"src="img/g7.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/gp1.jpg">
                        <img class="img-fluid"src="img/gp1.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/gp2.jpg">
                        <img class="img-fluid"src="img/gp2.jpg">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <a href="img/gp3.jpg">
                        <img class="img-fluid"src="img/gp3.jpg">
                    </a>
                </div>
            </div>
        </div>


    </section>
    <!---gallery end---->


    <footer class="text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" >
            <p >&copy; 2023 Cs department . All rights reserved.</p>
        </div>

    </footer>


    <!---js start---->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
    <script>
        baguetteBox.run(".gallery", {
            animation: "slideIn"
        });
    </script>
    <!---js end---->

</body>
</html>