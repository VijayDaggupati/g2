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
                statement.executeQuery("select firstname,pdate,contact from register1 where pdate <= curdate()+2;") ; 
        %>
	<div class="container">
		<table id="one">
			<tr>
				<div id="header">
					<th>Name</th>
					<th>Date</th>
					<th>Contact</th>
				</div>
			</tr>
			<% while(resultset.next()){ %>
			<tr>
				<td><%= resultset.getString("firstname") %></td>
				<td><%= resultset.getString("pdate") %></td>
				<td><%= resultset.getString("contact") %></td>
			</tr>
			<% } %>
		</table>
</body>
</html>