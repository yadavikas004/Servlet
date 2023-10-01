/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;

/**
 *
 * @author Vikas Yadav
 */
public class FirstServlet implements Servlet{
    //Life cycle methods:
    ServletConfig conf;
    
    
    public void init(ServletConfig conf){
        this.conf=conf;
        System.out.println("creating object.....");
                
    }
    
    public void service(ServletRequest req,ServletResponse resp) throws ServletException,IOException{
        System.out.println("Servicing.......");
        //set the contect type of the response
        resp.setContentType("text/html");
        PrintWriter out =resp.getWriter();
        out.println("<h1>This is my output from servlet method:</h1>");
        out.println("<h1>Todays date and time is "+new Date().toString()+"</h1>");
    }
    
    public void destroy(){
        System.out.println("going to destroy servlet object");
    }
    
    // non life cycle methods
    
    public ServletConfig getServletConfig(){
        return this.conf;
    }
    
    public String getServletInfo(){
        return "this servlet is created by vikas Yadav";
    }

}
