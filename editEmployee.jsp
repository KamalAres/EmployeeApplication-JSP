<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
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
<b><h2>Enter the Employee Details you want to change: </h2></b><br><br>
<form action="edit.jsp">
Employee Id &emsp;&emsp;&nbsp;&nbsp;<input type="text" name="empid">
<br>
Employee Name &emsp;<input type="text" name="empname">
<br>
Email &emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;<input type="text" name="email">
<br>
Date of join &emsp;&emsp;&emsp;<input type="text" name="doj">
<br>
Sex &emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;<input type="text" name="sex">
<br>
Designation &emsp;&emsp;&emsp;<input type="text" name="dest">
<br>
Address &emsp;&emsp;&nbsp;&emsp;&emsp;<input type="text" name="address">
<br>
Contact No &emsp;&emsp;&emsp;<input type="text" name="contact">
<br>
<br>
<input class="btn-1" type="submit" value="Update">
</form>
</center>
<div class="footer">
Employee Application JSP Technology Copyright@2020
</div>
</body>
</html>