<%--
  Created by IntelliJ IDEA.
  User: korenev
  Date: 18.04.2016
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h1>Hello</h1>
<%= request.getAttribute("user").toString() %>
<br>
<a href="./goto.do?page=search">You can try and search another user</a>