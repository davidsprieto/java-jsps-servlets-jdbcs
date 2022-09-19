package com.codeup.udemyjspsservletsjdbcs.controllers;

import com.codeup.udemyjspsservletsjdbcs.daos.DataSource;
import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "testDatabaseConnectionServlet", value = "/test-database-connection")
public class TestDatabaseConnectionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");

        // Step 1: Set up the PrintWriter
        PrintWriter out = response.getWriter();

        // Step 2: Get a connection to the database
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            DriverManager.registerDriver(new Driver());
            conn = DriverManager.getConnection(
                    DataSource.getUrl(),
                    DataSource.getUsername(),
                    DataSource.getPassword()
            );

            // Step 3: Create a SQL statement
            String sql = "SELECT * FROM students";
            stmt = conn.createStatement();

            // Step 4: Execute SQL query
            rs = stmt.executeQuery(sql);

            // Step 5: Process the result set
            while (rs.next()) {
                String email = rs.getString("email");
                out.println(email);
                System.out.println(email);
            }

        }
        catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
