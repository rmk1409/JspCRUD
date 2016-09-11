<%@ page import="bean.User" %>
<%@ page import="models.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 11.09.2016
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    UserDao.removeUser(Integer.parseInt(request.getParameter("id")));

    response.sendRedirect("../");
%>