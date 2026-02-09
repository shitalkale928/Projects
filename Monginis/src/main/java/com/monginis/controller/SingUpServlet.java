package com.monginis.controller;

import com.monginis.util.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SingUpServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO users(username, password) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, uname);
            ps.setString(2, pass);

            int i = ps.executeUpdate();

            if (i > 0) {
                // signup successful → login page redirect
                response.sendRedirect("Login.jsp?success=1");
            } else {
                request.setAttribute("msg", "Signup Failed!");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }

        } catch (Exception e) {
            request.setAttribute("msg", "Username already exists!");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }
}
