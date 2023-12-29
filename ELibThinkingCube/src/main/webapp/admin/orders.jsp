<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Orders</title>
<%@include file="allCss.jsp"%>
<style>
.tab {
	padding: 5rem;
}
</style>
</head>
<body
	style="background: rgb(2, 0, 36); background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%, rgba(122, 205, 196, 1) 0%, rgba(71, 121, 131, 1) 98%);">
	<%@include file="navbar.jsp"%>
	<div class="tab">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Address</th>
					<th scope="col">Ph No</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td>Otto</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td>Otto</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
					<td>Otto</td>
					<td>@mdo</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>