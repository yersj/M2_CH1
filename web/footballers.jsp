<%@ page import="model.Footballer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="db.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 18.01.2022
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    List<Footballer> allFootballers=new ArrayList<>();
    allFootballers= DBManager.footballers;
    for(Footballer f : allFootballers){
        out.println("<h2>"+f.getName()+" "+f.getSurname()+"</h2>");
        out.println("<h3>Club:"+f.getClub()+"</h3>");
        out.println("<h3>Salary:"+f.getSalary()+"</h3>");
        out.println("<h3>Transfer price:"+f.getTransferPrice()+"</h3>");

    }
%>
</body>
</html>
