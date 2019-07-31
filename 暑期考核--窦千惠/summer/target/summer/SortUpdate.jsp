<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/26
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>分类修改</title>
</head>
<body>

<form action="SortUpdateServlet" method="post">
    <table border="1">
        <tr>
            <td colspan="2"><h1>更新</h1></td>
        </tr>
        <tr>
            <td>类别:</td>
            <td><input  type="text" name="sortName"/></td>
        </tr>

        <tr>
            <td colspan="2"><input  type="submit" value="提交"/></td>
        </tr>
    </table>
    ${Tip}
</form>
</body>
</html>
