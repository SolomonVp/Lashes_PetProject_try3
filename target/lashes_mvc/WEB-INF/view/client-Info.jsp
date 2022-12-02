<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Client Info</h2> <br>

<form:form action="saveClient" modelAttribute="client">
    Имя                        <form:input path="name"/>         <br><br>
    Фамилия                    <form:input path="surname"/>      <br><br>
    Размер ресниц              <form:input path="sizeLash"/>     <br><br>
    Колоичество посещений      <form:input path="countVisits"/>  <br><br>
    Скидка                     <form:input path="discount"/>     <br><br>
    <input type="submit" value="Добавить">
</form:form>

</body>
</html>