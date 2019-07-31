<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/24
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>全部新闻</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<table border="1">--%>
<%--    <c:forEach items="${APage}" var="list">--%>
<%--        <tr  align="center">--%>
<%--            <td>${list.newsTitle }</td>--%>
<%--            <td>${list.newsWriteTime}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>
<%--<table align="center">--%>
<%--    <tr>--%>
<%--        &lt;%&ndash;页面处于非第一页时要显示首页、上一页&ndash;%&gt;--%>
<%--        <td>--%>
<%--            <c:if test="${pagenow!=1}">--%>
<%--        <td><a href="NewsShowServlet?flag=1&pno=${pagenow}">首页</a></td>--%>
<%--        <td><a href="NewsShowServlet?flag=2&pno=${pagenow}">上一页</a></td>--%>
<%--        </c:if>--%>
<%--        </td>--%>
<%--        &lt;%&ndash;跳转指定页面&ndash;%&gt;--%>
<%--        <form action="NewsShowServlet?flag=5" method="post">--%>
<%--            <td>--%>
<%--                转到第--%>
<%--                <select name="pages">--%>
<%--                    <c:forEach begin="1" end="${totalpages}" var="i">--%>
<%--                        <option value="${i}"> ${i}</option>--%>
<%--                    </c:forEach>--%>
<%--                </select>--%>
<%--                页 <input type="submit" value="GO" >--%>
<%--            </td>--%>
<%--        </form>--%>
<%--        &lt;%&ndash;若页面不是最后一页时要显示下一页、尾页&ndash;%&gt;--%>
<%--        <td>--%>
<%--            <c:if test="${pagenow!=totalpages}">--%>
<%--        <td><a href="NewsShowServlet?flag=3&pno=${pagenow}">下一页</a></td>--%>
<%--        <td><a href="NewsShowServlet?flag=4&pno=${pagenow}">尾页</a></td>--%>
<%--        </c:if>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--</table>--%>


<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>东北师范大学学生处网站首页</title>
    <link rel="stylesheet" href="./lib/bootstrap3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/second.css" />
</head>
<body>
<div class="row">
    <div class="span12">
        <div class="header">
            <img src="./img/school union.png" class="union"/>
            <img src="./img/logo1.png" class="logo" />
            <div class="right1">
                <div class="school-main">
                    <a href="main.html" target="_blank" class="all">学校主页</a>
                </div>
                <div class="top1">
                    <input type="text" class="text" placeholder="  搜索..."/>
                    <a href="/"><img src="./img/搜索--1.png" class="search1"></a>
                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <img src="./img/登录.png" class="log2" />
                    <a href="log.html">&emsp;&nbsp;登录&emsp;&emsp;</a>
                    <a href="log.html">注册</a>
                </div>
                <div class="bottom">
                    <div class="head-nav">
                        <div class="head-nav-con clearFloat">
                            <ul>
                                <li class="drop-down">
                                    <a href="index.jsp">网站首页</a>
                                    <ul class="drop-down-content">
                                        <li><a href="/NewsShowServlet?flag=1&a=1">校园新闻</a></li>
                                        <li><a href="/NoticesShowServlet?flag=1&a=1">通知公告</a></li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">部门介绍</a>
                                    <ul class="drop-down-content">
                                        <li class="drop-down-2">
                                            <a href="#">部门简介</a>
                                            <ul class="drop-down-content-2">
                                                <li><a href="#">工作理念</a></li>
                                                <li><a href="#">机构设置</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">人员信息</a>
                                            <ul class="drop-down-content-2">
                                                <li><a href="#">学指委</a></li>
                                                <li><a href="#">学工部</a></li>
                                                <li><a href="#">学生处</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">队伍建设</a>
                                    <ul class="drop-down-content">
                                        <li><a href="#">纲领文件</a></li>
                                        <li><a href="#">培训培养</a></li>
                                        <li class="drop-down-2">
                                            <a href="#">基层队伍</a>
                                            <ul class="drop-down-content-2">
                                                <li><a href="#">副书记</a></li>
                                                <li><a href="#">分团委书记</a></li>
                                                <li><a href="#">辅导员</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">思政教育</a>
                                    <ul class="drop-down-content">
                                        <li class="drop-down-2">
                                            <a href="#">入学导航</a>
                                            <ul class="drop-down-content-2">
                                                <li class="two"><a href="#">入学教育方案</a></li>
                                                <li class="two"><a href="#">入学教育新闻</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">典型培育</a>
                                            <ul class="drop-down-content-2">
                                                <li class="two"><a href="#">理想与成才报告会</a></li>
                                                <li class="two"><a href="#">班长联席会</a></li>
                                                <li class="two"><a href="#">本科生党支部主题活动立项</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">红色体验</a>
                                            <ul class="drop-down-content-2">
                                                <li class="two"><a href="#">致敬焦裕禄</a></li>
                                                <li class="two"><a href="#">回望延安</a></li>
                                                <li class="two"><a href="#">重走井冈山</a></li>
                                                <li class="two"><a href="#">寻访红岩</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">毕业教育</a>
                                            <ul class="drop-down-content-2">
                                                <li class="two"><a href="#">毕业教育方案</a></li>
                                                <li class="two"><a href="#">毕业教育新闻</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">网络思政</a>
                                        </li>
                                        <li><a href="#">学院特色工作</a></li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">心灵港湾</a>
                                    <ul class="drop-down-content">
                                        <li><a href="#">中心简介</a></li>
                                        <li><a href="#">危机干预</a></li>
                                        <li class="drop-down-2">
                                            <a href="#">教育培训</a>
                                            <ul class="drop-down-content-2">
                                                <li><a href="#">朋辈辅导</a></li>
                                                <li><a href="#">心孕报</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">心理咨询</a>
                                            <ul class="drop-down-content-2">
                                                <li><a href="#">服务内容</a></li>
                                                <li><a href="#">服务安排</a></li>
                                                <li><a href="#">咨询原则</a></li>
                                                <li><a href="#">咨询误区</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">援助热线</a></li>
                                    </ul>
                                </li>
                                <li class="drop-down">
                                    <a href="#">日常管理</a>
                                    <ul class="drop-down-content">
                                        <li class="drop-down-2">
                                            <a href="#">制度管理</a>
                                            <ul class="drop-down-content-2">
                                                <li class="one"><a href="#">东北师范大学学生管理规定</a></li>
                                                <li class="one"><a href="#">东北师范大学学生违纪处罚办法</a></li>
                                                <li class="one"><a href="#">东北师范大学党委学生工作部学生突发公共事件处理预案</a></li>
                                                <li class="one"><a href="#">东北师范大学关于加强少数民族学生成长成才工作的安排意见</a></li>
                                                <li class="one"><a href="#">东北师范大学学生奖励条例</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">业务办理</a>
                                            <ul class="drop-down-content-2">
                                                <li class="one"><a href="#">本科学生走读安排</a></li>
                                                <li class="one"><a href="#">本科生奖学金评审流程图</a></li>
                                                <li class="one"><a href="#">本科生处分工作流程图</a></li>
                                            </ul>
                                        </li>
                                        <li class="drop-down-2">
                                            <a href="#">表格下载</a>
                                            <ul class="drop-down-content-2">
                                                <li class="one"><a href="#">奖学金申报表</a></li>
                                                <li class="one"><a href="#">学生处分填报表</a></li>
                                                <li class="one"><a href="#">宿舍相关填报表</a></li>
                                                <li class="one"><a href="#">学生活动经费报销</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="main">
    <div id="left" class="left1">
        <ul class="nav nav-pills nav-stacked teach" id="lead">
            <li class="active" id="teach"><a href="index.jsp">网站首页<span class="glyphicon glyphicon-menu-down"></span></a></li>
            <li onclick="show1()"><a  href="/NewsShowServlet?flag=1&a=1" >校园新闻</a></li>
            <li onclick="show2()"><a  href="/NoticeShowServlet?flag=1&a=1" >通知公告</a></li>
        </ul>
        <img src="./img/bottom1.PNG" />
    </div>
    <div class="picture">
        <img src="./img/school motto.jpg"/>
        <div class="now">
            <p>当前位置：<a href="Union.html">网站首页</a>>><a href="First web.html">校园新闻</a></p>
        </div>
    </div>
    <div class="news" id="news">
        <ul id="idData">
<c:forEach items="${APage}" var="list">
            <li title="${list.newsTitle}"><a href="/">${list.newsTitle}</a></li>
</c:forEach>
    </ul>
        <div id="fenye">
            <tbody >
            <table align="center">
                <tr>
                    <%--页面处于非第一页时要显示首页、上一页--%>
                    <td>
                        <c:if test="${pagenow!=1}">
                    <td><a href="NewsShowServlet?flag=1&a=1&pno=${pagenow}">首页</a></td>
                    <td><a href="NewsShowServlet?flag=2&a=1&pno=${pagenow}">上一页</a></td>
                    </c:if>
                    </td>
                    <%--跳转指定页面--%>
                    <form action="NewsShowServlet?flag=5&a=1" method="post">
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
                    <td><a href="NewsShowServlet?flag=3&a=1&pno=${pagenow}">下一页</a></td>
                    <td><a href="NewsShowServlet?flag=4&a=1&pno=${pagenow}">尾页</a></td>
                    </c:if>
                    </td>
                </tr>
            </table>


            </tbody>
        </div>
    </div>
    <div class="advice" id="advice">

    </div>
</div>
<div class="footer">
    <div id="content">
        <p>版权所有：东北师范大学党委学生工作部（处） | 地址：吉林省长春市人民大街5268号 | 邮编：130024 </p>
    </div>
</div>
<script type="text/javascript" src="../js/second.js" ></script>
</body>
</html>
