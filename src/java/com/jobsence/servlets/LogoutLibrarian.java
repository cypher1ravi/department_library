package com.jobsence.servlets;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/LogoutLibrarian")
public class LogoutLibrarian extends HttpServlet {
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getSession().invalidate();
        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navhome.jsp").include(request, response);
        out.println("<div class='container'>");
        out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-warning' role='alert'>");
        out.println("<strong><i class='bi bi-exclamation-circle-fill'></i> Log Out Successfully </strong> ");
        out.println("</div>");
        request.getRequestDispatcher("librarianloginform.jsp").include(request, response);
        out.println("</div>");
         out.println("<br><br><br><br><br>");
        request.getRequestDispatcher("footer.jsp").include(request, response);

    }
}
