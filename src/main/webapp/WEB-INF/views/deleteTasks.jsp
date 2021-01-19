<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.Dao.*, java.util.*, com.Entity.Task"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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
	<br><br>
	<form:form action="delete/taskdeleted" method="post">
		Task ID to delete	<input type="number" name="id"><br>
		<button type="submit">Delete Task</button>
	</form:form>

</body>
</html>