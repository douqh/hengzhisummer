<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/26
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>添加分类</title>
</head>
<body>
<form action="SortAddServlet" method="post">
<table border="1">
    <tr>
        <td colspan="2"><h1>添加</h1></td>
    </tr>
    <tr>
        <td>分类类型:</td>
        <td><input  type="text" name="sortName"/></td>
    </tr>
    <tr>
        <td>添加时间:</td>
        <td><input  type="text" name="addTime"/></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="添加"/></td>
    </tr>
</table>
</form>
${Tip}
</body>
</html>
