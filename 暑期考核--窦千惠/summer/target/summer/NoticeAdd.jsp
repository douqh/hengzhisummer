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
    <title>添加通知</title>
</head>
<body>
<form action="NoticeAddServlet" method="post">
    <table border="1">
        <tr>
            <td colspan="2"><h1>添加</h1></td>
        </tr>
        <tr>
            <td>通知标题:</td>
            <td><input  type="text" name="noticeTitle"/></td>
        </tr>
        <tr>
            <td>作者:</td>
            <td><input  type="text" name="noticeAuthor"/></td>
        </tr>
        <tr>
            <td>内容:</td>
            <td><input  type="text" name="noticeContent"/></td>
        </tr>
        <tr>
            <td>编写时间:</td>
            <td><input  type="text" name="noticeWriteTime"/></td>
        </tr>
        <tr>
            <td>修改时间:</td>
            <td><input  type="text" name="noticeAlterTime"/></td>
        </tr>
        <tr>
            <td>分类:</td>
            <td><input  type="text" name="noticeSortID"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="添加"/></td>
        </tr>
    </table>
</form>
${Tip}
</body>
</html>
