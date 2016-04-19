<%--
  Created by IntelliJ IDEA.
  User: korenev
  Date: 19.04.2016
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
</head>
<body style="background-color: grey">
<center>
<table>
    <tr>
        <tiles:insert name="head"/>
    </tr>
    <tr>
        <tiles:insert name="menu"/>
    </tr>
    <tr>
        <tiles:insert name="body"/>
    </tr>
    <tr>
        <tiles:insert name="footer"/>
    </tr>
</table>
</center>
</body>
</html>
