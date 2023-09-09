<%-- 
    Document   : navlibrarian
    Created on : 12-Apr-2023, 9:36:30 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">          
    <div class="container-fluid">
        <div class=" text-center pr-5 " ><img src="img/logo2.png">
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
                    <a class="nav-link active " aria-current="page" href="LibrarianHome"><b>Home</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="AddBookForm"><b>Add Book</b></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="ViewBook"><b>View Book</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="IssueBookForm"><b>Issue Book</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="ViewIssuedBook"><b>View Issued Book</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-capitalize" href="ReturnBookForm"><b>Return Book</b></a>
                </li>
            </ul>
            <a href="LogoutLibrarian " >
                <button class="btn btn-danger me-2 " >Logout<i class="bi bi-box-arrow-right ml-1"></i></button>
            </a>
        </div>
    </div>
</div>
</nav>
