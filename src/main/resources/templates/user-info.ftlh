<!DOCTYPE html>
<html>
<head>
    <title>My store</title>
</head>
<body>
    <h1>My store</h1>
    <hr>
    <h2>Подробная информация о пользователе ${user.name}</h2>
    <hr>
    <b>Номер телефона: </b> ${user.phoneNumber}<br>
    <b>Email: </b> ${user.email}<br>
    <hr>
    <h2>Товары пользователя ${user.name}</h2>
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее</a></p>
        </div>
        <#else>
        <h3>Товаров нет</h3>
    </#list>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</body>
</html>