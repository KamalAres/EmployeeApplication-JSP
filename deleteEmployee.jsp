<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Employee</title>
<link rel="stylesheet" href="button.css">
</head>
<body bgcolor="#e5e5e5">
<hr color='red'></hr>
<b><center><h1>Employee Application</h1></center></b>
<hr color='red'></hr>
<center>
<p style="text-align:left;">
    <a href='admin_page.html'>Home</a>
    <span style="float:right;">
        <a href='index.jsp'>Logout</a>
    </span>
</p>
<b><h2>Enter the Employee ID to delete record: </h2></b><br><br>
<form action="delete.jsp" >
<h3>Enter Employee ID <input type="text" name="empID"></h3><br><br>
<input class="btn-1" type="submit" value="Delete">
</form>
</center>
<div class="footer">
Employee Application JSP Technology Copyright@2020
</div>
</body>
</html>