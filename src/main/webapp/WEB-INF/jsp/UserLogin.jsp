
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<script type="text/javascript">
	
	function validate() {
		var response = grecaptcha.getResponse();
		console.log(response)
		if (response === "") {
			alert("Please Select Captcha First !!");
			return false
		}
		return true;
	}

 </script>




<body>
	<div class="center-align" style="color: red;" id="clean_message">
	${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
	
	<c:if test="${param.error!=null}">
		<div class="form-group">
			<div class="col-sm-12" style="border: 0px;">
				<div class="text-danger"><c:out value="Invalid Username and Password"></c:out> </div>
			</div>
		</div>
		<br>
	</c:if>
	<div class="container">
		<form class="form-signin" method="post" action="/dologin" id="loginForm">
			<h2 class="form-signin-heading">Please sign in</h2>
			<p>
				<label for="username" class="sr-only">Username</label> <input
					type="text" id="username" name="username" class="form-control"
					placeholder="Username" required autofocus>
			</p>
			<p>
				<label for="password" class="sr-only">Password</label> <input
					type="password" id="password" name="password" class="form-control"
					placeholder="Password" required>
			</p>
			<div class="row">
			<div class="col-2"> Validate reCAPTCHA</div>
			<div class="col-4">
				<div class="g-recaptcha" data-sitekey="6LcB7rIjAAAAAHUqrQ6Zov4XnbSuWomk3afC0PwM"
				data-theme="dark"></div>
			</div>
		</div>
			<button onclick="return validate()" class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form>
	</div>
</body>