<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thinking Cube: Login</title>
<%@include file="all_components/allCss.jsp"%>
<style>
.body-bg {
	background: url("img/sec-bg-img.jpg");
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid body-bg p-3">
		<div class="container" style="height: 65vh; padding: 3rem;">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-body">
							<h4 class="text-center">Login Page</h4>
							<c:if test="${not empty failedMsg }">
								<p class="text-center text-danger">${failedMsg }</p>
								<c:remove var="failedMsg" scope="session" />
							</c:if>
							<c:if test="${not empty succMsg }">
								<p class="text-center text-success">${succMsg }</p>
								<c:remove var="succMsg" scope="session" />
							</c:if>
							<form action="login" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email"
										required="required" name="email">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password"
										required="required" name="password">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
									<a href="register.jsp">Create Account if not yet</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>