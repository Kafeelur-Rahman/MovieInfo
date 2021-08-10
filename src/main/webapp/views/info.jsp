<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8"/>
		<meta name = "viewport"content="width=device-width , initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style>
	.key{
		font-weight:bold;
	}
	body{
	background-color:black;
	}
	table{
		background:rgb(30,90,150);
		color:black;
	}
</style>
<title>${movieInfo.getMovieName()}</title>
</head>
<body>
	<div class="container-fluid">
		<table class="table table-dark table-bordered table-responsive text-center table-stripped">
			<tr>
				<td colspan="2"><center><img src="${movieInfo.getPosterUrl()}" /></center></td>
			</tr>
			<tr>
				<td class="key">Movie Name</td>
				<td>${movieInfo.getMovieName()}</td>
			</tr>
			
			<tr>
				<td class="key">Actors Name</td>
				<td>${movieInfo.getActorsName()}</td>
			</tr>
			
			<tr>
				<td class="key">Language</td>
				<td>${movieInfo.getLanguage()}</td>
			</tr>
			
			<tr>
				<td class="key">Country</td>
				<td>${movieInfo.getCountry()}</td>
			</tr>
			
			
			<tr>
				<td class="key">Released Date</td>
				<td>${movieInfo.getReleasedDate()}</td>
			</tr>
			<tr>
				<td class="key">Director Name</td>
				<td>${movieInfo.getDirectorName()}</td>
			</tr>
			<tr>
				<td class="key">Writers Name</td>
				<td>${movieInfo.getWritersName()}</td>
			</tr>
			
			<tr>
				<td class="key">Movie Awards</td>
				<td>${movieInfo.getMovieAwards()}</td>
			</tr>
			
		</table>
	</div>
</body>
</html>