<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../head.jsp"%>
<title>Select all offices</title>
</head>
<body>

	<h4>
		<a href="../index.jsp">Home</a>
	</h4>
	<%@ include file="../datasource.jsp"%>

	<sql:query dataSource="${dbsource}" var="result">
SELECT * from cray1.Office
</sql:query>
	<h1>Offices</h1>
	<a href="/office/insertOffice.jsp">Insert Office</a>


	<table border="1" width="100%">
		<tr>
			<th>update</th>
			<th>delete</th>
			<th>Office Id</th>
			<th>Office Name</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Zip Code</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><a
					href="/office/updateOffice.jsp?officeId=${row.officeId}
					&officeName=${row.officename}
					&address=${row.address}
					&city=${row.city}
					&state=${row.state}
					&zipCode=${row.zipcode}">
						update</a></td>
				<td><a
					href="/office/deleteOffice.jsp?officeId=<c:out value="${row.officeId}" />">
						delete</a></td>
				<td><c:out value="${row.officeId}" /></td>
				<td><c:out value="${row.officename}" /></td>
				<td><c:out value="${row.address}" /></td>
				<td><c:out value="${row.city}" /></td>
				<td><c:out value="${row.state}" /></td>
				<td><c:out value="${row.zipcode}" /></td>
			</tr>
		</c:forEach>
	</table>




</body>
</html>