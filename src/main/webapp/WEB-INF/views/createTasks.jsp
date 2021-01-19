<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Create A Task</title>
</head>
<body>
	<h1>Create A Task</h1>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<form:form action="create/taskcreated" method="post" modelAttribute="t">
		<br>
		Task Name	<input type="text" name="name"><br>
		Task Start	<input type="date" name="startDate"><br>
		Task End	<input type="date" name="endDate"><br>
		Description	<input type="text" name="Description"><br>
		Email	<input type="email" name="email"><br>
		Severity	<input type="text" name="severity"><br>
		<button type="submit">Create Task</button>
	</form:form>

</body>
</html>