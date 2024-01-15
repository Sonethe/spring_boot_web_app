<!DOCTYPE html>
<html>
<head>
    <title>My store</title>
</head>
<body>
    <h1>My store</h1>
    <hr>
    <h2>Авторизация</h2>
    <form action="/login" method="post">
        Эл. почта: <input type="email" name="username"/><br><br>
        Пароль: <input type="password" name="password"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Вход"/>
    </form>
    <a href="/registration">Зарегистрироваться</a>
</body>
</html>