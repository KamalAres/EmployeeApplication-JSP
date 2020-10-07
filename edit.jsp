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
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee", "root", "root");
	PreparedStatement stmt = con.prepareStatement("select * from employee where EmployeeID = "+empid);
	ResultSet rs = (ResultSet) stmt.executeQuery();
	if(rs.next()==false){
		out.println("<center>");
		out.println("There is no employee details with id "+empid);
		out.println("</center>");
		RequestDispatcher rd = request.getRequestDispatcher("/editEmployee.jsp");
		rd.include(request, response);
			
	}
	else{
	 stmt = con.prepareStatement("update employee set EmployeeID = ?,EmployeeName=?,Email=?,DOJ=?,Sex=?,Designation=?,Address=?,ContactNo=? where EmployeeID = "+empid);
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
	out.println("<b><center>Successfully Updated the Employee Details</center></b>");
	RequestDispatcher rd = request.getRequestDispatcher("/editEmployee.jsp");
	rd.include(request, response);
	}

} catch (SQLException e) {

	out.println("<b><center>Updation Failed</center></b>");
	out.println("<center>" + e.getMessage() + "</center>");
	RequestDispatcher rd = request.getRequestDispatcher("/editEmployee.jsp");
	rd.include(request, response);
} catch (Exception e) {
	System.out.println(e);
	RequestDispatcher rd = request.getRequestDispatcher("/editEmployee.jsp");
	rd.include(request, response);
}


%>
</body>
</html>