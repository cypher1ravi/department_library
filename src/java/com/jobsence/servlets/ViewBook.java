package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.BookBean;
import com.jobsence.beans.LibrarianBean;
import com.jobsence.dao.BookDao;
import com.jobsence.dao.LibrarianDao;

@WebServlet("/ViewBook")
public class ViewBook extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navlibrarian.jsp").include(request, response);

        out.println("<div class='container-fluid'>");
        out.println("<br>");
        List<BookBean> list = BookDao.view();
        out.println("<div class='row my-3'>");
        out.println("<div class='col-6'>");
        out.println("<button class='btn btn-warning ml-0' onclick='window.print()'>Print</button>");
        out.println("</div>");
        out.println("<div class='col-6 text-right'>");
        out.println("<input id='myInput' type='text' placeholder='Search By name &#128269' onkeyup='searchFun()'>");
        out.println("</div>");
        out.println("</div>");

        out.println("<table id='myTable' class='table table-hover table-striped table-bordered '>");
        out.println("<tr class='table-success'><th>Book No.</th><th>Name</th><th>Author</th><th>Publisher</th><th>Quantity</th><th>Issued</th><th>Delete</th></tr>");
        for (BookBean bean : list) {
            out.println("<tr><td>" + bean.getCallno() + "</td><td>" + bean.getName() + "</td><td>" + bean.getAuthor() + "</td><td>" + bean.getPublisher() + "</td><td>" + bean.getQuantity() + "</td><td>" + bean.getIssued() + "</td><td><a href='DeleteBook?callno=" + bean.getCallno() + "'><button class='btn btn-danger'><i class='bi bi-trash'></i></button></a></td></tr>");
        }
        out.println("</table>");
        out.println("</div>");
        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }
}
