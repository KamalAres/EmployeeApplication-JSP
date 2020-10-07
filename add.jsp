<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD Employee</title>
</head>
<body>

<%
String empid = request.getParameter("empid");
String empname = request.getParameter("empname");
String email = request.getParameter("email");
String date = request.getParameter("doj");
String sex = request.getParameter("sex");
String destination = request.getParameter("dest");
String address = request.getParameter("address");
String ContactNo = request.getParameter("contact");

  try {
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Employee","root", "root");
    PreparedStatement stmt=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?)");
	stmt.setInt(1,Integer.valueOf(empid));
	stmt.setString(2,empname);
	stmt.setString(3, email);
	stmt.setString(4, date);
	stmt.setString(5, sex);
	stmt.setString(6, destination);
	stmt.setString(7, address);
	stmt.setString(8, ContactNo);
	stmt.executeUpdate();
	stmt.close();
	con.close();
	out.println("<b><center>Successfully Inserted</center></b>");
	RequestDispatcher rd = request.getRequestDispatcher("/addEmployee.jsp");
	rd.include(request, response);
  }
  catch(SQLException e) {
	out.println("<center>");
    out.println("SQLException caught: " +e.getMessage());
    out.println("</center>");
    RequestDispatcher rd = request.getRequestDispatcher("/addEmployee.jsp");
	rd.include(request, response);
  }
  catch(Exception e){
	  out.println("<center>");
	    out.println("Exception caught: " +e);
	    out.println("</center>");
	    RequestDispatcher rd = request.getRequestDispatcher("/addEmployee.jsp");
		rd.include(request, response);
	        
  }
%>  
</body>
</html>