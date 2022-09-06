package com.codeup.udemyjspsservletsjdbcs.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "forEachTestServlet", value = "/foreach-test")
public class ForEachTestServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        String[] cities = {"Chicago", "Milwaukee", "San Diego"};

        session.setAttribute("cities", cities);

        request.getRequestDispatcher("/WEB-INF/foreach-test.jsp").forward(request, response);
    }

}
