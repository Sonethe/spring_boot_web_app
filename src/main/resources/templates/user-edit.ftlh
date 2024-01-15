<!DOCTYPE html>
<html>
<head>
    <title>My store</title>
</head>
<body>
    <h1>My store</h1>
    <hr>
    <h2>Редактирование пользователя ${user.name}</h2>
    <form action="/admin/user/edit" method="post">
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}/>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId"/>
        <input type="hidden" value="${_csrf.token}" name="_csrf"/>
        <button type="submit">Сохранить</button>
    </form>
</body>
</html>