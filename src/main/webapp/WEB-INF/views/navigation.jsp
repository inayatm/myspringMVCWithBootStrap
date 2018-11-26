<meta charset="UTF-8">
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<title>ok</title>
<head>

<link href="/webjars/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <link href='<c:url value="/resources/css/login.css"/>' rel="stylesheet">
</head>
<body>

		<nav class="navbar navbar-inverse">
		
		  <div class="container-fluid">
		  
		    <div class="navbar-header">
		    <c:choose>
		     <c:when test= "${sessionScope.name == null}">
		      <a class="navbar-brand" href="#">Welcome to the page.</a>
		       </c:when>
		       <c:otherwise>
		        <a class="navbar-brand" href="#">${name}</a>
		       </c:otherwise>
		      </c:choose>  
		       
		    </div>
		    
		    
		    <c:choose>
		     <c:when test= "${empty name}">
		      <div class="navbar-brand" style="float:right;border-color: #080808;">
		     <a href="#"  data-toggle="modal" data-target="#login-modal"><img src="/resources/images/Lock-locked.png"> </a>
		    </div>
		       </c:when>
		       <c:otherwise>
		        <div class="navbar-brand" style="float:right;border-color: #080808;">
		     <a href="logout" data-toggle="tooltip" data-placement="bottom" title="Logout"><img src="/resources/images/Lock-locked.png"> </a>
		    </div>
		       </c:otherwise>
		      </c:choose>  
		    
		    
		    <!-- <ul class="navbar-brand" style="float:right;background-color: #808080;    border-color: #080808;">
		       <li><a href="#"  data-toggle="modal" data-target="#login-modal"><img src="/resources/images/Lock-locked.png"> </a></li>
		       
		    </ul> -->
		    
		   
		  </div>
	</nav>

 <script src="/webjars/jquery/1.11.1/jquery.min.js"></script>
 <script src="/webjars/bootstrap/3.3.0/js/bootstrap.min.js"></script>
 	<script src='<c:url value="/resources/js/login.js"></c:url>'></script>  
</body>
</html>
