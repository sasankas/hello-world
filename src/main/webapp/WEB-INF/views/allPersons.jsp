<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="simpletags"%>
<html>
<head>
<simpletags:jquery />
<simpletags:style />
</head>
<body>
<simpletags:menu/>
<h3>Persons</h3>
<c:choose>
	<c:when test="${fn:length(persons) gt 0}">
		<table border=1>
			<tr>
				<th>Name</th>
				<th>Age</th>
				<th>Senior Citizen</th>
			</tr>
			<c:forEach var="person" items="${persons}">
				<tr class="${person.age gt 70 ? 'senior' : 'junior'}">
					<td><c:out value="${person.name}"/></td>
					<td>${person.age}</td>
					<td>${person.age gt 70}</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise>No persons</c:otherwise>
</c:choose>
<simpletags:footer/>

</body>
</html>
