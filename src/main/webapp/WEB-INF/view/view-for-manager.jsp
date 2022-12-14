<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
    <title>Информация для менеджеров</title>
</head>
<body>

<h2>Все клиенты:</h2> <br>

<table border="1"  bordercolor="#491e71" bgcolor="#EE82EE" cellpadding="8">

    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Посещений</th>
        <th>Операции</th>
    </tr>

    <c:forEach var="clnt" items="${allClsMan}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="clntId" value="${clnt.id}"/>
        </c:url>
        <tr>
            <td>${clnt.name}</td>
            <td>${clnt.surname}</td>
            <td>${clnt.countVisits}</td>
            <td>
                <input type="button" value="Изменить" onclick="window.location.href = '${updateButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table> <br>
<input type="button" value="Добавить" onclick="window.location.href = 'addNewClient'">




</body>
</html>