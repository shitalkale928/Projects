package com.monginis.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class StoreVisitDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/cakeshop";
    private static final String USER = "root";
    private static final String PASS = "shitalk83";

    public static boolean saveVisit(
            String state,
            String city,
            String area,
            String shopname,
            String cakename,
            double price
    ) {

        boolean status = false;
        LocalDateTime now = LocalDateTime.now();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(URL, USER, PASS);

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO store_visit(state,city,area,shopname,cakename,price,visit_datetime) VALUES (?,?,?,?,?,?,?)"
            );

            ps.setString(1, state);
            ps.setString(2, city);
            ps.setString(3, area);
            ps.setString(4, shopname);
            ps.setString(5, cakename);
            ps.setDouble(6, price);
            ps.setTimestamp(7, Timestamp.valueOf(now));

            int i = ps.executeUpdate();
            if(i > 0){
                status = true;
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
