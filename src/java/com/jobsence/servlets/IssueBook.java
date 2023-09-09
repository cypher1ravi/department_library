package com.jobsence.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.beans.IssueBookBean;
import com.jobsence.dao.BookDao;

@WebServlet("/IssueBook")
public class IssueBook extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        request.getRequestDispatcher("header.jsp").include(request, response);
        request.getRequestDispatcher("navlibrarian.jsp").include(request, response);

        out.println("<div class='container'>");
        String callno = request.getParameter("callno");
        String studentid = request.getParameter("studentid");
        String studentname = request.getParameter("studentname");
        String sstudentmobile = request.getParameter("studentmobile");
        long studentmobile = Long.parseLong(sstudentmobile);

        IssueBookBean bean = new IssueBookBean(callno, studentid, studentname, studentmobile);
        int i = BookDao.issueBook(bean);
        if (i>0) {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-success' role='alert'>");
            out.println("<strong> <i class='bi bi-check-circle-fill'></i> Book Issue Successfully </strong> ");
            out.println("</div>");
            request.getRequestDispatcher("issuebookform.jsp").include(request, response);

        } else {
            out.println("<div id='alert-atten' class='alert alert-dismissible fade show alert-danger' role='alert'>");
            out.println("<strong> <i class='bi bi-x-circle-fill'></i> Sorry, unable to issue book ! </strong> ");
            out.println("</div>");
            request.getRequestDispatcher("issuebookform.jsp").include(request, response);
        }
        out.println("</div>");

        request.getRequestDispatcher("footer.jsp").include(request, response);
        out.close();
    }

}
