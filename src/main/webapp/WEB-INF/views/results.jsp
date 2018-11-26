<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<spring:url value="/resources/js/search.js" var="searchScriptlink"></spring:url>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Bootstrap Snipp for Datatable</h4>
				<div class="table-responsive">
					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<tr>
								<th><input type="checkbox" id="checkall" /></th>
								<th>Title</th>
								<th>Name</th>
								<th>Author</th>
								<th>Address</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<%-- <% 
    int i=1;
    while(i<=25){ %>
     --%>
							<%--   <tbody>
        <tr>
   
    <td><input type="checkbox" class="checkthis" /></td>
    <td>OCJP 2018</td>
    <td>Java</td>
    <td>Khalid Moghalai</td>
    <td>CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan</td>
    <td>isometric.mohsin@gmail.com</td>
    <td>+923335586757</td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
  <% i++;} %>  --%>

							<c:forEach items="${booklist}" var="book">
								<tr>
									<td><input type="checkbox" class="checkthis" /></td>
									<td>"${book.title}"</td>
									<td>"${book.name}"</td>
									<td>"${book.author }"</td>
									<td>"${book.address}"</td>
									<td>"${book.email}"</td>
									<td>"${book.contact}"</td>
								 	<td>
								 	<input type="hidden" value="${book.id}"/>
								 	<p data-placement="top" data-toggle="tooltip" title="Edit">
											<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" name="editButton">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</p>
				          			</td>
					
									<td><p data-placement="top" data-toggle="tooltip" title="Delete">
											<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete">
												<span class="glyphicon glyphicon-trash"></span>
											</button>
										</p>
										
										</td>
									
								</tr>
							</c:forEach>
						</tbody>

					</table>



					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span
								class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>

				</div>

			</div>
		</div>
	</div>



	<div class="modal fade" id="edit" tabindex="-1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Edit Your Details</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<input class="form-control " type="text" placeholder="${book.title}" />
					</div>
					<div class="form-group">

						<input class="form-control " type="text" placeholder="Irshad" />
					</div>
					<div class="form-group">
						<textarea rows="2" class="form-control"
							placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning btn-lg"
						style="width: 100%;">
						<span class="glyphicon glyphicon-ok-sign"></span> Update
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>




	<div class="modal fade" id="delete" tabindex="1" role="dialog"
		aria-labelledby="edit" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
					<h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
				</div>
				<div class="modal-body">

					<div class="alert alert-danger">
						<span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?
					</div>

				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-ok-sign"></span> Yes
					</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> No
					</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>



		<!-- /.modal-dialog -->
	</div>
	<script src="/webjars/jquery/1.11.1/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="${searchScriptlink}"></script>
	
</body>
</html>