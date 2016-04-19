<%--
  Created by IntelliJ IDEA.
  User: korenev
  Date: 19.04.2016
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<h1>Get user by Id from DataBase</h1>
<html:form action="/search">
    <html:text property="id" name="search"/><html:errors/>
    <html:submit value="search"/>
</html:form>
