<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<h1>Search Employee</h1>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<form action=search.jsp method=post>
	<label for=id>id :-</label> <input type=id name=id id=id/><br><br>

	<input type=submit value=Search /> <input type=reset />
</form>
</div>
</body>
</html>