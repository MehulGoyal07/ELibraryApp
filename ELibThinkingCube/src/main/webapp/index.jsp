<html>
<head>
<%@include file="all_components/allCss.jsp"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<title>ELibThinkingCube</title>
<style type="text/css">
.back-img {
	background: url("img/bimg.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

p {
	font-weight: bold;
}

.sec-bg-img {
	background: url("img/sec-bg-img.jpg");
}

.img-text {
	font-weight: bold;
	text-align: center;
	justify-content: center;
	padding: 6rem;
}

.btn {
	border-radius: 20px;
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
</style>
</head>
<body
	style="background-color: #f7f7f7; font-family: Arial, Helvetica, sans-serif;">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="img-text text-white">
			<h2>"It is better to live your own destiny imperfectly than to
				live an imitation of somebody else's life with perfection."</h2>
		</div>
	</div>
	<!-- Start of Recent books  -->
	<h3 class="text-center">Recent Books</h3>
	<div class="container-fluid sec-bg-img">
		<div class="container p-4">
			<div class="row">

				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getRecentBook();
				for (BookDtls b : list) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px" class="img-thumblin" />
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>

							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							<p>
								Category:<%=b.getBookCategory()%></p>
							<div class="row text-center ml-4">
								<a href="" class="btn btn-primary btn-sm ml-1">View Details</a>
								<a href="" class="btn btn-primary btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							</div>
							<%
							} else {
							%>
							<p>
								Category:<%=b.getBookCategory()%></p>
							<div class="row text-center">
								<a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a> <a
									href="" class="btn btn-primary btn-sm ml-1">View Details</a> <a
									href="" class="btn btn-primary btn-sm ml-1"><i
									class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
			<div class="text-center mt-1">
				<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
			</div>
		</div>
	</div>

	<!-- End of Recent books -->
	<!-- Start of New books -->
	<h3 class="text-center" style="background-color: whitesmoke">New
		Books</h3>
	<div class="container-fluid sec-bg-img">
		<div class="container p-4">
			<div class="row">
				<%
				BookDAOImpl dao1 = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list1 = dao1.getNewBook();
				for (BookDtls b : list1) {
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
			<div class="text-center mt-1">
				<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
			</div>
		</div>
	</div>
	<!-- End of New books -->
	<!-- Start of Old books -->
	<h3 class="text-center">Old Books</h3>
	<div class="container-fluid sec-bg-img">
		<div class="container p-4">
			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getOldBook();
			for (BookDtls b : list3) {
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
						<div class="row text-center ml-3">
							<a href="" class="btn btn-primary btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-primary btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
			<div class="text-center mt-1">
				<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
			</div>
		</div>
	</div>
	<!-- End of Old books -->
	<%@include file="all_components/footer.jsp"%>
</body>
</html>










