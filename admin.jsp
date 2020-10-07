<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<hr>
<h1 style="text-align: center">Welcome to Employee Application</h1>
<hr>
<%!
RequestDispatcher rd;
%>
<%
String user = request.getParameter("user");
String pass = request.getParameter("pass");
if(user.equals("admin")&&pass.equals("admin123")){
	response.sendRedirect("admin_page.html");
	
}
else{
	response.sendRedirect("admin.html");
}
%>

</body>
</html>