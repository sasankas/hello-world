<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="simpletags"%>
<html>
<head>
<simpletags:jquery />
<simpletags:style />
</head>
<body>
<simpletags:menu />
<h4>New Person</h4>
<c:if test="${errors.errorCount gt 0}">
	Errors!<br/>
	<c:forEach var="error" items="${errors.allErrors}">
		<span class="error">${error.objectName} ${error.code}</span>
		<br />
	</c:forEach>
</c:if>
<form method="post" action="addPerson.htm"><label for="name">Name:</label><input
	type="text" name="name" /><br />
<label for="name">Age:</label><input type="text" name="age" /><br />
<input type="submit" /><input type="reset" /></form>
<simpletags:footer/>
</body>
</html>
