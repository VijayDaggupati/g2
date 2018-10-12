<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Create</title>
	<link rel="stylesheet" type="text/css" href="create.css">
	<style>*{
	margin: 0;
	box-sizing: border-box;
}
body{
/* 	display: flex;
	justify-content: center;
	align-items: center; */
	width: 100%;
	height: 100%;
	background-color: lightgrey;
}
.create {
	border-radius: 10px;
	background-color: white;
}
.backimg {
	background-image: url("beverage-coffee-computer-877695.jpg");
	background-size: 100% 100%;
}
.backimg h1 {
	padding: 70px 200px;
	color: white;
	letter-spacing: 3px;
	background-color: rgba(32, 39, 49, .7);
}
.form form {
	text-align: center;

}
.box1{
	display: flex;
	justify-content: space-around;
	margin: 40px 0;
}
.box2{
	display: flex;
	justify-content: space-around;
}
/* label{
    display: inline-block;
    float: left;
    clear: left;
    width: 100%;
    padding-left: 40px;
    color: grey;
} */
input {
	outline: none;
  display: inline-block;
  float: right;
  border-radius: 5px;
  padding: 5px;
  margin-right: 60px;
  width: 130%;
}
.submit{
	width: 100%;
	text-align: left;
	display: block;

}
.submit input{
	display: block;
	width: 30%;
	margin-top: 50px;
	background-color: dodgerblue;
	color: white;
	letter-spacing: 2px;
	padding: 10px 0;
	margin-right:0;
}
</style>
</head>
<body>
	<div class="create">
		<div class="backimg">
			<h1>Create User!</h1>
		</div>
			<div class="form">
				<form action="createuser.jsp" method="post">
				<div class="box1">
				<label>User name</label>
				<input type="text" name="username" placeholder="Name">
				</div>
				<div class="box2">
				<label>Password</label>
				<input type="text" name="password" placeholder="Password">
				</div>
				<div class="box2">
				<label>Role</label>
				<input type="text" name="role" placeholder="roles">
				</div>
				<div class="submit">
				<input type="submit" name="submit" value="Create">
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
			</form>
			</div>		
	</div>

</body>
</html>