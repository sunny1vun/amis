package com.devcolibri.servlet;

import database.DBWorker;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.StringReader;
import java.sql.ResultSet;

/**
 * Created by DELL on 25.12.2016.
 */

@WebServlet("/cabinet")
public class Cabinet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        String role = request.getParameter("role");
        DBWorker dbWorker = new DBWorker();
//        String query = "INSERT INTO DIVORCE(COLUMN1, COLUMN2, COLUMN3, COLUMN4" +
//                ", COLUMN5, COLUMN6, COLUMN7, COLUMN8, COLUMN9, COLUMN10, COLUMN11" +
//                ", COLUMN12, COLUMN13, COLUMN14, COLUMN15, COLUMN16, COLUMN17) " +
//                "VALUES('"+ column1 +"','"+column2+"',"+column3+","+column4 +
//                ",'"+column5+"','"+column6+"','"+column7+"','"+column8+"','"+column9+"'" +
//                ",'"+column10+"','"+column11+"','"+column12+"','"+column13+"','"+column14+"'" +
//                ","+column15+","+column16+",'"+column17+"')";
        String query = "Select * from BLANK";
        ResultSet resultSet = dbWorker.executeQuery(query);
        RequestDispatcher dispatcher = request.getRequestDispatcher("cabinet.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        dispatcher.forward(request,response);
//        new DBWorker().blank(request, response, "mypayment");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/login.jsp");
        dispatcher.forward(request, response);
    }
}

