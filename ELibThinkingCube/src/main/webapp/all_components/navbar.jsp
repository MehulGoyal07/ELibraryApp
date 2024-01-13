<link rel="stylesheet" href="all_components/style.css" />
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
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-custom text-white my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-magnifying-glass"></i> Search
				</button>
			</form>
		</div>
		<div class="col-md-3">
			<a href="login.jsp" class="btn btn-custom text-white"><i
				class="fa-solid fa-right-to-bracket"></i> Login</a> <a
				href="register.jsp" class="btn btn-custom text-white"><i
				class="fa-solid fa-id-card"></i> Register</a>
		</div>
	</div>
</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="active home"><a class="nav-link" href="index.jsp"><i
					class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_recent_book.jsp"><i
					class="fa-solid fa-book-open"></i> Recent Books</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_new_book.jsp"><i
					class="fa-solid fa-book-open"></i> New Books</a></li>
			<li class="nav-item active"><a class="nav-link disabled"
				href="all_old_book.jsp"><i class="fa-solid fa-book-open"></i> Old Books</a></li>
		</ul>
		
	</div>
</nav>