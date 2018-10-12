<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>

<%
	String f = request.getParameter("username");
	String p = request.getParameter("password");
	String r = request.getParameter("role");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "4145");

	Statement statement = connection.createStatement();
	String query = "insert into users_table(Name,Password,Role) values ('" + f + "','" + p + "','" + r + "')";
	int t = statement.executeUpdate(query);
	if (t == 1) {
		System.out.println("registered");
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
	}
%>