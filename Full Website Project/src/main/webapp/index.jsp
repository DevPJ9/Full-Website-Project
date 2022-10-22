<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

/* banner */
#banner-container {
	background-color: #0a193d;
	color: white !important;
	padding-top: 80px;
	padding-bottom: 80px;
	padding-left: 450px;
}

#banner-row img {
	max-width: 70%;
	height: auto;
	display: block;
	padding-left: 30px;
}

#banner-row h3, p {
	padding-left: 20px;
	padding-top: 20px;
	text-align: center;
}

#banner-row a {
	background-color: white !important;
	color: black !important;
	border: none;
	margin-left: 20px;
	margin-top: 20px;
}

#banner-col {
	padding-left: 20px;
}	
</style>

    <title>Save Form </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
    <style>
        .control-label {
            padding-top: 6px;
        }

        .pull-left {
            margin-left: -25px;
        }

        .center {
            text-align: center;
        }

    </style>
</head>

<body class="container-fluid" style="background-color: gray;">
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
    <div class="container mt-3">
        <form action="/save" method="post">
            <div >
                <label for="name" style=" background: LightBlue;">Full Name:</label>
                <div class="col-sm-9">
                    <input type="text" style="width: 200px"  id="name"
                        placeholder="Enter Your Name" name="name" required>
                </div>
            </div>
            <br>
            <div >
                <label for="custype" style=" background: LightBlue;">Customer
                    Type:</label>
                <div class="col-sm-2">
                    <select class="form-select" class="form-control pull-left" name="type" required>
                        <option disabled>-Customer Type-</option>
                        <option value="None" selected>None</option>
                        <option value="Single">Single</option>
                        <option value="Married">Married</option>
                    </select>
                </div>
                
                <br>
                
                <div class="col-sm-2 ">
                    <label for="phone" style=" background: LightBlue;">Phone Number:</label>
                </div>
                <div class="col-sm-4 ">
                    <input type="tel" class="form-control" maxlength="10" id="phone"
                        placeholder="Phone Number" name="phone" required>
                </div>
            </div>
            
            <br>
            
            <div >
            
                <label for="country"
                    style=" background: LightBlue;">Country:</label>
                <div class="col-sm-2">
                    <select id="dropdownCountry"  name="country" required>
                        <option selected>-Select Country-</option>
                        <c:forEach var="country" items="${countries }">
                            <option value="${country.id}">${country.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <label for="custype" style=" background: LightBlue;">State:</label>
                <div class="col-sm-2">
                    <select id="dropdownState" name="state" required>
                    </select>
                </div>
                <label for="custype" style=" background: LightBlue;">City:</label>
                <div class="col-sm-2">
                    <select id="dropdownCity"  name="city" required> </select>
                </div>
               
            </div>
            <div >
                <label for="street"  style=" background: LightBlue;">Street/Landmark:</label>
                <div class="col-sm-9">
                    <input type="text"  maxlength="100" id="street"
                        placeholder="Enter Street" name="street" required>
                </div>
            </div>
            <div >
                <label for="pincode" style=" background: LightBlue;">PinCode:</label>
                <div class="col-sm-9">
                    <input type="text" maxlength="6"  id="pincode" pattern="[0-9]{6}"
                        placeholder="Enter Pincode" name="pincode" required>
                </div>
            </div>
            <div >
                <label for="created" style=" background: LightBlue;">Created By:</label>
                <div class="col-sm-9">
                    <input type="text"  id="created"
                        pattern="^[a-zA-Z\s]+$" placeholder="Created By" name="created_by" required>
                </div>
            </div>
            <div class="center">
                <button type="submit" class="btn btn-primary ">Save Data</button><br><br>

            </div>
        </form>
    </div>
<script type="text/javascript">
	$(document).ready(function() {
						$("#dropdownState").val($("#dropdownState option:first").val());
						$('#dropdownCountry').on('change',
										function() {
											var countryId = $(this).val();
											$.ajax({
														type : 'GET',
														url : '${pageContext.request.contextPath }/loadStatesByCountry/'
																+ countryId,
														success : function(
																result) {
															var result = JSON
																	.parse(result);
															var state = '';
															state += '<option disabled selected="selected">--Select State--</option>';
															for (var i = 0; i < result.length; i++) {
																state += '<option value="' + result[i].id + '">'
																		+ result[i].name
																		+ '</option>';
															}
															$('#dropdownState')
																	.html(state);
															$("#dropdownState")
																	.val(
																			$(
																					"#dropdownState option:first")
																					.val());
															$("#dropdownCity")
																	.val(
																			$(
																					"#dropdownCity option:first")
																					.val());
														}
													});
										});

						$('#dropdownState')
								.on(
										'change',
										function() {
											var stateId = $(this).val();
											$
													.ajax({
														type : 'GET',
														url : '${pageContext.request.contextPath }/loadCitiesByState/'
																+ stateId,
														success : function(
																result) {
															var result = JSON
																	.parse(result);
															var city = '';
															city += '<option disabled selected="selected">--Select City--</option>';
															for (var i = 0; i < result.length; i++) {
																city += '<option value="' + result[i].id + '">'
																		+ result[i].name
																		+ '</option>';
															}
															$('#dropdownCity')
																	.html(city);
														}
													});
										});
					});
</script>
</body>

</html>