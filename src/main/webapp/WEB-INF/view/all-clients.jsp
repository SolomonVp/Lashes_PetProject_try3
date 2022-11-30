<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<body>

<h2 align="center">Все клиенты:</h2> <br>

<table border="1"  bordercolor="black" bgcolor="#EE82EE" align="center" cellpadding="8">
    <tr>
        <th>Имя</th>
        <th>Фамилия</th>
        <th>Размер ресниц</th>
        <th>Посещений</th>
        <th>Скидка</th>
    </tr>
    <c:forEach var="clnt" items="${allCls}">
        <tr>
            <td>${clnt.name}</td>
            <td>${clnt.surname}</td>
            <td>${clnt.sizeLash}</td>
            <td>${clnt.countVisits}</td>
            <td>${clnt.discount}</td>
        </tr>
    </c:forEach>
</table>


</body>
</html>