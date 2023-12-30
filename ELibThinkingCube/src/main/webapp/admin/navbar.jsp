<link rel="stylesheet" href="all_components/style.css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<style>
.bg {
	background: rgb(2, 0, 36);
	background: linear-gradient(119deg, rgba(2, 0, 36, 1) 0%,
		rgba(122, 205, 196, 1) 0%, rgba(71, 121, 131, 1) 98%);
}
</style>
<div class="container-fluid"
	style="height: 10px; background-color: #303f9f"></div>

<div class="container-fluid p-3 bg">
	<div class="row">
		<div class="col-md-3 ebooks">
			<h3 style="font-weight: bold">
				<i class="fa-solid fa-book"></i> Thinking Cube
			</h3>
		</div>
		<div
			class="col-md-3">
			<c:if test="${not empty userobj }">
				<a class="btn btn-custom text-white"><i class="fa-solid fa-user"></i>
					${userobj.name}</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-custom text-white"><i
					class="fa-solid fa-right-from-bracket text-white"></i> Logout</a>
			</c:if>
			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-custom text-white"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a>
				<a href="../register.jsp" class="btn btn-custom text-white"><i
					class="fa-solid fa-id-card"></i> Register</a>
			</c:if>
		</div>
	</div>
</div>

<!-- Logout Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" style="font-weight: bold;"
					id="exampleModalLongTitle">Warning!</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="text-center">
					<h4>Do you want to logout</h4>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="../logout" type="button" class="btn btn-primary">Logout</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>
<!-- End Logout Modal -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="active home"><a class="nav-link" href="home.jsp"><i
					class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span>
			</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<button class="btn btn-custom text-white my-2 my-sm-0" type="submit">
				<i class="fa-solid fa-gear"></i> Settings
			</button>
			<button class="btn btn-custom text-white my-2 my-sm-0 mL-1"
				type="submit">
				<i class="fa-solid fa-phone"></i> Contact Us
			</button>
		</form>
	</div>
</nav>