<%@ page import="java.sql.*"%>
<%
String s=request.getParameter("val");
if(s==null || s.trim().equals("")){
}else{
String id=s;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","4145");
PreparedStatement ps=con.prepareStatement("select * from register1 where id=?");
ps.setString(1,id);
ResultSet rs=ps.executeQuery();
while(rs.next()){
out.println(rs.getString(1)+" "+rs.getString(2));
}
con.close();
}catch(Exception e){e.printStackTrace();}
}
%>