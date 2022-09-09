package com.codeup.udemyjspsservletsjdbcs.controllers;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "testParamServlet", value = "/test-param")
public class TestParamServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Step 1 - set content type
        response.setContentType("text/html");

        // Step 2 - get printwriter
        PrintWriter out = response.getWriter();

        // Step 3 - read configuration params from web.xml file
        ServletContext context = getServletContext();
        String maxCartSize = context.getInitParameter("max-shopping-cart-size");
        String teamName = context.getInitParameter("project-team-name");

        // Step 4 - generate HTML content
        out.print("Max cart: " + maxCartSize +
                "<br/>" + "Team name: " + teamName);

        request.getRequestDispatcher("/WEB-INF/test-param.jsp").include(request, response);
    }

}
