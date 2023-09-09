
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>

        <title>CS DEPARTMENT </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <!---css start---->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
        <link rel="stylesheet" type="text/css" href="other/style.css">
        <!---css  end---->


    </head>
    <body>
        <!---navbar start---->

        <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top" >
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
        <!-------end of navbar---->

        <section class="main_heading my-5">
            <div class="text-center">
                <h1 class="display-4"><b>About Us</b> </h1>
                <hr class="w-25 mx-auto text-info">
            </div>
            <div class="container">
                <div class="row my-5">
                    <div class="col-lg-6 col-md-6 col-12 col-xxl-6">
                        <figure>
                            <img src="img/g5.jpg" alt="about image" class="img-fluid">
                        </figure>

                    </div>
                    <div class="col-lg-6 col-md-6 col-12 col-xxl-6 d-flex justify-content-center align-item-start flex-column">
                        <h1 class="bg-info"><b><i>WHY LIBRARIES</i></b></h1>
                        <P>
                            A library is a collection of materials, books or media that are accessible for use and not just
                            for display purposes. A library provides physical (hard copies) or digital access (soft copies)
                            materials, and may be a physical location or a virtual space, or both. A library's collection can
                            include printed materials and other physical resources in many formats such as DVD, CD and cassette
                            as well as access to information, music or other content held on bibliographic databases.



                        </P>



                    </div>
                </div>


                <div>
                    <h1 class="bg-info text-right"><b><i>HISTORY</i></b></h1>
                    <p>The history of libraries began with the first efforts to organize collections of documents.[2] The first
                        libraries consisted of archives of the earliest form of writing—the clay tablets in cuneiform script
                        discovered in Sumer, some dating back to 2600 BC. Private or personal libraries made up of written books
                        appeared in classical Greece in the 5th century BC. In the 6th century, at the very close of the Classical
                        period, the great libraries of the Mediterranean world remained those of Constantinople and Alexandria.
                    </p>
                    <h1 class="bg-info"><b><i>VISSION</i> </b></h1>
                    <p> The vision of the Library to support the institution
                        and its stakeholder by providing seamless access to the widest possible spectrum of information resources
                        such as digital, online databases, print and non-print materials relevant to the curricular, informational
                        and innovative research needs of the academic community', means to provide Right Information to the Right
                        Users at the Right Time and in the Right Format.
                    </p>
                    <h1 class="bg-info text-right"><b><i>MISSION</i> </b></h1>
                    <p>

                        The mission is to provide college students with the information they need to achieve their highest
                        academic potential and help them acquire research skills necessary for lifelong learning. To support
                        teaching faculty & administrative staff and to participate in interactive information to exchange within
                        the wider library / educational community.
                    </p>
                </div>
        </section>


        <footer class=" text-center text-lg-start">
            <!-- Copyright -->
            <div class="text-center p-3" >
                <p >&copy; 2023 Cs department . All rights reserved.</p>
            </div>

        </footer>


        <!---js start---->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="other/script.js"></script>
        <!---js end---->

    </body>
</html>