<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="navigation.jsp" %>
 <link href='<c:url value="/resources/css/results.css"/>' rel="stylesheet">
<div class="jumbotron text-center">
  <h2>Search your Book </h2>
  <spring:url value="byName" var="byNameUrl"/>
  
  <form:form action="${byNameUrl}" method="post" class="form-inline" modelAttribute="book">
    <div class="form-group">
      <input type="text" name="name" class="form-control" size="50" placeholder="Book Name" required>
    </div>
    
    <button type="submit" class="btn btn-danger">Submit</button>
  </form:form>
</div>


<%@include file="results.jsp" %>"