<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page session="true"%>
<%@ page import="java.sql.*"%>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<html>
<head>
<link href="<c:url value="/resources/css/admin.css"  />"
	rel="stylesheet" />
<title>admin</title>
<script src="http://code.jquery.com/jquery-1.4.min.js"
	type="text/javascript"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
.dropdown-content {
	box-sizing: border-box;
	display: none;
	position: absolute;
	right: 1%;
	border-radius: 5px;
	max-height: 250px;
	overflow-y: scroll;
	scroll-behavior: all;
	min-width: 350px;
	background-color: black;
	margin-top: 20px;
	color: lightgrey;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 5;
}

.dropdown-content1 {
	box-sizing: border-box;
	display: none;
	position: absolute;
	border-radius: 5px;
	max-height: 200px;
	overflow-y: scroll;
	scroll-behavior: all;
	min-width: 250px;
	background-color: black;
	margin-top: 10px;
	color: lightgrey;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 5;
}

::-webkit-scrollbar {
	border: none;
	outline: none;
	/*	display: none;*/
	width: 5px;
}

::-webkit-scrollbar {
	border: none;
	outline: none;
	/*	display: none;*/
	width: 5px;
}

::-webkit-scrollbar-track {
	box-shadow: inset 0 0 5px grey;
	border-radius: 10px;
}

::-webkit-scrollbar-thumb {
	background: darkgrey;
	border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
	background: #b30000;
}

.dropdown-content::-webkit-scrollbar {
	border: none;
	outline: none;
	/*	display: none;*/
	width: 3px;
}

.dropdown-content::-webkit-scrollbar-track {
	box-shadow: inset 0 0 5px grey;
	border-radius: 10px;
}

.dropdown-content::-webkit-scrollbar-thumb {
	background: darkgrey;
	border-radius: 10px;
}

.dropdown-content::-webkit-scrollbar-thumb:hover {
	background: #b30000;
}

.closebutton {
	margin-left: 20px;
	color: white;
	font-weight: bold;
	float: right;
	font-size: 24px;
	line-height: 20px;
	cursor: pointer;
	transition: 0.3s;
}

.closebutton1 {
	margin-left: 20px;
	color: white;
	font-weight: bold;
	float: right;
	font-size: 24px;
	line-height: 20px;
	cursor: pointer;
	transition: 1.0s;
}

.alert {
	padding: 15px;
}
/*.notify::after{
	content: "";
	position: absolute;
	left: 69%;
	top: 8%;
	clip-path: polygon(50% 0%, 0% 100%, 100% 100%);
	width: 18px;
	height: 15px;
	background-color: black;
}*/
.dropdown-content th {
	border-radius: 5px;
	padding: 15px;
}

.dropdown-content tr:hover {
	background-color: grey;
}

.arrow {
	display: none;
	width: 20px;
	height: 20px;
	background-color: black;
	transform: rotate(45deg);
	position: absolute;
	top: 6.5%;
	left: 96.1%;
}
/*.arrow1 {
	display: none;
	width: 20px;
	height: 20px;
	background-color: black;
	transform: rotate(45deg);
	position: absolute;
	top: 9.5%;
 left: 95.5%;
}*/
table tr span {
	position: absolute;
	right: 10px;
}

.dash {
	display: flex;
	padding: 15px 15px;
	align-items: center;
	border-bottom: 1px solid grey;
}

.iconpic {
	margin-right: 20px;
	background-color: dodgerblue;
	padding: 25px;
	border-radius: 50%;
}
</style>
<script>
	$(document).ready(function(){
   	 $(".closebutton").click(function(){
        $(".one").hide(500);
    });
   	 $(".closebutton1").click(function(){
        $(".two").hide(500);
    });
   	 $(".notify").click(function(){
   	 	$(".dropdown-content").slideToggle(500);
   	 	$(".arrow").slideToggle(500);
   	 });
   	    $(".prof").click(function(){
   	 	$(".dropdown-content1").slideToggle(500);
   	 	$(".arrow1").slideToggle(500);
   	 });
/*   	 $("body").click(function(){
   	 	$(".dropdown-content").slideUp(500);
   	 });*/
});

</script>
<script>
	$(document).ready(function() {
		$('#btn').click(function() {
			//alert('hi');
			$('#div_content').load('tab.jsp');
		});
	});
	$(document).ready(function() {
		$('#btn1').click(function() {
			//alert('hi');
			$('#div_content').load('form1.jsp');
		});
	});
	$(document).ready(function() {
		$('#btn2').click(function() {
			//alert('hi');
			$('#div_content').load('createnewuser.jsp');
		});
	});
	$(document).ready(function() {
		$('#btn3').click(function() {
			//alert('hi');
			$('#div_content').load('manage.jsp');
		});
	});
	$(document).ready(function() {
		$('#btn5').click(function() {
			//alert('hi');
			$('#div_content').load('notifications.jsp');
		});
	});
</script>
<script>
var request;
function find()
{
var v=document.search.t1.value;
var url="ajj.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e)
{
alert("Unable to connect to server");
}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('abc').innerHTML=val;
}
}

</script>
</head>
<body>
	<% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "4145");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from register1") ; 
        %>
	<section>
		<div class="icon"></div>
		<!-- <div class="dash">
		<div class="iconpic">1</div>
		<div class="naming"><h1 style="letter-spacing: 3px;color: ">ADMIN</h1>
		<button class="signout" style="padding: 5px;margin: 5px;">Sign out!</button></div>
	</div> -->
		<!-- <input class="search" type="text" name="search" placeholder="Search"> -->
		<ul class="sidebar">
			<li id="btn"><a href="#"> Pending Approch</a></li>
			<li><a href="#"> Inbox</a></li>
			<li><a href="#"> Alerts/Reports</a></li>
			<!-- 		<li><a href="#"> Reports</a></li> -->
			<li id="btn3"><a href="#"> Manage</a></li>
			<!-- 		<li><a href="#"> Demo</a></li> -->
			<li id="btn1"><a href="#"> Data Entry </a></li>
			<li id="btn5"><a href="#"> Notifications </a></li>
			<li id="btn4"><a href="login?logout"> Log Out </a></li>
		</ul>
	</section>
	<nav>
		<h1>Admin</h1>
		<div style="display: flex; margin-left: 600px;">
		<form style="display: flex;" name="search" action="aj.jsp">
<input class="search" type="text" name="t1" onkeyup="find()">
<button style="background-color: dodgerblue; padding: 10px; border-radius: 20px; padding-left: 35px; margin-left: -30px; display: inline-block; color: white"
				class="fa fa-search" type="submit"></button>
<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
</form>
			<!-- <input class="search" type="text" name="search"
				placeholder="Search..."><span
				style="background-color: dodgerblue; padding: 10px; border-radius: 20px; padding-left: 35px; margin-left: -30px; display: inline-block; color: white"
				class="fa fa-search"></span> -->
		
		<div>
			<a href="#" class="notify" style="padding-right: 30px;"><span
				class="	fa fa-bell" style="padding-right: 0px; font-size: 20px;"></span>
			<!-- Notification --></a>
			<h1 class="arrow"></h1>
			<div class="dropdown-content">
				<!-- 		<div class="alert one" style="color: black;background-color: red;">
				<span class="closebutton">&times;</span>
				<p class="kl"><strong>Info!</strong>Indicates a neutral change.</p>
			</div>

			<div class="alert two" style="color: black;background-color: dodgerblue;">
				<span class="closebutton1">&times;</span>
				<p class="kl"><strong>Info!</strong>Indicates a neutral change.</p>
			</div> -->
				<table
					style="width: 100%; margin-top: 10px; max-height: 200px; overflow: scroll;">

					<% while(resultset.next()){ %>
					<tr>
						<th><%= resultset.getString(2) %><span class="notifyx">x</span></th>
					</tr>
					<% } %>
				</table>
			</div>
			<!-- 	<a href="#"><span class="	fa fa-envelope" style="padding-right: 5px;"></span>Contact Us</a>
	<a href="#"><span class="	fa fa-cog" style="padding-right: 5px;"></span>Support</a> -->
			<!-- <a href="#" class="prof"><span class="	fa fa-id-badge" style="padding-right: 5px;"></span></a>
			<h1 class="arrow1"></h1>
		<div class=dropdown-content1>


			 	<h1>profile</h1> 
			</div> -->
		</div>
	</nav>
	<main id="div_content" class="main1">
	</div>
		<div id="abc"> </div>
	 <!-- <div class="pending">
	
		<h1>123</h1>
		<p>odhf iwqhefi wqeiqwie biqeb tiweg twe whe wqe tiqwef </p>
	</div>
		<div class="inbox">
		
	</div>
		<div class="alerts">
		
	</div>
		<div class="reports">
		
	</div>
		<div class="manage">
		
	</div>
	<div class="admin">
		
	</div> --> <!--<div class="demo">
		<div class="adminpic" ></div>
		<h1 style="margin-bottom: 20px;">P Nageshwara Rao </h1>
		<a href="#">Admin</a>
		<div class="text">E-mail address:<span>@gmail.com</span></div>
		<div class="text">Phone-number:<span>123456</span></div>
		<div class="text">Company:<span>Nexamatic</span></div>
		<div class="text">Twitter username:<span>@132</span></div>
		<div class="text">Instagram:<span>@132</span></div>

	</div>--> </main>

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<%-- 	<div style="visibility: hidden;">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>Welcome : ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> Logout</a>
			</h2>
		</c:if>
	</div> --%>

</body>
</html>