<%-- 
    Document   : librarianloginform
    Created on : 12-Apr-2023, 9:38:14 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="bg-info text-center p-1 w-50 mx-auto mt-2"><b><i>Librarian Login</i></b></h3>
<form action="LibrarianLogin" method="post" class="w-50 mx-auto">
    <div class="form-group">
        <label for="email1"><b>Email address</b></label>
        <input type="email" class="form-control" name="email" id="email1" placeholder="Email"/>
    </div>
    <div class="form-group">
        <label for="password1"><b>Password</b></label>
        <input type="password" class="form-control" name="password" id="password1" placeholder="Password"/>
    </div> 
    <div class="text-center"> 
        <button type="submit" class="btn btn-primary"><i class="bi bi-box-arrow-in-right mr-1"></i><b>Login</b></button>
    </div> 
</form>