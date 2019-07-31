<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/24
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="./lib/bootstrap3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/person.css" />
</head>

<body>
<div class="root">
    <div class="left">
        <img src="./img/school union.png" id="union" />
        <img src="./img/NENU-English.png" id="NENU" />
    </div>
    <div class="right">
        <div id="log">
            <img src="./img/登录.png" />
        </div>
        <div id="wel">
            <span><strong><em>${username}</em>欢迎您！</strong></span>
        </div>
        <div class="return">
            <button><a href="index.jsp">退出</a></button>
        </div>
    </div>
</div>
<div class="date">
    <div id="clock">
        <img src="./img/钟表-1.png" />
    </div>
    <div id="tab">
        <p id="aDate"></p>
        <p id="aTime"></p>
        <p id="week"></p>
    </div>
</div>
<div class="ability">
    <div id="left" class="left1">
        <ul class="nav nav-pills nav-stacked teach" id="lead">
            <li class="active" id="teach">
                <a href="#" style="font-size:20px;">后台管理<span class="glyphicon glyphicon-menu-down"></span></a>
            </li>
            <li>
                <a id="testgl" href="NewsShowServlet?flag=1&a=2">新闻管理</a>
            </li>
            <li>
                <a id="tkgl" href="./html/advicecontrol.html">公告管理</a>
            </li>
            <li>
                <a id="dhgl" href="SortShowServlet">首页导航栏分类</a>
            </li>
            <li>
                <a id="person" href="PersonMesShow.jsp">个人信息</a>
            </li>
            <li>
                <a id="all" href="ShowUserServlet?flag=1">管理员信息库</a>
            </li>
        </ul>
    </div>
    <div class="correct">
        <!--个人信息-->
        <div class="personcontrol" id="personcontrol">
            <div id="number">
                <div class="panel2 panel-default">
                    <div class="panel-heading">Logo上传</div>
                    <div class="panel-body">
                        <span>&nbsp;&nbsp;&nbsp;管理员头像：</span><img src="../img/canvas.png" alt="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>建议尺寸48*48,大小不超过20kb</span><br><br>
                        <input type="file" id="file">
                        <button class="btn btn-info">选择图片</button><br><br>
                        <span>&nbsp;&nbsp;&nbsp;应用名称：</span><input id="name1" type="button" value="东北师范大学学生会" class="names"><span id="change1">修改</span>
                    </div>
                </div>
                <div class="panel3 panel-default">
                    <div class="panel-heading">账号信息</div>
                    <div class="panel-body">
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;工号：</span><span id="studentID">${studentID}</span><br><br>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;昵称：</span><input id="name2" type="button" value="${username}" class="names"><span id="change2">修改</span><br><br>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;年龄：</span><input id="name3" type="button" value="${age}" class="names"><span id="change3">修改</span><br><br>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;邮箱：</spa><span id="email">${email}</span><br><br>

                            <a href="UpdateUser.jsp?StudentID=${studentID}">修改个人信息</a>
                            <a href="ChangePassword.jsp?StudentID=${studentID}">修改密码</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="./js/person.js" ></script>

</html>
