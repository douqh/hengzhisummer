<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/25
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通知管理</title>
</head>
<body>
<center>
    <table border="1">
        <tr align="right">
            <td colspan="6"><a href="NoticeAdd.jsp" >添加</a></td>
        </tr>
        <th>noticeID</th>
        <th>noticeTitle</th>
        <th>noticeAuthor</th>
        <th>noticeContent</th>
        <th>noticeWriteTime</th>
        <th>noticeAlterTime</th>
        <th>noticeSortID</th>
        <th>操作</th>

        <c:forEach items="${APage }" var="list">
            <tr  align="center">
                <td>${list.noticeID }</td>
                <td>${list.noticeTitle }</td>
                <td>${list.noticeAuthor}</td>
                <td>${list.noticeContent}</td>
                <td>${list.noticeWriteTime}</td>
                <td>${list.noticeWriteTime}</td>
                <td>${list.noticeSortID}</td>
                <td colspan="2">
                    <a href="NoticeDeleteServlet?noticeID=${list.noticeID}">删除</a>
                    <a href="NoticeUpdate.jsp?noticeID=${list.noticeID}">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <table align="center">
        <tr>
            <%--页面处于非第一页时要显示首页、上一页--%>
            <td>
                <c:if test="${pagenow!=1}">
            <td><a href="NoticeShowServlet?flag=1&pno=${pagenow}&a=2">首页</a></td>
            <td><a href="NoticeShowServlet?flag=2&pno=${pagenow}&a=2">上一页</a></td>
            </c:if>
            </td>
            <%--跳转指定页面--%>
            <form action="NoticeShowServlet?flag=5&a=2" method="post">
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
            <td><a href="NoticeShowServlet?flag=3&pno=${pagenow}&a=2">下一页</a></td>
            <td><a href="NoticeShowServlet?flag=4&pno=${pagenow}&a=2">尾页</a></td>
            </c:if>
            </td>
        </tr>
    </table>
    ${tip}
</CENTER>

</body>
</html>
