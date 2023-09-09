package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.EnqurieBean;
import com.jobsence.dao.EnqurieDao;

@WebServlet("/ViewEnquries")
public class ViewEnquries extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);

        request.getRequestDispatcher("navadmin.jsp").include(request, response);

        out.println("<div class='container-fluid'>");

        List<EnqurieBean> list = EnqurieDao.view();
        out.println("<div class='row my-3'>");
        out.println("<div class='col-6'>");
        out.println("<button class='btn btn-warning ml-0' onclick='window.print()'>Print</button>");
        out.println("</div>");
        out.println("<div class='col-6 text-right'>");
        out.println("<input id='myInput' type='text' placeholder='Search By name &#128269' onkeyup='searchFun()'>");
        out.println("</div>");
        out.println("</div>");

        out.println("<table id='myTable' class='table table-bordered table-striped table-hover'>");
        out.println("<tr class='table-success'><th>Name</th><th>Email</th><th>Subject</th><th>Mobile</th><th>Message</th><th>Delete</th></tr>");
        for (EnqurieBean bean : list) {
            out.println("<tr><td>" + bean.getName() + "</td><td>" + bean.getEmail() + "</td><td>" + bean.getSubject() + "</td><td>" + bean.getMobile() + "</td><td>" + bean.getMessage() + "</td><td><a href='DeleteEnquries?id=" + bean.getId() + "'><button class='btn btn-danger'><i class='bi bi-trash'></i></button></a></td></tr>");
        }
        out.println("</table>");
        out.println("</div>");
        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();

    }
}
