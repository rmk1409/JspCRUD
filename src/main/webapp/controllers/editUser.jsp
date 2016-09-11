<%@ page import="models.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 11.09.2016
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="bean.User"/>
<jsp:setProperty name="user" property="*"/>

<%
    UserDao.updateUser(user);
    response.sendRedirect("../");
%>