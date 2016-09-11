<%@ page import="models.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 11.09.2016
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="bean.User"/>
<jsp:setProperty name="user" property="name" value="${param.userName}"/>
<jsp:setProperty name="user" property="phoneNumber" value="${param.userPhoneNumber}"/>
<jsp:setProperty name="user" property="sex" value="${param.userSex}"/>

<%
    int status = UserDao.addUser(user);

    String msg;
    if (status > 0) {
        msg = "Added successfully!";
    } else {
        msg = "An error occured!";
    }

    request.getSession().setAttribute("msg", msg);
    response.sendRedirect("../");
%>