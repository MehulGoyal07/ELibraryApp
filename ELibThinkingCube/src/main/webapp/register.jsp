<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thinking Cube: Register</title>
<%@include file="all_components/allCss.jsp"%>
<style>
.body-bg {
	background: url("img/sec-bg-img.jpg");
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid body-bg" style="height: 100vh; padding: 3rem;">
		<div class="container p-2">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-body">
							<h4 class="text-center">Registration Page</h4>
							<form>
								<div class="form-group">
									<label for="exampleInputEmail1">Enter Full Name</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter Full Name"
										required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter Email Address"
										required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Phone Number</label> <input
										type="number" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter Phone Number"
										required="required">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password"
										required="required">
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
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