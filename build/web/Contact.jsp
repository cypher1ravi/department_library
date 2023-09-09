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
        <!--Navabar End-->

        <!---contact start---->
        <div class="container-fluid">
            <br>
            <div class="row m-1">
                <div class="col-md-5">
                    <h2 class="bg-info"><b><i>College Address</i></b> </h2>
                    <br>
                    <p>Dewas Road,</p>
                    <p>Ujjain (456010)</p>
                    <p>Madhya Pradesh, INDIA</p>
                    <p>Phone:<a class="text-decoration-none text-danger" href="tel:0734-2511803">0734-2511803</a></p>
                    <p>Email: <a class="text-decoration-none text-danger" href="mailto:madhavsciencecollegeujjain@gmail.com">madhavsciencecollegeujjain@gmail.com</a></p>

                </div>
                <div class="col-md-7">
                    <h2 class="bg-info"><b><i>Find Us Here</i></b></h2>
                    <br>
                    <iframe src="https://maps.google.com/maps?q=madhav science college ujjain&t=&z=13&ie=UTF8&iwloc=&output=embed" 
                            width="100%" height="100%" style="border:2px solid yellow;" allowfullscreen="" loading="lazy" 
                            referrerpolicy="no-referrer-when-downgrade">

                    </iframe>
                </div>
            </div>
            <br> <br> <br> <br> <br>

            <div class="row m-1">
                <h2 class="text-center bg-info"> <b><i>Contact Form</i></b></h2>
                <div class=" col-md-8 mx-auto">
                    <br>
                    <form action="Enqurie" method="post">

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label"><h5>Name:</h5></label>
                            <input type="text" class="form-control" id="exampleInputPassword1" name="name" placeholder="Enter Ur Name">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label"><h5>Email address:</h5></label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter Ur Mail" required="">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label"><h5>Subject:</h5></label>
                            <input type="text" class="form-control" id="exampleInputPassword1"name="subject" placeholder="Subject">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputphone" class="form-label"><h5>Phone:</h5></label>
                            <input type="text" class="form-control" id="exampleInputphone1"name="mobile" placeholder="Phone">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label"><h5>Message:</h5></label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="message"></textarea>
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <button type="submit" class="btn btn-warning"><b>Submit</b></button>
                    </form> 
                </div>
                <div class=" text-center col-md-4 my-auto "style="font-size: 4rem; ">
                    <div>
                        <a href="https://www.bing.com/images/search?q=madhav+science+college+ujjain+instagram+page&qpvt=madhav+science+college+ujjain+instagramr+page&form=IGRE&first=1"><i class="bi bi-instagram" style="color:#E4405F;"></i></a>
                    </div>
                    <div>
                        <a href="https://www.facebook.com/mvmujjain/"> <i class="bi bi-facebook"style="color:#3B5998;"></i></a>
                    </div>

                    <div>
                        <a href="https://twitter.com/Madhav_science/with_replies"> <i class="bi bi-twitter"style="color:#1DA1F2;"></i></a>
                    </div>

                    <div>
                        <a href="https://www.mvmujjain.org/"><i class="bi bi-google"style="color:#4285F4;"></i></a>
                    </div>

                    <div>
                        <a href="https://www.linkedin.com/posts/govt-science-college-ujjain_safehands-vaccineswork-healthycommunities-activity-7050023629312393217-E8A3"><i class="bi bi-linkedin"style="color: #0077B5;"></i></a>
                    </div>
                </div>
            </div>
        </div>       

        <!-------contact end------>

        <br> <br>
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
        <script src="other/script.js"></script>

        <!---js end---->

    </body>          
</html>