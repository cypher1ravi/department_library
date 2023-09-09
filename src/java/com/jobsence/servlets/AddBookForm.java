package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobsence.dao.LibrarianDao;

@WebServlet("/AddBookForm")
public class AddBookForm extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navlibrarian.jsp").include(request, response);
        out.println("<br>");
        out.println("<div class='container'>");
        request.getRequestDispatcher("addbookform.jsp").include(request, response);
        out.println("</div>");
        out.println("<br>");

        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
