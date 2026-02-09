package com.monginis.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class NewSletterDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/cakeshop";
    private static final String USER = "root";
    private static final String PASS = "shitalk83";

    public static boolean subscribeEmail(String email) {

        boolean status = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(URL, USER, PASS);

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO newsletter_subscribers(email, status) VALUES (?, ?)"
            );

            ps.setString(1, email);
            ps.setString(2, "SUBSCRIBED");

            int i = ps.executeUpdate();
            if (i > 0) {
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}
