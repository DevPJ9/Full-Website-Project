<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<style>
table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	background-color: LightBlue;
}
}

</style>
</head>
<body style="background-color: gray;">
	 <section id="navbar">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav m-auto">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="main.jsp">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="/">save</a></li>
						<li class="nav-item"><a class="nav-link" href="/search">search
								Page</a></li>
						<li class="nav-item"><a class="nav-link" href="/update">update</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/delete">delete
								Us</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>
	<div class="container-fluid m-1">
		<h1 style="text-align:center;">CUSTOMER DETAILS</h1><br>
		<c:if test="${empty list }">
			<h1 style="text-align:center;">----No Records Found----</h1><br>
			<br>
			<br>
		</c:if>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Type</th>
					<th scope="col">Phone</th>
					<th scope="col">Address</th>
					<th scope="col">PinCode</th>
					<th scope="col">Created By</th>
					<th scope="col">Created On</th>
					<th scope="col">Updated By</th>
					<th scope="col">Updated On</th>
				</tr>
			</thead>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.cid }</td>
					<td>${emp.name }</td>
					<td>${emp.type }</td>
					<td>${emp.phone }</td>
					<td>${emp.country }, ${emp.state }, ${emp.city }, ${emp.street } </td>
					<td>${emp.pincode }</td>
					<td>${emp.created_by }</td>
					<td>${emp.created_on }</td>
					<td>${emp.updated_by }</td>
					<td>${emp.updated_on }</td>
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>