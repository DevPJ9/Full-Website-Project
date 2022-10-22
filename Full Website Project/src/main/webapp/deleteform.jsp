<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Delete Data</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
    </head>
    <body style="background-color: yellow;">
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
        <div class="container mt-5 align-items-center">
            <form action="delete" method="post">
                <div class="form-group container m-4">
                    <div style="text-align:center;">
                        <h3> <label for="exampleFormControlInput1">Enter Customer's Phone Number</label></h3>
                    </div>
                     <input type="tel" class="form-control form-control-lg" maxlength="10" pattern="[6789][0-9]{9}" id="phone"
                        placeholder="Enter phone number which data you want to delete" name="phone" required><br>
                    <div style="text-align:center;">
                        <button type="submit" class="btn btn-primary">Delete Data</button>

                    </div>
                </div>
            </form>
        </div>
    </body>

    </html>