package com.monginis.controller;



import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SendMessageServlet")
public class SendMessageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Connection con = null;
        PreparedStatement ps = null;

        try {
            // 1. Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Connect to DB
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cakeshopdb", "root", "shitalk83");

            // 3. Insert message into database (using your table structure)
            String sql = "INSERT INTO contact_messages(name, email, message) VALUES(?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                // Success message stored in session
                HttpSession session = request.getSession();
                session.setAttribute("msg", "Your message has been sent successfully!");
                response.sendRedirect("index.jsp"); // Redirect back to the contact page
            } else {
                request.setAttribute("error", "Failed to send message. Try again.");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } finally {
            try { if(ps != null) ps.close(); } catch(Exception e) {}
            try { if(con != null) con.close(); } catch(Exception e) {}
        }
    }
}
