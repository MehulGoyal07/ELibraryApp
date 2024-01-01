<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Books</title>
<%@include file="all_components/allCss.jsp"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<style>
.sec-bg-img {
	background: url("img/sec-bg-img.jpg");
}

.crd-ho:hover {
	background: rgb(2, 0, 36);
	background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%,
		rgba(202, 226, 223, 1) 0%, rgba(71, 121, 131, 1) 34%);
}

.crd-ho {
	background: rgb(2, 0, 36);
	background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%,
		rgba(122, 205, 196, 1) 0%, rgba(71, 121, 131, 1) 98%);
}

.color {
	background-color: #f5f5f5;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<h3 class="text-center color">New Books</h3>
	<div class="container-fluid sec-bg-img">
		<div class="container p-4">
			<div class="row">
				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getAllNewBook();
				for (BookDtls b : list) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px" class="img-thumblin" />
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Category:
								<%=b.getBookCategory()%></p>
							<div class="row text-center">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-primary btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-primary btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>