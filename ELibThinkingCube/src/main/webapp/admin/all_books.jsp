<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCss.jsp"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.*"%>
<style>
.tab {
	padding: 5rem;
}
</style>
</head>
<body
	style="background: rgb(2, 0, 36); background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%, rgba(122, 205, 196, 1) 0%, rgba(71, 121, 131, 1) 98%);">
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>
	<h2 class="text-center" style="margin-top: 10px; font-weight: bold;">All
		Books</h2>
	<c:if test="${not empty succMsg }">
		<p class="text-center text-success" style="color: white;">${succMsg}</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>
	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg}</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	<div class="tab">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Image</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Categories</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getAllBooks();
				for (BookDtls b : list) {
				%>
				<tr>
					<td><%=b.getBookId()%></td>
					<td><img src="../book/<%=b.getPhotoName()%>"
						style="width: 50px; height: 50px;"></td>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><%=b.getStatus()%></td>
					<td><a href="edit_books.jsp?id=<%=b.getBookId()%>"
						class="btn btn-sm btn-primary"><i
							class="fa-solid fa-pen-to-square"></i> Edit</a> <a
						href="../delete?id=<%=b.getBookId()%>"
						class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i>
							Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>