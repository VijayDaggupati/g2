<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
 <meta http-equiv="Pragma" content="no-cache">
 <meta http-equiv="Cache-Control" content="no-cache">
 <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<title>Login Page</title>
</head>
<body onload='document.loginForm.username.focus();'>

<div class="form">

	<div id="login-box">

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<div>
			<h1>
				<i class="	fa fa-address-book"
					style="color: white; font-size: 25px; color: white; padding-right: 10px;"></i>Login:
			</h1>
			<form name='loginForm'
				action="<c:url value='/j_spring_security_check' />" method='POST'>
				<i class="	fa fa-address-book"
					style="color: black; font-size: 20px; color: white; padding-right: 10px;"></i><input
					type="text" name="username" placeholder="Username" required><br>
				<i class="	fa fa-pencil-square"
					style="color: black; font-size: 25px; color: white; padding-right: 10px;"></i><input
					type="password" name="password" placeholder="Password" required><br>
				<button type="submit">Login</button>
				<div class="bottomline"></div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

			</form>
		</div>
	</div>
</div>
</body>
</html>