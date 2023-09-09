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

@WebServlet("/ViewLibrarian")
public class ViewLibrarian extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);

        request.getRequestDispatcher("navadmin.jsp").include(request, response);
        out.println("<br><br>");
        out.println("<div class='container-fluid'>");

        List<LibrarianBean> list = LibrarianDao.view();

        out.println("<table class='table table-bordered table-striped table-hover'>");
        out.println("<tr class='table-success'><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>Mobile</th><th>Edit</th><th>Delete</th></tr>");
        for (LibrarianBean bean : list) {
            out.println("<tr><td>" + bean.getId() + "</td><td>" + bean.getName() + "</td><td>" + bean.getEmail() + "</td><td>" + bean.getPassword() + "</td><td>" + bean.getMobile() + "</td><td><a href='EditLibrarianForm?id=" + bean.getId() + "'><button class='btn btn-primary'><i class='bi bi-pencil-square'></i></button></a></td><td><a href='DeleteLibrarian?id=" + bean.getId() + "'><button class='btn btn-danger'><i class='bi bi-trash'></i></button></a></td></tr>");
        }
        out.println("</table>");

        out.println("</div>");
        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();

    }
}
