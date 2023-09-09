package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.IssueBookBean;
import com.jobsence.dao.BookDao;

@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navlibrarian.jsp").include(request, response);

        out.println("<div class='container'>");
        String callno = request.getParameter("callno");
        String sstudentid = request.getParameter("studentid");
        int studentid = Integer.parseInt(sstudentid);

        int i = BookDao.returnBook(callno, studentid);
        if (i > 0) {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-success' role='alert'>");
            out.println("<strong> <i class='bi bi-check-circle-fill'></i> Book Returned Successfully </strong> ");
            out.println("</div>");
            out.println("<div class='container my-5'>");
            request.getRequestDispatcher("returnbookform.jsp").include(request, response);
            out.println("</div>");
        } else {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-danger' role='alert'>");
            out.println("<strong> <i class='bi bi-x-circle-fill'></i> Sorry, unable to return book ! </strong> ");
            out.println("<p>We may have sortage of books. Kindly visit later.</p>");
            out.println("</div>");
            out.println("<div class='container my-5'>");
            request.getRequestDispatcher("returnbookform.jsp").include(request, response);
            out.println("</div>");
        }
        out.println("</div>");
        out.println("<br><br><br><br><br>");

        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
