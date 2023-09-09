<%-- 
    Document   : addbookform
    Created on : 12-Apr-2023, 9:44:28 pm
    Author     : Ravindra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="bg-info text-center p-1 w-50 mx-auto mt-2">Add Book </h3>
<form action="AddBook" method="post" class="w-50 mx-auto">
    <div class="form-group">
        <label for="callno1">Book No.</label>
        <input type="text" class="form-control" name="callno" id="callno1" placeholder="Book No" required/>
    </div>
    <div class="form-group">
        <label for="name1">Name</label>
        <input type="text" class="form-control" name="name" id="name1" placeholder="Name" required/>
    </div>
    <div class="form-group">
        <label for="author1">Author</label>
        <input type="text" class="form-control" name="author" id="author1" placeholder="Author" required/>
    </div>
    <div class="form-group">
        <label for="publisher1">Publisher</label>
        <input type="text" class="form-control" name="publisher" id="publisher1" placeholder="Publisher" required/>
    </div>
    <div class="form-group">
        <label for="quantity1">Quantity</label>
        <input type="number" class="form-control" name="quantity" id="quantity1" placeholder="Quantity" required/>
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary">Add <i class="bi bi-book-half"></i></button>
    </div>
</form>