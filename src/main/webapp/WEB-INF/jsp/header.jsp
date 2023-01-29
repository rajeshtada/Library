<html lang="en">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Login Form</title>


	<!-- Start nav bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Library</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/callRest/home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/callRest/userRegist">User Signup
						<span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Service </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item"
							href="${pageContext.request.contextPath }/Book/AddBook">Add
							Book</a> 
						<div class="dropdown-divider"></div>
						<a href="${pageContext.request.contextPath }/Book/LiberaryBook" 
						class="dropdown-item" >Library Book</a>
					</div></li>
					
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdownTest"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Test Service </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownTest">
						<a class="dropdown-item"
							href="${pageContext.request.contextPath }/test/downloadFile">Test_Excel</a> 
						<a href="${pageContext.request.contextPath }/Book/LiberaryBook" 
						class="dropdown-item" >Library Book</a>
					</div></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				<a class="nav-link disabled" href="#">${userName}</a>
			</form>
			<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/callRest/signin">Logout
						<span class="sr-only">(current)</span>
				</a></li>
		</div>
	</nav>
<!-- 	<p style="background-image: url('/home/user91/Documents/Workspace/callRest/src/main/Resources/colored-pencils-isolated-with-rubber.jpg');height: 100%;width: 100%"> -->
	<Body background="/WEB-INF/jsp/Resources/colored-pencils-isolated-with-rubber.jpg"/>
	
	
	