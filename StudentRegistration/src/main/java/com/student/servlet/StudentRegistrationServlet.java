package com.student.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class StudentRegistrationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        String error = null;

        // Validate name
        if (name == null || name.trim().isEmpty()) {

            error = "Name is required.";

        }

        // Validate email
        else if (email == null || email.trim().isEmpty()) {

            error = "Email is required.";

        }

        else if (!email.matches(
                "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {

            error = "Please enter a valid email address.";

        }

        // Validate course
        else if (course == null || course.trim().isEmpty()) {

            error = "Course is required.";

        }

        // If validation fails
        if (error != null) {

            request.setAttribute("error", error);

        }

        // If validation succeeds
        else {

            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("course", course);
        }

        // Send data to result.jsp
        request.getRequestDispatcher("result.jsp")
               .forward(request, response);
    }
}