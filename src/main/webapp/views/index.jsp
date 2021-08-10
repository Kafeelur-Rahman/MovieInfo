<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

		<meta name = "viewport"content="width=device-width , initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style>
.container{
	padding-top:80px;
}
.input{
	text-decoration:none;
	color:black;
}
body{

	background:rgba(30,90,50, 0.8);
}
</style>
<title>Movie Information</title>
</head>
<body>
	<div class="container-fluid bg-danger">
		<h2 class="display-2 text-center"><img src="https://img.icons8.com/wired/64/000000/movie-projector.png"/> Movie Informer</h2>
		<p class="text-center"><sub>Developed by Kafeelur Rahman T K</sub></p>
	</div>
	
	<div class="container ">
		
			<div class="container text-center bg-primary">
				<form action="info" method="post">
					<center><img src="https://img.icons8.com/wired/64/000000/movie-projector.png"/></center><br>
					<input type="text" name="movieName" placeholder="Movie name" style="color:black;" required/><br><br>
					<input type="number" name="releaseYear" placeholder="Released Year" style="color:black;" required/><br><br>
					<input type="submit" class="btn btn-success text-center" />
				</form>
			</div>
		
	</div>
</body>
</html>