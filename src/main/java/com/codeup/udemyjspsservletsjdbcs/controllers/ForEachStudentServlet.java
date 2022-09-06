package com.codeup.udemyjspsservletsjdbcs.controllers;

import com.codeup.udemyjspsservletsjdbcs.models.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "forEachStudentServlet", value = "/foreach-student")
public class ForEachStudentServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        List<Student> students = new ArrayList<>();

        Student john = new Student("John", "Doe", false);
        Student maxwell = new Student("Maxwell", "Johnson", false);
        Student mary = new Student("Mary", "Public", true);

        students.add(john);
        students.add(maxwell);
        students.add(mary);

        session.setAttribute("students", students);

        request.getRequestDispatcher("/WEB-INF/foreach-student.jsp").forward(request, response);
    }

}
