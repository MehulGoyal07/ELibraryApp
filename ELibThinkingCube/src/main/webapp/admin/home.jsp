<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCss.jsp"%>
</head>
<body
	style="background: rgb(2, 0, 36); background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%, rgba(122, 205, 196, 1) 0%, rgba(71, 121, 131, 1) 98%);">
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-5 mt-5 min-vh-100">
		<div class="row">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x" style="color: #4a148c;"></i><br>
							<h3>Add Books</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book fa-3x" style="color: #f50057;"></i><br>
							<h3>All Books</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x" style="color: #ffeb3b;"></i><br>
							<h3>Orders</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3">
				<a href="../login.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x" style="color: #424242;"></i><br>
							<h3>Logout</h3>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>