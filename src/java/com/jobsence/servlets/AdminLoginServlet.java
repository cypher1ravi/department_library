package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email.equals("admin@gmail.com") && password.equals("admin123")) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", "true");

            request.getRequestDispatcher("navadmin.jsp").include(request, response);

            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-success' role='alert'>");//            
            out.println("<strong> <i class='bi bi-check-circle-fill'></i>Login Secceessfilly ! </strong> ");
            out.println("</div>");
            request.getRequestDispatcher("admincarousel.jsp").include(request, response);
        } else {
            request.getRequestDispatcher("navhome.jsp").include(request, response);
            
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-danger' role='alert'>");
            out.println("<strong><i class='bi bi-x-circle-fill'></i> Wrong Username or Password! </strong> ");
            out.println("</div>");
            out.println("<div class='container my-5'>");
            request.getRequestDispatcher("adminloginform.jsp").include(request, response);
            out.println("</div>");
            out.println("<br><br><br><br><br>");
        }

        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
