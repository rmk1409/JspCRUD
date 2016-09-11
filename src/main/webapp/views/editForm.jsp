<%@ page import="models.UserDao" %>
<%@ page import="bean.User" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 11.09.2016
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    User user = UserDao.getById(Integer.parseInt(request.getParameter("id")));
%>

<h1>Edit User</h1>
<form action="../controllers/editUser.jsp" method="post">
    <input type="hidden" name="id" value="<%=user.getId()%>">
    <input type="hidden" name="registrationDate" value="<%=user.getRegistrationDate()%>">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="<%=user.getName()%>" required></td>
        </tr>
        <tr>
            <td>Phone number:</td>
            <td><input placeholder="+X(XXX)XXX-XX-XX" type="tel" value="<%=user.getPhoneNumber()%>"
                       pattern='[\+]\d{1}[\(]\d{3}[\)]\d{3}[\-]\d{2}[\-]\d{2}'
                       name="phoneNumber"
                       required></td>
        </tr>
        <tr>
            <td>Sex:</td>
            <td>
                <select name="sex" required>
                    <option>Male</option>
                    <option>Female</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Update"></td>
        </tr>
    </table>

</form>
</body>
</html>
