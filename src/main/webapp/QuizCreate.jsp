<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Informations</title>
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
	
	<div class="container-md w-55 me-5">
		<h3 class="text-center text-black " style="margin-right:80px;">CREATE QUIZ</h3><br>
		<form action="CreatedQuizInfoInSession" method="get" class="form-horizontal" style="margin-left:100px;">
		
			<div class="d-flex flex-column row-gap-4 align-items-center ms-5 col-md-8 bg-dark border rounded-3 border-primary p-5" >
			
				<div class="form-group row col-md-12 ">
     			 <label class="control-label text-center col-md-6 me-0 text-white" for="quizname">Quiz Name</label>
   			     <input required class="form-control border border-info col-md-6" style="width:270px;height:30px" type="text" name="quizName" id="quizname"/>
  			  </div>
  			   <div class="form-group row col-md-12">
     			 <label class="control-label text-center col-md-6 me-0 text-white" for="quiznumber">Quiz Number</label>
   			     <input required class="form-control col-md-6 border-info" style="width:270px;height:30px" type="number" name="quizNumber" id="quiznumber"/>
  			  </div>
  			   <div class="form-group row col-md-12">
     			 <label class="control-label text-center col-md-6 me-0 text-white" for="quizcategory">Quiz Category</label>
   			     <input required class="form-control col-md-6 border-info" style="width:270px;height:30px" type="text" name="quizCategory" id="quizcategory"/>
  			  </div>
  			  <div class="form-group row col-md-12">
     			 <label class="control-label text-center col-md-6 me-0 text-white" for="numberofquestions">No.of Questions</label>
   			     <input required class=" form-control col-md-6 border-info" style="width:270px;height:30px" type="number" name="numberOfQuestions" id="numberofquestions"/>
  			  </div>
  			  <div class="form-group row col-md-12">
     			 <label class="control-label text-center col-md-6 me-0 text-white" for="quiztesttimelimit">Time Limit</label>
   			     <input required class=" form-control col-md-6 border-info" style="width:270px;height:30px" type="time" name="quizTestTimeLimit" id="quiztesttimelimit"/>
  			  </div>			
			</div><br/>
			
			<div class="text-center ">
				<button type="submit" class="btn btn-warning col-md-2 hover-overlay" style="margin-right:180px;">ADD QUESTIONS</button>
			</div>
			</form>	

			
		
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