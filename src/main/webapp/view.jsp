<%--
  Created by IntelliJ IDEA.
  User: kasawoa
  Date: 2021/11/10
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/product">Back to Product list</a>
</p>
<table>
    <tr>
        <td>Name</td>
        <td>${requestScope["Products"].getName()}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${requestScope["Products"].getDescription()}</td>
    </tr>
    <tr>
        <td>Producer</td>
        <td>${requestScope["Products"].getProducer()}</td>
    </tr>
    <tr>
        <td>Price</td>
        <td>${requestScope["Products"].getPrice()}</td>
    </tr>
</table>
</body>
</html>
