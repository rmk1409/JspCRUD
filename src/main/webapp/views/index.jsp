<%@ page import="models.UserDao" %>
<%@ page import="bean.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 11.09.2016
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<a href="views/addUserForm.jsp">Add new</a>

<%
    String msg = (String) request.getSession().getAttribute("msg");
    if (msg != null) {
        out.print(String.format("<p>%s</p>", msg));
        request.getSession().removeAttribute("msg");
    }

    List<User> allUsers = UserDao.getAllUsers();
    request.setAttribute("alllist", allUsers);
%>
<table border="1" width="90%">
    <tr>
        <th>id</th>
        <th>registration date</th>
        <th>name</th>
        <th>sex</th>
        <th>phone number</th>
        <th>edit</th>
        <th>delete</th>
    </tr>
    <c:forEach items="${alllist}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.registrationDate}</td>
            <td>${u.name}</td>
            <td>${u.sex}</td>
            <td>${u.phoneNumber}</td>
            <td><a href="views/editForm.jsp?id=${u.id}">Edit</a></td>
            <td><a href="controllers/deleteUser.jsp?id=${u.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
