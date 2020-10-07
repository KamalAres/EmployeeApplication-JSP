<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String empId = request.getParameter("empID");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee","root","root");
	PreparedStatement stmt=con.prepareStatement("select * from employee where EmployeeID = "+empId);
	ResultSet rs = (ResultSet) stmt.executeQuery();
	if(rs.next()==false){
		out.println("<center>");
		out.println("There is no employee details with id "+empId);
		out.println("</center>");
		RequestDispatcher rd = request.getRequestDispatcher("/deleteEmployee.jsp");
		rd.include(request, response);
	}
	else{
	stmt.executeUpdate("delete from Employee where EmployeeID = "+empId);
	out.println("<b><center>Successfully deleted the Employee Record</center></b>");
	
	stmt.close();
	con.close();
	RequestDispatcher rd = request.getRequestDispatcher("/deleteEmployee.jsp");
	rd.include(request, response);
	}
}
catch(SQLException e) {
	out.println(e.getMessage());
	RequestDispatcher rd = request.getRequestDispatcher("/deleteEmployee.jsp");
	rd.include(request, response);
	
}
catch(Exception e) {
	out.println(e.getMessage());
	RequestDispatcher rd = request.getRequestDispatcher("/deleteEmployee.jsp");
	rd.include(request, response);
	
}
%>
</body>
</html>