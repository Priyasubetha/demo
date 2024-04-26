<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Quiz</title>
<link rel="icon" type="image/x-icon" href="image/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="stylesheet.css">
<script src="script.js"></script>
</head>

<body class="bg-secondary">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous" type="text/javascript"></script>

	<header class="p-3 pb-0 bg-dark text-light">
		<div class="row">
		
			<div class="col pt-3 ms-4">
				<a href="#"><img alt="Home" src="home.png" width="30px" height="30px" ></a>
			</div>    
			
			<p class="col"></p>
			
			<div class="col d-flex text-center me-5">
				<h1>Quiz</h1>
			</div>
			
			<div class="col d-flex justify-content-end align-items-center pt-2 me-4">
			 	<ul>
					<li class="list-inline-item" id="current-time">12:24 AM</li><br>
					<li class="list-inline-item" id="current-date">14/04/2024</li>
				</ul>
			</div>
			
		</div>
	</header>
	
	<div class="row ms-3 me-3">
		<img alt="outliers" src="outliers.png" class="col" style="width:200px; height: 80px;">
		<p class="col"> </p> <p class="col"> </p>
		<img alt="pointels"	 src="Pointel.png" style="width: 100px; height: 80px;" class="col">
	</div>
	
	<div class="container">
	<form action="QuizInfo.jsp">
		<div class="row"> 
			<h3 class=" text-black col-md-9 text-center ms-5 ps-5">LIST OF QUIZ</h3>
			
			<button type="submit" class="btn btn-warning col-md-2 ms-2">ADD NEW</button>
			
		</div>
		</form>
		<br>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>QUIZ NUMBER</th>
					<th>QUIZ NAME</th>
					<th>QUIZ CATEGORY</th>
					<th>NO.OF QUESTIONS</th>
					<th>TIME LIMIT</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
		</table>
	</div>
	
		<footer class="p-3 bg-dark text-light mb-0" style="position:fixed;bottom:0;width:100%;">
		<div class="row">
			<div class="col-md-4">© Pointel Solutions - 2024. All rights reserved.</div>
			<div class="col">
				<div class="row d-flex justify-content-end">
					<div class="col-md-5">
						<a href="#" class="text-decoration-none text-light"><img alt="phone" src="phone.png" width="20px" height="20px">+91-44-42300321</a>
					</div>
					<div class="col-md-5">
						<a href="#" class="text-decoration-none text-light"><img alt="email" src="email.png" width="20px" height="20px">contactus@pointelsolutions.com</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	
</body>
</html>