package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.LibrarianBean;
import com.jobsence.dao.LibrarianDao;

@WebServlet("/EditLibrarianForm")
public class EditLibrarianForm extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);

        request.getRequestDispatcher("navadmin.jsp").include(request, response);
        out.println("<div class='container'>");
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);

        LibrarianBean bean = LibrarianDao.viewById(id);
        out.println("<div class='container'>");
        out.print("<h3 class='bg-info text-center p-1 w-50 mx-auto mt-3'>Edit Librarian</h3>");
        out.print("<form action='EditLibrarian' method='post' class='w-50 mx-auto'>");
        out.print("<div class='form-group'>");
        out.print("<input type='hidden' name='id' value='" + bean.getId() + "'/>");
        out.print("<label for='name1'>Name</label>");
        out.print("<input type='text' class='form-control' value='" + bean.getName() + "' name='name' id='name1' placeholder='Name'/>");
        out.print("</div>");
        out.print("<div class='form-group'>");
        out.print("<label for='email1'>Email address</label>");
        out.print("<input type='email' class='form-control' value='" + bean.getEmail() + "'  name='email' id='email1' placeholder='Email'/>");
        out.print("</div>");
        out.print("<div class='form-group'>");
        out.print("<label for='password1'>Password</label>");
        out.print("<input type='password' class='form-control' value='" + bean.getPassword() + "'  name='password' id='password1' placeholder='Password'/>");
        out.print("</div>  ");
        out.print("<div class='form-group'>");
        out.print("<label for='mobile1'>Mobile Number</label>");
        out.print("<input type='number' class='form-control' value='" + bean.getMobile() + "'  name='mobile' id='mobile1' placeholder='Mobile'/>");
        out.print("</div>");
        out.print("<div class='text-center'>");
        out.print("<button type='submit' class='btn btn-primary'>Update</button>");
        out.print("</div>");
        out.print("</form>");
        out.print("</div>");
        out.println("</div>");
         out.print("<br>");

        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();

    }
}
