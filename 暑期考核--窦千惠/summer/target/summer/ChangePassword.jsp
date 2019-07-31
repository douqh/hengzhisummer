<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/24
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
<%String studentID=request.getParameter("StudentID");%>
<%request.getSession().setAttribute("StudentID",studentID);%>
<form action="ChangePasswordServlet?studentID=${StudentID}" method="post">
    <table border="1">
        <tr>
            <td colspan="2"><h1>修改密码</h1></td>
        </tr>

        <tr>
            <td>输入新密码:</td>
            <td><input  type="password" name="password"/></td>
        </tr>
        <tr>
            <td>再次输入密码:</td>
            <td><input  type="password" name="RePassword"/></td>
        </tr>

        <tr>
            <td colspan="2"><input  type="submit" value="提交"/></td>
        </tr>
    </table>
    ${Tip}
</form>
</body>
</html>
