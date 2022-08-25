<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String f = request.getParameter("id");
session.setAttribute("id", f);
%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL sql:query Tag</title>
</head>
<body>
Employee Details:
	<br>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/employees" user="root" password="12345678" />
	<sql:query dataSource="${snapshot}" var="result">
            SELECT * from employee where eid='<%=session.getAttribute("id")%>';
         </sql:query>
	<table border="2">
<tr>
<th>Id</th>
<th>Name</th>  
<th>Designation</th>
<th>Salary</th>
</tr>
<c:forEach var="emp" items="${result.rows}">
<tr>
<td>${emp.eid}</td>
<td>${emp.name}</td>
<td>${emp.designation}</td>
<td>${emp.salary}</td>
<td><a href="editemp/${emp.eid}">Edit</a></td>
</tr>
</c:forEach>
</table>
<c:choose>
<c:when test="${result.rowCount==0}">
	Sorry! Not Available for that ID
</c:when>
</c:choose>
</body>
</html>