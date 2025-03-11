package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    // Hardcoded user credentials (for demonstration purposes)
    private static final String VALID_USERNAME = "demo";
    private static final String VALID_PASSWORD = "password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if the provided credentials match the hardcoded values
        if (isValidCredentials(username, password)) {
            // Redirect to home page if login is successful
            response.sendRedirect("home.jsp");
        } else {
            // Redirect back to the login page with an error message
            response.sendRedirect("login.jsp");
        }
    }

    // Method to validate credentials (in a real application, this would involve a database check)
    private boolean isValidCredentials(String username, String password) {
        return VALID_USERNAME.equals(username) && VALID_PASSWORD.equals(password);
    }
}
