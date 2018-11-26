<meta charset="UTF-8">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Yahoo!!</title>

<!-- <link href="/webjars/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="WEB-INF/views/css/login.css">
<script src="/webjars/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/2.1.4/jquery-min.js"></script> -->

<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script> -->

<!-- <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> -->




</head>
<body class="modal-open"> 

<%@include file="navigation.jsp" %>

<%-- <p><font color="red">${errorMessage}</font></p>
    <form action="login" method="POST">
        Name :     <input name="name" type="text" /> <br/>
        Password : <input name="password" type="password" /> <br/>
         <input type="submit" />
          <p><font color="red">${errorMessage}</font></p><br/>
    </form> --%>
    
     

 <!--Login Model begins -->  
 
   <c:choose>
    <c:when test = "${errorMessage == null}">
    <c:out value="${errorMessage}"/>
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog" role="document">
    	  <div class="modal-content" style="height: 155px; width: 425px;top: 224px;">
				<div class="loginmodal-container">
					<h4>Login to Your Account</h4><br>
					<spring:url value="login" var="loginUrl"/>
					<form:form id="target" action="${loginUrl}" method="POST" modelAttribute="user">
					<form:input path="name"/>
					<form:password path="password"/>
					<!-- <input type="submit" name="login" class="login loginmodal-submit" value="Login"> -->
					<button type="button" id="loginId" name="login" class="login loginmodal-submit" >Login</button>
				 </form:form>
					
				  <div class="login-help">
					<a href="#">Register</a> - <a href="#">Forgot Password</a>
				  </div>
				</div>
			</div>
	<!--     <script src="webjars/jquery/1.11.1/jquery.min.js"></script>
        <script src="webjars/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
        </div>
		  </div>
</c:when>
<c:otherwise>
   
   <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	  <div class="modal-dialog" role="document">
    	        <div class="modal-content" style="height: 155px; width: 425px;top: 224px;">
				<div class="loginmodal-container">
					<h4>Login to Your Account</h4><br>
					<div id="errormessage"></div>
				  <form:form action="${loginUrl}" method="POST" modelAttribute="user">
					<form:input path="name"/>
					<form:password path="password"/>
					<!-- <input type="submit" name="login" class="login loginmodal-submit" value="Login"> -->
					<button type="button" id="loginId" name="login" class="login loginmodal-submit" >Login</button>
				   </form:form>
					
				  <div class="login-help">
					<a href="#">Register</a> - <a href="#">Forgot Password</a>
				  </div>
				</div>
			</div>
	             <!-- <script src="webjars/jquery/1.11.1/jquery.min.js"></script>
                <script src="webjars/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
                </div>
		  </div>

</c:otherwise>

</c:choose>
 <!-- login Failed Begins -->		  

    		  
		  
<!-- login Failed  Ends-->		  
		  
 <!--Login Model begins Ends -->   
  </body>  
    

</html>