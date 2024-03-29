<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Edit Books</title>
<%@include file="allCss.jsp"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DAO.BookDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
</head>
<body
	style="background: rgb(2, 0, 36); background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%, rgba(122, 205, 196, 1) 0%, rgba(71, 121, 131, 1) 98%);">
	<%@include file="navbar.jsp"%>
	<div class="caontainer p-3 mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Books</h4>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						%>
						<form action="../editbooks" method="post">
						    <input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="bname"
									value="<%=b.getBookName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									name="author" aria-describedby="emailHelp"
									value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Price</label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									name="price" value="<%=b.getPrice()%>">
							</div>
							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="status" class="form-control">
									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">Active</option>
									<option value="Inactive">InActive</option>
									<%
									} else {
									%>
									<option value="Inactive">InActive</option>
									<option value="Active">Active</option>
									<%
									}
									%>
								</select>
							</div>
							<button type="submit" class="btn btn-primary offset-md-5">Edit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>