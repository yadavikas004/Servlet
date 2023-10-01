package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/hmtl");
        PrintWriter out = resp.getWriter();
        out.println("<h2>Welcome to Register Servlet</h2>");
        String name = req.getParameter("user_name");
        String password = req.getParameter("user_password");
        String email = req.getParameter("user_email");
        String gender = req.getParameter("user_gender");
        String course = req.getParameter("user_course");
        String cond = req.getParameter("condition");

        if (cond != null) {
            if (cond.equals("checked")) {
                out.println("<h2> Name : " + name + "</h2>");
                out.println("<h2> Password : " + password + "</h2>");
                out.println("<h2> Email : " + email + "</h2>");
                out.println("<h2> Gender : " + gender + "</h2>");
                out.println("<h2> Course : " + course + "</h2>");

                //JDBC Insert
                try {
                    Thread.sleep(3000);

                    //connection..........................................
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "root");

                    //query...............................................
                    String q = "insert into register(name,password,email,gender,course,cond) values(?,?,?,?,?,?)";
                    PreparedStatement pstmt = con.prepareStatement(q);
                    pstmt.setString(1, name);
                    pstmt.setString(2, password);
                    pstmt.setString(3, email);
                    pstmt.setString(4, gender);
                    pstmt.setString(5, course);
                    pstmt.setString(6, cond);
                    //saved to db
                    pstmt.executeUpdate();
                    con.close();
                    out.println("done");
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("error");
                }
                //...
                RequestDispatcher rd = req.getRequestDispatcher("success");
                rd.forward(req, resp);
            } else {
                System.out.println("<h2>You have not accepted terms and conditions </h2>");
            }
        } else {
            System.out.println("<h2>You have not accepted terms and conditions </h2>");
            // i want to include output of index.html

            // get the object of RequestDispatcher
            RequestDispatcher rd = req.getRequestDispatcher("index.html");
            //include
            rd.include(req, resp);
        }

    }
}
