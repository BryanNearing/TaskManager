<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update A Task</title>
</head>
<body>

	<form:form action="update/taskupdated" method="post">
		<table>


			<tbody>
				<tr>
					<td>Id:</td>
					<td><input type="number" name="Id"></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="name"></td>
				</tr>
				
				<tr>
					<td>Start Date:</td>
					<td><input type="date" name="startDate"></td>
				</tr>
				<tr>
					<td>End Date:</td>
					<td><input type="date" name="endDate"></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><input type="text" name="description"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>Severity:</td>
					<td><input type="text" name="severity"></td>
				</tr>
			</tbody>
		</table>
		<input type="submit" value="Submit">
	</form:form>

</body>
</html>