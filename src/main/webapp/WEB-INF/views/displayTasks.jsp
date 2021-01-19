<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ page import="com.Dao.*, java.util.*, com.Entity.Task"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>All of your Tasks</h1>

<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>



	<table border="1" width="90%">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Description</th>
			<th>Email</th>
			<th>Severity</th>
		</tr>
		<%
		TaskDaoImpl dao = new TaskDaoImpl();
		List<Task> list = dao.getAllTasks();

		
		if (list.size() > 0) {
			for (Task t : list) {
		%>
		<tr>
			<td><%out.println(t.getId()); %></td>
			<td><%out.println(t.getName()); %></td>
			<td><%out.println(t.getStartDate()); %></td>
			<td><%out.println(t.getEndDate()); %></td>
			<td><%out.println(t.getDescription()); %></td>
			<td><%out.println(t.getEmail()); %></td>
			<td><%out.println(t.getSeverity()); %></td>
		</tr>
		<%
			} 
		}
		%>
		
	</table>
	<br>
	<form:form action="update" method="get"><button type="submit">Update Task</button></form:form>
	<br>
	<form:form action="delete" method="get"><button type="submit">Delete Task</button></form:form>
	<br>
	<form:form action="create" method="get"><button type="submit">Create Task</button></form:form>

</body>
</html>