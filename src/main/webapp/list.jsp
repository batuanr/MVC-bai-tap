<%--
  Created by IntelliJ IDEA.
  User: kasawoa
  Date: 2021/11/10
  Time: 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/product?action=create">New Product</a>
</p>
<form action="/product?action=search" method="post">
    <input type="text" name="name">
    <input type="submit" value="search">
</form>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<table>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Producer</th>
        <th>Price</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["Products"]}' var="product">
        <tr>
            <td><a href="/product?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getDescription()}</td>
            <td>${product.getProducer()}</td>
            <td>${product.getPrice()}</td>
            <td><a href="/product?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
