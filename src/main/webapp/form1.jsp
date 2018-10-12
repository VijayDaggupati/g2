<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<link href="<c:url value="/resources/css/form1.css"  />" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script >$(document).ready(function () {
	$("button").click(function(){
    $(".FLEBOX1").slideToggle(1000).scrollTOP().animate({ scrollTop:s1000},1000);
	}); 
});
</script>
</head>
<body>
    <h1 class="fh1" style="padding-left: 140px;">Student info</h1>
<!--     <div class="underline"></div> -->
<form action="Register.jsp" method="post">

  <div class="FLEBOX">
  <div class="FLE1">
 <label>ID</label>
 <input style="width: 50%;" type="text" name="id" placeholder="ID">
 </div>
    <div class="FLE">
      <div class="FLE1">
   <label>First Name</label>
   <input type="text" name="firstname" placeholder="FirstName" required="required">
  </div>
  <div class="FLE1">
   <label>last Name</label>
   <input type="text" name="lastname" placeholder="LastName" required="required">
   </div>
   <div class="FLE1">
   <label>Email</label>
   <input type="text" name="email" placeholder="Email" required="required">
   </div>
   </div>
    <div class="FLE1">
   <label>DOB</label>
   <input type="date" name="dob" placeholder="date" required="required">
   </div>
  
<div class="FLE1">
 <label>Course</label>
   <select name="course">
    <option value="AWS">AWS</option>
    <option value="Devops">Devops</option>
    <option value="Python">Python</option>
    <option value="Java">Java</option>
  </select>
</div>
<div class="FLE1">
 <label>Batches</label>
   <select  name="batches">
    <option value="9:30-11:00(morning)">9:30-11:00(morning)</option>
    <option value="6:00-8-00(evening)">6:00-8-00(evening)</option>
    <option value="9:30-12-00(weekends)">9:30-12-00(weekends)</option>
  </select>
</div>
<!-- <div class="FLE1">
 <label>Batches</label>
 <input type="text" name="firstName">
</div> -->
</div>
<div class="FLE">
    <div class="FLE1">
 <label>Country</label>
 <input type="text" name="country" value="India">
</div>
<div class="FLE1">
 <label>City</label>
 <input type="text" name="city" value="banglore">
 </div>
 <div class="FLE1">
 <label>Zip Code</label>
 <input type="text" name="zipcode">
 </div>
</div>
<div class="submit1">
<button class="button"><a href="#tab1">save/proceed</a></button>
</div>
</div>
<div id="tab1" class="FLEBOX1">
  <h1 class="fh1">Fee record</h1>
  <div  style="margin: 30px">
    <label >Mode/Payment method</label>
    <div class="mode">
      <input style="padding-left: 0px; " type="radio" name="mode" value="cash" checked><label>Card<span class="fa fa-credit-card" id="icon"></span></label>
      <input style="margin-left: 40px; " type="radio" name="mode" value="card"><label>Cash<span class="fa fa-money" id="icon"></span></label>
      <input style="margin-left: 40px; " type="radio" name="mode" value="other"><label>Other<span class="fa fa-credit-card" id="icon"></span></label>
      </div>
  </div>
  <div class="FLE1">
   <label>DOB</label>
   <input type="date" name="pdate" placeholder="date" required="required">
   </div>
  <div class="FLE">
      <div class="FLE1">
   <label>Installment one</label>
   <input type="text" name="payment1" placeholder="1st">
  </div>
  <div class="FLE1">
   <label>Installment two</label>
   <input type="text" name="payment2" placeholder="2nd">
   </div>
   <div class="FLE1">
   <label>total amount</label>
   <input type="text" name="balance" placeholder="Total fee" required="required">
   </div>
  </div>
 <div class="FLE1">
 <label>bill number</label>
 <input style="width: 50%;" type="text" name="bill" required="required">
 </div>
<input class="submit" type="submit" name="submit">
</div>
	<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
</form>

<!-- <script type="text/javascript">
$(document).ready(function(){
    $(".button").click(function(){
        /*$(".FLEBOX1").hide();*/
        alert("hy");
    });
});
</script> -->
<script type="text/javascript" src="form1.js"></script>
</body>
</html> 