package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jobsence.beans.EnqurieBean;
import com.jobsence.dao.EnqurieDao;

@WebServlet("/Enqurie")
public class Enqurie extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        request.getRequestDispatcher("header.jsp").include(request, response);

        request.getRequestDispatcher("navindex.jsp").include(request, response);
        out.println("<div class='container'>");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String mobile = request.getParameter("mobile");
        String message = request.getParameter("message");
//        long mobile = Long.parseLong(smobile);
        EnqurieBean bean = new EnqurieBean(name, email, subject, mobile, message);
        EnqurieDao.save(bean);
        out.print("<h4 class='text-success'>Form  successfully submitted </h4>");

        out.println("</div>");
        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
