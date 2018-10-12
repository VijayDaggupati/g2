<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<html>
<head>
	<title></title>
	<link href="<c:url value="/resources/css/manage.css" />" rel="stylesheet">
	<script type="text/javascript" src="manage.js"></script>
	<link href="<c:url value="/resources/css/create.css" />" rel="stylesheet">
	<script>
	function openPage(pageName, elmnt, color) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablink");
	    for (i = 0; i < tablinks.length; i++) {
	        tablinks[i].style.backgroundColor = "";
	    }

	    document.getElementById(pageName).style.display = "block";

	    elmnt.style.backgroundColor = color;
	}

	document.getElementById("defaultOpen").click();
	</script>
</head>
<body>

	<div class="tab1">
	<button class="tablink" onclick="openPage('Home', this, 'lightgrey')" id="defaultOpen">Create user</button>
<button class="tablink" onclick="openPage('News', this, 'lightgrey')" >Users</button>
<!-- <button class="tablink" onclick="openPage('Contact', this, 'lightgrey')">Contact</button>
<button class="tablink" onclick="openPage('About', this, 'lightgrey')">About</button> -->
</div>
<div id="Home" class="tabcontent">
<div class="container">
	<div class="create">
		<div class="backimg">
			<h1>Create User<span class="es">!</span></h1>
		</div>
		<div class="createbox1">
			<div class="createbox2"></div>
			<div class="form">
				<form action="createuser.jsp" method="post">
				<div class="box1">
				<label>User name</label>
				<input style="margin-right: 50px;" class="new" type="text" name="username" placeholder="Username">
				</div>
				<div class="box2">
				<label>Password</label>
				<input style="margin-right: 50px;" class="new" type="text" name="password" placeholder="Password">
				</div>
				<div class="box3">
 					<label>Course</label>
  					 <select style="margin-right: 50px;" name="role">
   					 <option value="HR" >HR</option>
   					 <option value="Manager" >Manager</option>
    				 <option value="Student" >Student</option>
 					 </select>
				</div>
				<div class="submit" style="width: 35%;margin-left: 30%;">
				<input type="submit" name="submit" value="Create">
				</div>
			</form>
			</div>		
	</div>
</div>
</div>

</div>
</div>
<% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "4145");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from users_table") ; 
        %>
<div id="News" class="tabcontent">
<table id="one">
		<tr>
			<div id="header">
			<th>Name</th>
			<th>Password</th>
			<th>Role</th>
			</div>
		</tr>
		<% while(resultset.next()){ %>
			<tr>
				<td><%= resultset.getString(1) %></td>
				<td><%= resultset.getString(2) %></td>
				<td><%= resultset.getString(3) %></td>
			</tr>
			<% } %>
	</table>
</div>

<!-- <div id="Contact" class="tabcontent">
  <h3>Contact</h3>
  <p>Get in touch, or swing by for a cup of coffee.</p>
</div>

<div id="About" class="tabcontent">
  <h3>About</h3>
  <p>Who we are and what we do.</p>
</div>  -->
<script type="text/javascript">
	function openPage(pageName, elmnt, color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }

    document.getElementById(pageName).style.display = "block";

    elmnt.style.backgroundColor = color;
}

document.getElementById("defaultOpen").click();



</script>
</body>
</html>