package com.codeup.udemyjspsservletsjdbcs.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "mvcDemoServlet", value = "/mvc-demo")
public class MVCDemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Step 0 - add data
        String[] students = {"Susan", "Anil", "Bob", "Bill"};
        request.setAttribute("students", students);

        // Step 1 - get request dispatcher
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view-students.jsp");

        // Step 2 - forward the request to the JSP
        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
