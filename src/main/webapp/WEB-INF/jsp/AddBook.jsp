
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

	

	<c:if test="${msg!=null}">
${msg}
</c:if>

	<%-- ${msg} --%>


	<form action="addBookDetails" method="post">
		<div class="col-md-6 text-center ml-5">



			<div class="form-group row mt-5">
				<label for="inputEmail3" class="col-sm-2 col-form-label">Book</label>
				<div class="col-sm-10">
					<input type="text" name="bookName" class="form-control"
						id="inputEmail3" placeholder="Book Name">
				</div>
			</div>
			
			<div class="text-left ml-5">
				<c:if test="${msg1!=null}">
				${msg1}
				</c:if>
			</div>


			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Writer</label>
				<div class="col-sm-10">
					<input type="text" name="writer" class="form-control"
						id="inputPassword3" placeholder="Writer Name">
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Price</label>
				<div class="col-sm-10">
					<input type="text" name="price" class="form-control"
						id="inputPassword3" placeholder="Price Amount in Rs.">
				</div>
			</div>


			<div class="form-group row">
				<label for="exampleFormControlTextarea1"
					class="col-sm-2 col-form-label">Description</label>
				<div class="col-sm-10">
					<textarea class="form-control" name="description"
						id="exampleFormControlTextarea1" placeholder="Add Description"
						rows="3"></textarea>
				</div>
			</div>

			<div class="form-group row ml-5">
				<div class="col-sm-10 ml-5">
					<button type="submit" class="btn btn-primary">Add Book</button>
				</div>
			</div>
		</div>

	</form>

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