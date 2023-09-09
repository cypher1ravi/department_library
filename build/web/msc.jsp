<%-- 
    Document   : msc.jsp
    Created on : 09-Apr-2023, 12:27:26 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>M.Sc. in Computer Science</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="other/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />

    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top" style="background-color:  rosybrown;">          
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
                            <a class="nav-link  " aria-current="page" href="index.jsp"><b>Home</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="About Us.jsp"><b>About Us</b></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="bsc.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <b>Courses</b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="bsc.jsp" >Bachelors</a></li>
                                <li><a class="dropdown-item" href="msc.jsp" >Masters</a></li>
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
        <!--</nav>-->
        <div class=" container-fluid">
            <div class="jumbotron  bg-info">
                <h1>Master of Science  in  Computer Science</h1>
                <p>Advance your career with a Master of Science in Computer Science from our top-ranked program.Our M.Sc. in Computer Science program offers advanced coursework and research opportunities in cutting-edge areas of computer science.</p>
                <p><a class="btn btn-warning btn-lg" href="#" role="button" >Apply Now</a></p>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Why Choose our M.Sc Computer Science program?</h2>
                    <p>Our program provides students with:</p>
                    <ul>
                        <li>A advance knowledge in computer science theory and programming</li>
                        <li>Academia and Research</li>
                        <li>Hands-on experience learning</li>
                        <li> State-Of-The-Art Facilities</li>
                        <li>Opportunities to work on real-world projects and gain practical skills</li>
                        <li>Expert faculty with industry experience</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h2>Career Opportunities</h2>
                    <p>Graduates of our M.Sc program can pursue careers in:</p>
                    <ul>
                        <li>Cyber Security</li>
                        <li>Software development</li>
                        <li>Data Science and Analytics</li>
                        <li>Web development</li>
                        <li>Artificial Intelligence and Machine Learning</li>
                        <li>Database administration</li>
                        <li>Network administration</li>
                        <li>IT management</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <h2 class="bg-info container-fluid py-2 my-3">Our Faculty</h2>
            <div class="row py-3">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="img/faculty.jfif" alt="...">
                        <div class="caption">
                            <h3>Prof. John Doe</h3>
                            <p>Computer Science</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="img/faculty.jfif" alt="...">
                        <div class="caption">
                            <h3>Dr. Jane Smith</h3>
                            <p>Database Management</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="img/faculty.jfif" alt="...">
                        <div class="caption">
                            <h3>Prof. James Johnson</h3>
                            <p>Software Engineering</p>
                        </div>
                    </div>
                </div>               
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="img/faculty.jpg" alt="...">
                        <div class="caption">
                            <h3>Prof. John Doe</h3>
                            <p>Computer Science</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="img/faculty.jfif" alt="...">
                        <div class="caption">
                            <h3>Dr. Jane Smith</h3>
                            <p>Database Management</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="img/faculty.jfif" alt="...">
                        <div class="caption">
                            <h3>Prof. James Johnson</h3>
                            <p>Software Engineering</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <footer class="text-center text-lg-start">

            <div class="text-center p-3" >
                <p >&copy; 2023 Cs department . All rights reserved.</p>
            </div>

        </footer>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="other/script.js"></script>
</html>
