<%@ page import="database.Comment" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="database.Work" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="database.DBWorker" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession session1 = request.getSession(true);
    session1.setMaxInactiveInterval(1800);

    Boolean logined = (Boolean) session1.getAttribute("logined");
    String email = (String) session1.getAttribute("name");
    String role = (String) session1.getAttribute("role");

%>
<html>
<head>
    <title>Devcolibri.com</title>
</head>
<body>
    <h1>Hello, <%=email%> </h1>
    <%Work some = new Work();
    ResultSet resultSet = some.select();
    String[] body = new String[0];
        String[] name= new String[0];
        String[] nameWork = new String[0];
    %>
    <h2>welcome mfca</h2>
    <%--<form action="mypage.jsp">--%>
        <table>

            <tr>
                <%String query = "Select NAME_WORK, NAME_FK, BODY from WORK ";
                    DBWorker dbWorker = new DBWorker();
                     resultSet = dbWorker.executeQuery(query);
                String passFromDB = null;
                try {
                while (resultSet.next()) {
                passFromDB = resultSet.getString("NAME_WORK");
                role = resultSet.getString("NAME_FK");
                String body1 = resultSet.getString("BODY");
                String sukbl = passFromDB + " " + role + " " + body1+"\n";
                System.out.println(passFromDB + " " + role + " " + body1);
                %><%=sukbl%><br><%
                }
                } catch (SQLException e) {
                e.printStackTrace();
                }%>
            </tr>
            <tr>
                <td><input type="button" onclick="history.back();" value="Назад"/>
            </td>
            </tr>
            </table>
    <!--form action="/blank" method="post" >
        <input name="column1" type="text" class="btn btn-success" value="Payment" required>
        <input name="column2" type="text" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column3" type="date" class="btn btn-success" value="Payment" required>
        <input name="column4" type="date" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column5" type="text" class="btn btn-success" value="Payment" required>
        <input name="column6" type="text" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column7" type="text" class="btn btn-success" value="Payment" required>
        <input name="column8" type="text" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column9" type="text" class="btn btn-success" value="Payment" required>
        <input name="column10" type="text" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column11" type="text" class="btn btn-success" value="Payment" required>
        <input name="column12" type="text" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column13" type="text" class="btn btn-success" value="Payment" required>
        <input name="column14" type="text" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column15" type="date" class="btn btn-success" value="Payment" required>
        <input name="column16" type="date" class="btn btn-success" value="Payment" required>
        <br>
        <input name="column17" type="text" class="btn btn-success" value="Payment" required>
        <input type="submit" class="btn btn-success" value="Payment">
        <!%    String column1= (String) session1.getAttribute("column1");%>

            <!%=column1%>
    </form-->


</body>
</html>
