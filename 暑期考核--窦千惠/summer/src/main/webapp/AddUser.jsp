<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/24
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
<form action="AddUserServlet" method="post">
    <table border="1">
        <tr>
            <td colspan="2"><h1>添加</h1></td>
        </tr>
        <tr>
            <td>工号:</td>
            <td><input  type="text" name="studentID"/></td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input  type="text" name="age"/></td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input  type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input  type="password" name="password"/></td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td><input  type="text" name="email"/></td>
        </tr>
        <tr>
            <td colspan="2"><input  type="submit" value="提交"/></td>
        </tr>
    </table>
</form>
${Tip}
</body>
</html>
