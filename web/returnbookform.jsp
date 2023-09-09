<%-- 
    Document   : returnbookform
    Created on : 12-Apr-2023, 9:35:06 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<h3 class="bg-info text-center p-1 w-50 mx-auto mt-3">Return Book </h3>
<form action="ReturnBook" method="post" class="w-50 mx-auto">
    <div class="form-group">
        <label for="callno1">Book No.</label>
        <input type="text" class="form-control" name="callno" id="callno1" placeholder="Book No." required/>
    </div>
    <div class="form-group">
        <label for="studentid1">Student Roll No.</label>
        <input type="text" class="form-control" name="studentid" id="studentid1" placeholder="Student Roll No." required/>
    </div>
    <div class="text-center"> 
        <button type="submit" class="btn btn-primary">Return <i class="bi bi-book-half me-2"></i></button>
    </div>
</form>



