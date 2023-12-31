<%-- 
    Document   : addlibrarianform
    Created on : 12-Apr-2023, 9:45:46 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="bg-info text-center p-1 w-50 mx-auto mt-3">Add Librarian</h3>
<form action="AddLibrarian" method="post" class="w-50 mx-auto">
    <div class="form-group">
        <label for="name1">Name</label>
        <input type="text" class="form-control" name="name" id="name1" placeholder="Name"/>
    </div>
    <div class="form-group">
        <label for="email1">Email address</label>
        <input type="email" class="form-control" name="email" id="email1" placeholder="Email"/>
    </div>
    <div class="form-group">
        <label for="password1">Password</label>
        <input type="password" class="form-control" name="password" id="password1" placeholder="Password"/>
    </div>  
    <div class="form-group">
        <label for="mobile1">Mobile Number</label>
        <input type="number" class="form-control" name="mobile" id="mobile1" placeholder="Mobile"/>
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary mb-3">Save</button>
    </div>
</form>
