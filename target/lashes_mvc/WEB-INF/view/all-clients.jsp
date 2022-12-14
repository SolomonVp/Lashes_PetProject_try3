<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<body>

<h2>Все клиенты:</h2> <br>

<table border="1"  bordercolor="#491e71" bgcolor="#EE82EE" cellpadding="8">

    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Размер ресниц</th>
        <th>Посещений</th>
        <th>Скидка</th>
        <th>Операции</th>
    </tr>

    <c:forEach var="clnt" items="${allCls}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="clntId" value="${clnt.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteClient">
            <c:param name="clntId" value="${clnt.id}"/>
        </c:url>
        <tr>
            <td>${clnt.name}</td>
            <td>${clnt.surname}</td>
            <td>${clnt.sizeLash}</td>
            <td>${clnt.countVisits}</td>
            <td>${clnt.discount}</td>
            <td>
                <input type="button" value="Изменить" onclick="window.location.href = '${updateButton}'"/>
                <input type="button" value="Удалить" onclick="window.location.href = '${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table> <br>
<input type="button" value="Добавить" onclick="window.location.href = 'addNewClient'">




</body>
</html>