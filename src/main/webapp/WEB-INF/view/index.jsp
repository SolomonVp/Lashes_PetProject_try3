<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<body>

<h3>Information for all people</h3>

<p>Общая информация</p>

<br><br>
<input type="button" value="Manager"
       onclick="window.location.href = 'hr_info'">
Для менеджеров
<br><br>
<input type="button" value="Master"
       onclick="window.location.href = 'manager_info'">
Для мастеров
<br><br>
<input type="button" value="Master"
       onclick="window.location.href = 'clnt_info'">
Для клиентов


</body>
</html>
