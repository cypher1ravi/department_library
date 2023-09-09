package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminHome")
public class AdminHome extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navadmin.jsp").include(request, response);        
        request.getRequestDispatcher("admincarousel.jsp").include(request, response);        
        request.getRequestDispatcher("footer.jsp").include(request, response);

    }
    
}
