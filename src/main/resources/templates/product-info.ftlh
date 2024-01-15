<!DOCTYPE html>
<html>
<head>
    <title>My store</title>
</head>
<body>
    <h1>My store</h1>
    <hr>
    <h2>Подробная информация о товаре</h2>
    <#list images as img>
        <img src="/images/${img.id}" height="60px"/><br><br>
    </#list>
    <b>Название товара: </b>${product.title}<br>
    <b>Описание товара: </b>${product.description}<br>
    <b>Цена: </b>${product.price}<br>
    <b>Город: </b>${product.city}<br>
    <b>Автор: </b> <a href="/user/${product.user.id}">${product.user.name}</a>
</body>
</html>