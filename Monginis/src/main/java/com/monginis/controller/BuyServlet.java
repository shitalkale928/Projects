package com.monginis.controller;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/buy")
public class BuyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productName = request.getParameter("product_name");
        String priceStr = request.getParameter("price");
        String customerName = request.getParameter("customer_name");
        String address = request.getParameter("address");
        String paymentType = request.getParameter("payment_type");

        if(productName != null && priceStr != null && customerName != null && address != null && paymentType != null) {
            try {
                double price = Double.parseDouble(priceStr);

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/cakeshop","root","shitalk83");

                String sql = "INSERT INTO orders(product_name, price, customer_name, address, payment_type) VALUES(?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, productName);
                ps.setDouble(2, price);
                ps.setString(3, customerName);
                ps.setString(4, address);
                ps.setString(5, paymentType);
                ps.executeUpdate();
                ps.close();
                con.close();

                response.sendRedirect(request.getHeader("referer") + "?msg=success"); // redirect back to current page
            } catch(Exception e) {
                e.printStackTrace();
                response.sendRedirect(request.getHeader("referer") + "?msg=error");
            }
        } else {
            response.sendRedirect(request.getHeader("referer") + "?msg=error");
        }
    }
}

