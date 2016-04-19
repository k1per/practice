<%--
  Created by IntelliJ IDEA.
  User: korenev
  Date: 19.04.2016
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<h1>Adding user to DB</h1>
<html:form action="/addUser">

    Name: <html:text property="name" name="addUser"/>
    <br>
    Lastname: <html:text property="surname" name="addUser"/>
    <br>
    Email: <html:text property="email" name="addUser"/>
    <br>

    <bean:message key="question.admin"/>
    <html:radio property="admin" value="true" name="addUser"/>
    <html:radio property="admin" value="false" name = "addUser"/>
    <br>
    <html:submit value="submit"/>
    <br>
    <html:errors/>

</html:form>