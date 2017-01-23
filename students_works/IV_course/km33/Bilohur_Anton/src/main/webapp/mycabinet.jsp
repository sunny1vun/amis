<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="database.DBWorker" %>
<%@ page import="database.Comment" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 27.12.2016
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% //String query = "Select * from DIVORCE";
    //DBWorker dbWorker = new DBWorker();
    //ResultSet resultSet = dbWorker.executeQuery(query);
//    String columns[] = new String[]();
    Comment some = new Comment();
    ResultSet resultSet = some.select();
    String[] columns = new String[0];
%>
<html>
<head>
    <title>Cabinet</title>
</head>
<body>
<h2>welcome mfca</h2>
<%--<form action="mypage.jsp">--%>
<form action="/save" method="post">
<table>

    <tr>

        <%//=resultSet.getMetaData().getColumnName(1)%>
        <%/*try {
        int i = 0;*/%>
        <%/*while (resultSet.next()) {
            columns[i] = resultSet.getString("PASSWORD" + i++);
//            String role = resultSet.getString("ROLE");
            */%><td> Enter your name of the work here
        <%//System.out.println(columns[i]);%></td><%
        /*}
    } catch (SQLException e) {
        e.printStackTrace();
    }
    */%>
        <td><input name="shname"  type="text" placeholder="Input name of your work here" required></td>
    </tr>
    <tr>
        <td> Enter your work here, by copy pasting it in the textarea</td>
        <td><textarea name="shwork" placeholder="Input your work here"></textarea></td>
    </tr>
</table>
    <button type="submit" class="btn btn-success">Transaction</button>
</form>
</body>
</html>
