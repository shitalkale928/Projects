package com.monginis.controller;

import com.monginis.util.DBConnection;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("password");

        Connection con = null;

        try {
            con = DBConnection.getConnection();

            // 🔍 Check user credentials
            String checkSql = "SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(checkSql);
            ps.setString(1, uname);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // ✅ SUCCESS LOGIN

                saveLoginHistory(con, uname, pass, "SUCCESS");

                HttpSession session = request.getSession();
                session.setAttribute("username", uname);

                response.sendRedirect("main.jsp");

            } else {
                // ❌ FAILED LOGIN

                saveLoginHistory(con, uname, pass, "FAILED");

                request.setAttribute("error", "Invalid username or password. Try again!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 🔐 Save login history method
    private void saveLoginHistory(Connection con, String uname, String pass, String status) throws SQLException {

        String historySql =
            "INSERT INTO login_history(username, password, status) VALUES (?, ?, ?)";

        PreparedStatement ps = con.prepareStatement(historySql);
        ps.setString(1, uname);
        ps.setString(2, pass);
        ps.setString(3, status);

        ps.executeUpdate();
    }
}
