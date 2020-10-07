<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employee</title>
</head>
<body>
<%
try
{

	String empId = request.getParameter("empID");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee","root","root");
	PreparedStatement stmt=con.prepareStatement("select * from employee where EmployeeID = "+empId);
	ResultSet rs = (ResultSet) stmt.executeQuery();
	int count=0;
	
		out.println("<body bgcolor='#e5e5e5'>");
		out.println("<hr color='red'></hr>");
		out.println("<b><center><h1>Admin Page</h1></center></b>");
		out.println("<hr color='red'></hr>");
		out.println("<p style='text-align:left;'><a href='admin_page.html'>Home</a><span style='float:right;'><a href='logout.html'>Logout</a></span></p>");
		
		out.println("<b><strong><center>Employee Details</center></strong></b><br>");
		
		out.println("<div style='text-align: justify;margin: 25px 50px 75px 400px;'>");
		while(rs.next()) {
			out.println("<strong>");
			out.println("Employee ID     &emsp;&emsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;"+rs.getInt(1)+"<br>");
			out.println("Employee Name   &emsp;&nbsp;&nbsp;: &nbsp;&nbsp;"+rs.getString(2)+"<br>");
			out.println("Employee Email  &emsp;&nbsp;&nbsp;:&nbsp;&nbsp; "+rs.getString(3)+"<br>");
			out.println("Date of Joining &emsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; "+rs.getString(4)+"<br>");
			out.println("Employee Gender &emsp;:&nbsp;&nbsp; "+rs.getString(5)+"<br>");
			out.println("Destination     &emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;"+rs.getString(6)+"<br>");
			out.println("Employee Address&emsp;: &nbsp;&nbsp;"+rs.getString(7)+"<br>");
			out.println("Contact Number  &emsp;&nbsp;&nbsp;:&nbsp;&nbsp; "+rs.getString(8)+"<br>");
			out.println("</strong>");
			count++;
		}
		if(count==0){
			out.println("There is no employee details with id "+empId);
		}
		out.println("</div>");
		out.println("</body>");
	

		stmt.close();
		con.close();

	
	


}
catch(SQLException e) {
	
	out.println("<b><center>NO Record Found</center></b>");
	out.println("<center>"+e.getMessage()+"</center>");
	RequestDispatcher rd = request.getRequestDispatcher("/viewEmployee.jsp");
	rd.include(request, response);
}
catch(Exception e) 
{
	out.println("<b><center>NO Record Found</center></b>");
	out.println("<center>"+e.getMessage()+"</center>");
	RequestDispatcher rd = request.getRequestDispatcher("/viewEmployee.jsp");
	rd.include(request, response);
}

%>
</body>
</html>