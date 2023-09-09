package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jobsence.beans.LibrarianBean;
import com.jobsence.dao.LibrarianDao;

@WebServlet("/AddLibrarian")
public class AddLibrarian extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navadmin.jsp").include(request, response);
        out.println("<div class='container'>");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String smobile = request.getParameter("mobile");
        long mobile = Long.parseLong(smobile);
        LibrarianBean bean = new LibrarianBean(name, email, password, mobile);
        int i = LibrarianDao.save(bean);
        if (i > 0) {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-success' role='alert'>");
            out.println("<strong> <i class='bi bi-check-circle-fill'></i> Librarian Added Successfully </strong> ");
            out.println("</div>");
            request.getRequestDispatcher("addlibrarianform.jsp").include(request, response);
        } else {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-danger' role='alert'>");
            out.println("<strong> <i class='bi bi-x-circle-fill'></i> Librarian Already Exist </strong> ");
            out.println("<p><sub>Something Went Wrong</sub></P>");
            out.println("</div>");
            request.getRequestDispatcher("addlibrarianform.jsp").include(request, response);
        }
        out.println("</div>");
        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
