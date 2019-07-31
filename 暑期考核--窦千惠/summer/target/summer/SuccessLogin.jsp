<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/21
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>登陆成功</title>
</head>
<body>
欢迎你！${username}
<a href="PersonMesShow.jsp">个人信息</a>
       <a href="ChangePassword.jsp">修改密码</a>
<a href="ManageNews.jsp">管理新闻</a>
<a href="MangeNotice.jsp">管理通知</a>



<center>
<table border="1">
    <tr align="right">
        <td colspan="6"><a href="AddUser.jsp" >添加</a></td>
    </tr>
    <th>studentID</th>
    <th>用户名</th>
    <th>密码</th>
    <th>年龄</th>
    <th>邮箱</th>
    <th>操作</th>

    <c:forEach items="${APage }" var="list">
        <tr  align="center">
            <td>${list.studentID }</td>
            <td>${list.username }</td>
            <td>${list.password }</td>
            <td>${list.age}</td>
            <td>${list.email}</td>
            <td colspan="2">
                <a href="DeleteUserServlet?studentID=${list.studentID}">删除</a>
                <a href="UpdateUser.jsp?studentID=${list.studentID}">修改</a>
            </td>
        </tr>
    </c:forEach>
</table>
<table align="center">
    <tr>
        <%--页面处于非第一页时要显示首页、上一页--%>
        <td>
            <c:if test="${pagenow!=1}">
        <td><a href="ShowUserServlet?flag=1&pno=${pagenow}">首页</a></td>
        <td><a href="ShowUserServlet?flag=2&pno=${pagenow}">上一页</a></td>
        </c:if>
        </td>
        <%--跳转指定页面--%>
        <form action="ShowUserServlet?flag=5" method="post">
            <td>
                转到第
                <select name="pages">
                    <c:forEach begin="1" end="${totalpages}" var="i">
                        <option value="${i}"> ${i}</option>
                    </c:forEach>
                </select>
                页 <input type="submit" value="GO" >
            </td>
        </form>
        <%--若页面不是最后一页时要显示下一页、尾页--%>
        <td>
            <c:if test="${pagenow!=totalpages}">
        <td><a href="ShowUserServlet?flag=3&pno=${pagenow}">下一页</a></td>
        <td><a href="ShowUserServlet?flag=4&pno=${pagenow}">尾页</a></td>
        </c:if>
        </td>
    </tr>
</table>
    ${tip}
    </CENTER>

</body>
</html>

