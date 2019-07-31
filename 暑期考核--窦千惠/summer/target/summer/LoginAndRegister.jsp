<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/21
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>东北师范大学学生会登录界面</title>
    <link rel="stylesheet" href="./css/log.css" />
    <script type="text/javascript" src="./js/log.js" ></script>
    <script type="text/javascript">
        // 时间戳 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
        function changeCode() {
            document.getElementById("CodePicture").src = "${pageContext.request.contextPath}/getCode?d="+new Date().getTime();
        }
        function ChangeCode() {
            document.getElementById("code").src = "${pageContext.request.contextPath}/ArtiCode?d="+new Date().getTime();
        }
    </script>

</head>
<body>
<div class="log">
    <!--登录or注册-->
    <div class="top">
        <ul>
            <li class="denglu"><button onclick="show1()" class="stud">登录</button></li>
            <li class="zhuce"><button onclick="show2()" class="teac">注册</button></li>
        </ul>
    </div>
    <div class="person">
        <img src="./img/头像.png" />
    </div>
    <!--登录-->
    <form class="enter1" id="enter1" action="/LoginServlet" method="post">
        <div class="left7">
            <img src="./img/头像-3.png" />
        </div>
        <div class="right7">
            <input type="text" placeholder=" Username" name ="username"/>
        </div>
        <div class="left4">
            <img src="./img/密码.png" />
        </div>
        <div class="right4">
            <input type="password" placeholder=" Password" name="password"/>
        </div>
        <div class="left6">
            <input type="checkbox" >
            <a>记住密码</a>
        </div>
        <div class="right6">
            <a>忘记密码？</a>
        </div>
        <div class="exam">
            <input type = "text" id = "input" class="text" placeholder="验证码" name="code"/>
            <img id="CodePicture" src="${pageContext.request.contextPath}/getCode">
            <a href="javascript:void(0);" onclick="changeCode()">换一张</a>
            <p>${LoginTip}</p>
        </div>
        <div class="footer">
           <input type="submit" value="登录" >
        </div>
    </form>
    <!--注册-->
    <form class="enter" id="enter" action="/RegisterServlet" method="post">
        <div class="left1">
            <img src="./img/id-4.png" />
        </div>
        <div class="right1">
            <input type="text" placeholder="Student ID" id="ID" name="studentID"/>
        </div>
        <div class="left2">
            <img src="./img/头像-3.png" />
        </div>
        <div class="right2">
            <input type="text" placeholder=" Username" id="name"  name="username"/>
        </div>
        <div class="left3">
            <img src="./img/密码.png" />
        </div>
        <div class="right3">
            <input type="password" placeholder="Password"  id="password" name="password"/>
        </div>
        <div class="left4">
            <img src="./img/邮箱.png" />
        </div>
        <div class="right4">
            <input type="text" placeholder="Email" id="email" name="email"/>
        </div>
        <div class="exam">
            <input type = "text" value="" class="text" placeholder="验证码" name="code"/>
            <img src="${pageContext.request.contextPath}/ArtiCode" alt="算数验证码" id="code">
            <a href="javascript:void(0);" onclick="ChangeCode()">换一张吧！</a>
            <p>${RegisterTip}</p>
        </div>
        <div class="footer">
           <input type="submit" value="注册" >
        </div>
    </form>
</div>
</body>
</html>