package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.BookBean;
import com.jobsence.dao.BookDao;

@WebServlet("/AddBook")
public class AddBook extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navlibrarian.jsp").include(request, response);

        out.println("<div class='container'>");
        String callno = request.getParameter("callno");
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");
        String squantity = request.getParameter("quantity");
        int quantity = Integer.parseInt(squantity);
        BookBean bean = new BookBean(callno, name, author, publisher, quantity);
        int i = BookDao.save(bean);
        if (i > 0) {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-success' role='alert'>");
            out.println("<strong> <i class='bi bi-check-circle-fill'></i> Book Added Successfully </strong> ");
            out.println("</div>");
            request.getRequestDispatcher("addbookform.jsp").include(request, response);
        } else {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-danger' role='alert'>");
            out.println("<strong> <i class='bi bi-x-circle-fill'></i> Book Already Exist </strong> ");
            out.println("</div>");
            request.getRequestDispatcher("addbookform.jsp").include(request, response);
        }

        out.println("</div>");

        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
