package com.codeup.udemyjspsservletsjdbcs.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

@WebServlet(name = "studentResponseServlet", value = "/student-response")
public class StudentResponseServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/student-response.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String[] languages = request.getParameterValues("favoriteLanguages");

        out.println("The student is confirmed - Name: " +
            request.getParameter("firstName") + " " + request.getParameter("lastName") +
            "<br/> Country: " + request.getParameter("country") +
            "<br/> Top Programming Language: " + request.getParameter("topLanguage") +
            "<br/> Favorite Programming Languages: " + Arrays.toString(languages));

        request.getRequestDispatcher("/WEB-INF/student-response.jsp").include(request, response);
    }

}
