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
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

/**
 * Created by DELL on 23.01.2017.
 */
@WebServlet("/save")
public class SaveToDB extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(true);
//        String role = request.getParameter("role");
        String email = request.getParameter("name");
        email = (String) session.getAttribute("name");
//        session.setAttribute("name", email);
        String work = request.getParameter("shwork");
        String name = request.getParameter("shname");
        String recordBook = request.getParameter("recordBook");
        DBWorker dbWorker = new DBWorker();
//        String query = "INSERT INTO USERS(EMAIL, PASS, ROLE) VALUES('"+ email +"','"+pass+"','"+role+"')";
        System.out.println(email + " first " + name);
        try {
            CallableStatement conn = dbWorker.connection.prepareCall("{call registernewwork(?, ?, ?, ?)}");
            conn.setString(3, name);
//            conn.setString(2, role);
            conn.setString(2, email);
            conn.setString(1, work);
//            conn.setString(5, recordBook);

            conn.registerOutParameter(4, Types.INTEGER);

            ResultSet resultset = conn.executeQuery();
            boolean outter_param = (int) conn.getObject(4) != 1;
            System.out.println(outter_param);


        } catch (SQLException e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("mypage.jsp");
        try {
             dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
//            return false;
        } catch (IOException e) {
            e.printStackTrace();
//            return false;
        }
//        return true;

    }

}
