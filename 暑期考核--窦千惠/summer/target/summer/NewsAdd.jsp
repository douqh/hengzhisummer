<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/25
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>添加新闻</title>
</head>
<body>
<form action="NewsAddServlet" method="post">
    <table border="1">
        <tr>
            <td colspan="2"><h1>添加</h1></td>
        </tr>
        <tr>
            <td>通知标题:</td>
            <td><input  type="text" name="newsTitle"/></td>
        </tr>
        <tr>
            <td>作者:</td>
            <td><input  type="text" name="newsAuthor"/></td>
        </tr>
        <tr>
            <td>内容:</td>
            <td><input  type="text" name="newsContent"/></td>
        </tr>
        <tr>
            <td>编写时间:</td>
            <td><input  type="text" name="newsWriteTime"/></td>
        </tr>
        <tr>
            <td>修改时间:</td>
            <td><input  type="text" name="newsAlterTime"/></td>
        </tr>
        <tr>
            <td>分类:</td>
            <td><input  type="text" name="newsSortID"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="添加"/></td>
        </tr>
    </table>
</form>
${Tip}
</body>
</html>
