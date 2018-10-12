<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<% 
String i =request.getParameter("id");
String f = request.getParameter("firstname");
String l = request.getParameter("lastname");
String c = "12345";
String e = request.getParameter("email");
String dob = request.getParameter("dob");
String co = request.getParameter("course");
String b = request.getParameter("batches");		
String fp = "none";
String m = request.getParameter("mode");
String pdate = request.getParameter("pdate");
String p1 = request.getParameter("payment1");
String p2 = request.getParameter("payment2");
String bl = request.getParameter("balance");
String bi = request.getParameter("bill");
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "4145");

            Statement statement = connection.createStatement() ;
            String query = "insert into register1(id,firstname,lastname,contact,email,dob,batch,fee,mode,pdate,Payment1,Payment2,balance,bill) values ('"+i+"','"+f+"','"+l+"','"+c+"','"+e+"','"+dob+"','"+b+"','"+fp+"','"+m+"','"+pdate+"','"+p1+"','"+p2+"','"+bl+"','"+bi+"')";
			int t=statement.executeUpdate(query);
			if(t==1) {
				System.out.println("registered");
				RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
				rd.forward(request, response);
			}
			 
        %>