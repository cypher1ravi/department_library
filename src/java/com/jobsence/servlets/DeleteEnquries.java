package com.jobsence.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobsence.dao.EnqurieDao;

@WebServlet("/DeleteEnquries")
public class DeleteEnquries extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        EnqurieDao.delete(id);
        response.sendRedirect("ViewEnquries");
    }
}
