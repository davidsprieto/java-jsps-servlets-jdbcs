package com.codeup.udemyjspsservletsjdbcs.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "i18nMessagesTestServlet", value = "/i18n-messages-test")
public class I18nMessagesTestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/i18n-messages-test.jsp").forward(request, response);
    }

}
