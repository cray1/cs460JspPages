<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../head.jsp"%>
<title>Insert Interview</title>
</head>
<body>

	<%@ include file="../datasource.jsp"%>

	<sql:query dataSource="${dbsource}" var="Position">
	    select positionid, title, firstname, lastname from cray1.position
		inner join cray1.jobtitle on position.jobtitleid = jobtitle.jobtitleid
		inner join cray1.staff on staff.emplid = position.emplid 
		where jobtitle.title like '%Instructor%'
	</sql:query>
	<sql:query dataSource="${dbsource}" var="Client">
		SELECT * from cray1.Client
	</sql:query>

	<form action="/interview/insertdb.jsp" method="post">
		<table>
			<thead>
				<tr>
					<th colspan="2">Insert Interview</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><label>Position</label></td>
					<td><select name="positionid">
							<c:forEach var="_position" items="${Position.rows}">
								<option value="${position.positionid}">
									${_position.title}, ${_position.firstname}
									${_position.lastname}</option>
							</c:forEach>
					</select></td>
				</tr>

				<tr>
					<td><label>ClientId</label></td>
					<td><select name="clientid">
							<c:forEach var="client" items="${Client.rows}">
								<option value="${client.clientid}">
									${client.lastname},&nbsp;${client.firstname}</option>
							</c:forEach>
					</select></td>
				</tr>

				<tr>
					<td><label>Interview Notes</label></td>
					<td><textarea rows="5" cols="50" name="interviewnotes" /></textarea></td>
				</tr>

				<tr>
					<td><label>Interview Date</label></td>
					<td><input type="datetime" name="interviewdate"
						placeholder="MM/dd/yyyy HH:mm:ss AM" /></td>
				</tr>

				<tr>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</tbody>
		</table>
	</form>


</body>
</html>