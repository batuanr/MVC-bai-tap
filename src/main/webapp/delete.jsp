<%--
  Created by IntelliJ IDEA.
  User: kasawoa
  Date: 2021/11/10
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/product">Back to Product list</a>
</p>
<h3>Are you sure?</h3>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["Products"].getName()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${requestScope["Products"].getDescription()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${requestScope["Products"].getProducer()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["Products"].getPrice()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/product">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
