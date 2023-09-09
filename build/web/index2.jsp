<%-- 
    Document   : header
    Created on : 13-Apr-2023, 8:27:35 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Library || Cs Department</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="other/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
        
       
    </head>

    <body>

        <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top" >
            <div class="container-fluid">
                <div class=" text-center pr-5 mb-0 " ><img src="img/logo2.png">
                    <p class="text-info h5"><sub><h5>Cs Department Library</h5></sub><p>
                </div>
                <button class="navbar-toggler  " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon text-info">
                        <i class="bi bi-list"style="font-size: 2rem;"></i>
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active " aria-current="page" href="index2.jsp"><b>Home</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="AdminIndex"><b>Admin</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-capitalize" href="LibrarianIndex"><b>Librarian</b></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container-fluid">
            <div class=" row jumbotron">
                <div class="col-md-6">
                    <h3 class="bg-info container p-1 my-2"><b><i>Admin Login</i></b></h3><br>
                    <form action="AdminLoginServlet" method="post" class="container-fluid">
                        <div class="form-group">
                            <label for="email1"><b>Email address</b></label><br>
                            <input type="email" class="form-control" name="email" id="email1" placeholder="Email" />
                        </div>
                        <div class="form-group">
                            <label for="password1"><b>Password</b></label>
                            <input type="password" class="form-control" name="password" id="password1"
                                   placeholder="Password" />
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="bi bi-box-arrow-in-right mr-1"></i>Login</button>
                    </form>

                </div>
                <div class=" col-md-6">
                    <h3 class="bg-info container p-1 my-2 "><b><i>Librarian Login</i></b></h3><br>
                    <form action="LibrarianLogin" method="post" class="container-fluid">
                        <div class="form-group">
                            <label for="email1"><b>Email address</b></label><br>
                            <input type="email" class="form-control" id="email1" name="email" placeholder="Email" />
                        </div>
                        <div class="form-group">
                            <label for="password1"><b>Password</b></label>
                            <input type="password" class="form-control" id="password1" name="password"
                                   placeholder="Password" />
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="bi bi-box-arrow-in-right mr-1"></i>Login</button>
                    </form>
                </div>
            </div>
        </div>
        <br><br>
        <footer class=" text-center text-lg-start">
            <!-- Copyright -->
            <div class="text-center p-3" >
                <p >&copy; 2023 Cs department . All rights reserved.</p>
            </div>

        </footer>
        <!---JS bt--->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="other/script.js"></script>
    </body>

</html>