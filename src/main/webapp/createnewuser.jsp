<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<link href="<c:url value="/resources/css/cn.css"  />" rel="stylesheet"/>
	<title></title>
</head>
<body>
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
  					 <select style="margin-right: 50px;" name="course">
   					 <option value="HR" name="role">HR</option>
   					 <option value="Manager" name="role">Manager</option>
    				 <option value="Student" name="role">Student</option>
 					 </select>
				</div>
				<div class="submit" style="width: 35%;margin-left: 30%;">
				<input type="submit" name="submit" value="Create">
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
			</form>
			</div>		
	</div>
</div>
</div>

</body>
</html>


