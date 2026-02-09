package com.monginis.controller;

import com.monginis.dao.NewSletterDAO;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/subscribe")
public class SubscribeServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String message;

        if (email != null && !email.isEmpty()) {

            boolean saved = NewSletterDAO.subscribeEmail(email);

            if (saved) {
                message = "Subscribed Successfully!";
            } else {
                message = "Email already subscribed!";
            }

        } else {
            message = "Please enter valid email!";
        }

        // message JSP ko bhejna
        request.setAttribute("msg", message);

        // same page par wapas bhejna
        request.getRequestDispatcher("subscribe.jsp")
               .forward(request, response);
    }
}
