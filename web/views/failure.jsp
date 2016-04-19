<%--
  Created by IntelliJ IDEA.
  User: korenev
  Date: 19.04.2016
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%= request.getAttribute("message")%>
<br>
<a href="./goto.do?page=search">You can try and search another user</a>