<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Login Form</title>
</head>
<body>

<!-- 	<!-- Start nav bar --> -->
<!-- 	<nav class="navbar navbar-expand-lg navbar-light bg-light"> -->
<!-- 		<a class="navbar-brand" href="#">Library</a> -->
<!-- 		<button class="navbar-toggler" type="button" data-toggle="collapse" -->
<!-- 			data-target="#navbarSupportedContent" -->
<!-- 			aria-controls="navbarSupportedContent" aria-expanded="false" -->
<!-- 			aria-label="Toggle navigation"> -->
<!-- 			<span class="navbar-toggler-icon"></span> -->
<!-- 		</button> -->

<!-- 		<div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
<!-- 			<ul class="navbar-nav mr-auto"> -->
<!-- 				<li class="nav-item active"><a class="nav-link" href="#">Home -->
<!-- 						<span class="sr-only">(current)</span> -->
<!-- 				</a></li> -->

<!-- 				<li class="nav-item dropdown"><a -->
<!-- 					class="nav-link dropdown-toggle" href="#" id="navbarDropdown" -->
<!-- 					role="button" data-toggle="dropdown" aria-haspopup="true" -->
<!-- 					aria-expanded="false"> Service </a> -->
<!-- 					<div class="dropdown-menu" aria-labelledby="navbarDropdown"> -->
<!-- 						<a class="dropdown-item" -->
<%-- 							href="${pageContext.request.contextPath }/Book/AddBook">Add --%>
<!-- 							Book</a> -->
<!-- 						<div class="dropdown-divider"></div> -->
<%-- 						<a href="${pageContext.request.contextPath }/Book/LiberaryBook" --%>
<!-- 							class="dropdown-item" href="#">Library Book</a> -->
<!-- 					</div></li> -->

<!-- 			</ul> -->
<!-- 			<form class="form-inline my-2 my-lg-0"> -->
<!-- 				<input class="form-control mr-sm-2" type="search" -->
<!-- 					placeholder="Search" aria-label="Search"> -->
<!-- 				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
<%-- 				<a class="nav-link disabled" href="#">${userName}</a> --%>
<!-- 			</form> -->
<!-- 		</div> -->
<!-- 	</nav> -->
<!-- 	<!-- end nav bar --> -->

	<c:if test="${msg!=null}">
${msg}
</c:if>

	<div class="m-5">
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search Book" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			<a class="nav-link disabled" href="#">${userName}</a>
		</form>
	</div>

	<div class="m-5">
		<table class="table table-striped">
			<tr>
				<th>Book Name</th>
				<th>Writer</th>
				<th>Price</th>
				<th>Description</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>

			<c:forEach items="${books}" var="book">
				<tr>
					<td>${book.bookName}</td>
					<td>${book.writer}</td>
					<td>${book.price}</td>
					<td>${book.description}</td>
					<td><form class="edit" method="post"
							action="${pageContext.request.contextPath }/editBank"
							target="_blank">
							<input type="hidden" name="id" value="${book.id }">
							<button type="text" class="btn btn-xs">
								Update <i class="fa fa-edit"></i>
							</button>
						</form></td>
					<td><form class="edit" method="post"
							action="${pageContext.request.contextPath }/editBank"
							target="_blank">
							<input type="hidden" name="id" value="${book.id }">
							<button class="btn btn-xs">
								Delete <i class="fa fa-edit"></i>
							</button>
						</form></td>
				</tr>

			</c:forEach>

		</table>
	</div>






	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>