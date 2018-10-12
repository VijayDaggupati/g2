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
	<script>
	$(document).ready(function() {
		$('#p1').click(function() {
			//alert('hi');
			$('#News').load('payment.jsp');
		});
	});
	</script>
</head>
<body>
<% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "4145");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select firstname,dob,contact from register1 where dob = curdate()+1;") ; 
        %>
	<div class="tab1">
	<button class="tablink" onclick="openPage('Home', this, 'lightgrey')">Birthday</button>
<button id="p1" class="tablink" onclick="openPage('News', this, 'lightgrey')" id="defaultOpen">Payments</button>
<!-- <button class="tablink" onclick="openPage('Contact', this, 'lightgrey')">Contact</button>
<button class="tablink" onclick="openPage('About', this, 'lightgrey')">About</button> -->
</div>
<div id="Home" class="tabcontent">
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
				<td><%= resultset.getString("dob") %></td>
				<td><%= resultset.getString("contact") %></td>
			</tr>
			<% } %>
	</table>
</div>

<div id="News" class="tabcontent">
<%-- <table id="one">
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
	</table> --%>
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