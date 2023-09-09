package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.IssueBookBean;
import com.jobsence.dao.BookDao;

@WebServlet("/ViewIssuedBook")
public class ViewIssuedBook extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navlibrarian.jsp").include(request, response);
        out.println("<br>");
        out.println("<div class='container-fluid'>");

        List<IssueBookBean> list = BookDao.viewIssuedBooks();
        out.println("<div class='row my-3'>");
        out.println("<div class='col-6'>");
        out.println("<button class='btn btn-warning ml-0' onclick='window.print()'>Print</button>");
        out.println("</div>");
        out.println("<div class='col-6 text-right'>");
        out.println("<input id='myInput' type='text' placeholder='Search By roll no &#128269' onkeyup='searchFun()'>");
        out.println("</div>");
        out.println("</div>");
        out.println("<table  id ='myTable' class='table table-bordered table-striped table-hover'>");
        out.println("<tr class='table-success'><th>Book No.</th><th>Student Roll No.</th><th>Student Name</th><th>Student Mobile</th><th>Issued Date</th><th>Return Status</th></tr>");
        for (IssueBookBean bean : list) {
            out.println("<tr><td>" + bean.getCallno() + "</td><td>" + bean.getStudentid() + "</td><td>" + bean.getStudentname() + "</td><td>" + bean.getStudentmobile() + "</td><td>" + bean.getIssueddate() + "</td><td>" + bean.getReturnstatus() + "</td></tr>");
        }
        out.println("</table>");
        out.println("</div>");
        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }
}
