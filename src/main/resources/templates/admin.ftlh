<!DOCTYPE html>
<html>
<head>
    <title>My store</title>
</head>
<body>
    <h1>My store</h1>
    <hr>
    <h2>Панель администратора</h2>
    <table border="1px solid black" border-collapse="collapse">
        <tr>
            <th>Email</th>
            <th>Номер телефона</th>
            <th>Активность</th>
            <th>Роли</th>
            <th>Lock</th>
            <th>Редактирование</th>
            <th>Подробная информация</th>
        </tr>
        <#list users as user>
            <tr>
                <th>${user.email}</th>
                <th>${user.phoneNumber}</th>
                <th><#if user.active>true<#else>false</#if></th>
                <th><#list user.roles as role>${role}</#list></th>
                <th>
                    <form action="/admin/user/lock/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <input type="submit" value="Lock"/>
                    </form>
                </th>
                <th><a href="/admin/user/edit/${user.id}">Редактирование</a></th>
                <th><a href="/user/${user.id}">Подробная информация</a></th>
            </tr>
            <#else>
                <h3>Пользователей нет</h3>
        </#list>
    </table>
</body>
</html>