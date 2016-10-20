<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@include file="/WEB-INF/views/template/all.css"%>

<div class="container-wrapper">
	<div class="login-container">
		<div id="login-box">

			<h2>Login with Name and Password</h2>

			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>

			<form name="loginForm"
				action="<c:url value="/j_spring_security_check" />" method="post">
				<c:if test="${not empty error}">
					<div class="error" style="color: #ff0000;">${error}</div>
				</c:if>
				<div class="imgcontainer">
					<span class="close" title="Close">&times;</span>
					<img src="<c:url value="/resources/images/icon.png" />" alt="Avatar"
						class="avatar">
				</div>
				<div class="form-group">
					<label for="username">User: </label> <input type="text"
						id="username" name="username" class="form-control" />
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" class="form-control" />
				</div>

				<input type="submit" value="Submit" class="btn btn-default">
				<input type="checkbox" checked="checked"> Remember me
				<div class="container" style="background-color: #f1f1f1">
									<button type="button" class="cancelbtn"> Cancel</button>
									Forgot <a href="#">password?</a>
								</div>

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>

		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>