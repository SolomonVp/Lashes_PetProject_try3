<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<body>

<h3>Information for all people</h3>

<p>Общая информация</p>

<ul>
    <li><input type="button" value="Master" onclick="window.location.href = 'master_info'"> Для мастеров </li>
    <li> <input type="button" value="Manager" onclick="window.location.href = 'manager_info'"> Для менеджеров </li>
    <li><input type="button" value="Client" onclick="window.location.href = 'clnt_info'"> Для клиентов </li>
</ul>

</body>
</html>
