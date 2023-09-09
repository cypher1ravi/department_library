<%-- 
    Document   : issuebookform
    Created on : 12-Apr-2023, 9:40:49 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="bg-info text-center p-1 w-50 mx-auto mt-3">Issue Book </h3>
<form action="IssueBook" method="post" class="w-50 mx-auto">
    <div class="form-group">
        <label for="callno1">Book No.</label>
        <input type="text" class="form-control" name="callno" id="callno1" placeholder="Book no."required/>
    </div>
    <div class="form-group">
        <label for="id1">Student Roll No.</label>
        <input type="text" class="form-control" name="studentid" id="id1" placeholder="Student Roll No."required/>
    </div>
    <div class="form-group">
        <label for="name1">Student Name</label>
        <input type="text" class="form-control" name="studentname" id="name1" placeholder="Student Name"required/>
    </div>
    <div class="form-group">
        <label for="mobile1">Student Mobile</label>
        <input type="number" class="form-control" name="studentmobile" id="mobile1" placeholder="Student Mobile"required/>
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary">Issue <i class="bi bi-book-half"></i></button></button>
    </div>
</form>