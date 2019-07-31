<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/25
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>修改新闻</title>
</head>
<body>

<%String newsID=request.getParameter("NewsID");%>
<%request.getSession().setAttribute("NewsID",newsID);%>
<form action="NewsUpdateServlet?newsID=${NewsID}" method="post">
    <table border="1">
        <tr>
            <td colspan="2"><h1>更新</h1></td>
        </tr>
        <tr>
            <td>新闻标题:</td>
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
        <td>分类:</td>
        <td><input  type="text" name="newsSortID"/></td>
        </tr>
        <tr>
            <td colspan="2"><input  type="submit" value="提交"/></td>
        </tr>
    </table>
    ${Tip}
</form>
</body>
</html>
