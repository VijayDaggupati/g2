<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PA</title>
<link rel="stylesheet" type="text/css" href="index.css">
<style>
#one {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#one td {
	border: 1px solid white;
	padding: 8px;
}

#one tr:nth-child(even) {
	background-color: #f2f2f2;
}

#one tr:hover {
	background-color: #ddd;
}

#one th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	padding-left: 10px;
	background-color: dodgerblue;
	color: white;
}
</style>
</head>
<body>
	<% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "4145");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from register1") ; 
        %>
	<div class="container">
		<table id="one">
			<tr>
				<div id="header">
					<th>First Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Course</th>
					<th>Action</th>
				</div>
			</tr>
			<% while(resultset.next()){ %>
			<tr>
				<td><%= resultset.getString(2) %></td>
				<td><%= resultset.getString(4) %></td>
				<td><%= resultset.getString(5) %></td>
				<td><%= resultset.getString(6) %></td>
				<td><button>Accept</button>
				<button>Decline</button></td>
			</tr>
			<% } %>
		</table>
</body>
</html>