<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/25
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="./lib/bootstrap3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/Sort.css" />
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
        <!--分类管理页-->
        <div class="newscontrol" id="newscontrol">
            <div class="search">

               <form method="post" action="/SortSearchServlet">
                   <img id="search1" src="./img/搜索--1.png">
                <input type="text" placeholder="请输入要查找的类型..."name="search" id="search" onkeyup="Search()">
                   <input type="submit" name="搜索"  />
                </form>
            </div>
            <div class="fabu">
                <button onclick="show6()" id="fabu" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                    <span class="glyphicon glyphicon-plus" ></span>
                    增加修改
                </button>
            </div>
            <div class="right1" id="right1">
                <table id="news">
                    <tr class="news-nav">
                        <th class="newsid">分类ID</td>
                        <th class="newstitle">类别</th>
                        <th class="author">添加时间</th>
                        <th class="do">操作</th>
                    </tr>
                    <c:forEach items="${SortList}" var="list">
                        <tr id="listTable">
                            <td class="newsid">${list.sortID}</td>
                            <td class="name">${list.sortName }</td>
                            <td>${list.addTime}</td>
                            <td class="do">
                                <a href="SortDeleteServlet?sortID=${list.sortID}"><input type="button" name="" value="删除" class="btn btn-danger" onclick="del(this)" /></a>
                                <a href="SortUpdate.jsp?sortID=${list.sortID}"><input type="button" name="" value="修改" class="btn btn-info" onclick="modify(this)" /></a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                ${tip}
            </div>
            <!--	增加数据---------------->
            <!--<button id="fabu" onclick="show6()" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="display:inline-block; width:120px;height:40px;float:right;">
                <span class="glyphicon glyphicon-plus" ></span>
                &nbsp;&nbsp;发布考试
            </button>-->
            <div id="fb">
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="关闭"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">处理数据</h4>
                            </div>
                            <div class="modal-body">
                                <form action="SortAddServlet" method="post">
                                    <table class="table table-hover table-bordered" cellspacing="0">
                                        <tr>
                                            <th>添加类别</th>
                                            <td><input type="text" name="sortName" class="form-control" id="sortName" /></td>
                                        </tr>
                                        <tr>
                                            <th>添加时间</th>
                                            <td><input type="text" name="addTime" class="form-control" id="addTime" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" id="control">
                                                <input type="reset" value="重置" class="btn btn-primary" id="reset" />
                                                <input type="submit" value="添加" class="btn btn-success" id="add" onclick="addList()" />
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/newscontrol.js"></script>

</html>
