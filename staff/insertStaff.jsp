<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
    <head>
       	<%@ include file="../head.jsp" %>
	 <title>Insert Staff</title>
    </head>
    <body>
        <form action="/staff/insertStaffdb.jsp" method="post">
            <table>
                <thead>
                    <tr>
                        <th colspan="2">Add Staff</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>EmplId</label></td>
                        <td><input type="number" name="emplId" min="1" max="9999"/></td>
                    </tr>
                    <tr>
                        <td><label>First Name</label></td>
                        <td><input type="text" name="firstName"/></td>
                    </tr>
                    <tr>
                        <td><label>Last Name</label></td>
                        <td><input type="text" name="lastName"/></td>
                    </tr>
                    <tr>
                        <td><label>Phone Number</label></td>
                        <td><input type="text" name="phoneNumber"/></td>
                    </tr>
                    <tr>
                        <td><label>Birth Date</label></td>
                        <td><input type="datetime" name="birthDate" placeholder="MM/dd/yyyy HH:mm:ss AM" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Save" /></td> 
                    </tr>
                </tbody>
            </table>
        </form>
         
         
    </body>
</html>