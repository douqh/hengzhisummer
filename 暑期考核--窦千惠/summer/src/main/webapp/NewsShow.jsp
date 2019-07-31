<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/7/26
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>东师新闻</title>
    <link rel="stylesheet" href="./lib/bootstrap3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/news!.css" />
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
                                        <li><a href="NewsShowServlet?flag=1&a=1">校园新闻</a></li>
                                        <li><a href="NoticeShowServlet?flag=1&a=1">通知公告</a></li>
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
        <img src="./img/bottom2.PNG" />
    </div>
    <div class="picture">
        <img src="./img/school motto.jpg"/>
        <div class="now">
            <p>当前位置：<a href="index.jsp">网站首页</a>>><a href="First web.html">校园新闻></a>正文</p>
        </div>
    </div>
<%--    <c:forEach items="${news}" var="list">--%>
    <div class="news">
        <!--标题-->
        <div class="title">
            <h1>我校在2018年度长春市 “高校文明杯”评选活动中获多项荣誉</h1>
        </div>
        <!--审核人，时间-->
        <div class="author">
            <p>2019-05-21 10:13   学生处  审核人：</p>
        </div>
        <!--内容，可以一段一个p标签-->
        <div class="content">
            <p>&emsp;&emsp;日前，由中共长春市委教育工作委员会组织的2018年度长春市“高校文明杯”评选活动圆满结束，我校在活动中获得多项荣誉。</p><br/>

            <p>&emsp;&emsp;本次评选活动中，我校教育学部 、马克思主义学部、国际汉学院获得“先进基层单位”称号，还获得四项“十佳”评选全部奖项，其中学生就业指导服务中心主任李亚员获得“十佳思想政治教育工作者”，传媒科学学院专职辅导员张思奇获得“十佳辅导员”，数学与统计学院2015级本科生王长虎获得“十佳大学生”，文学院2016级汉语言文学4班获得“十佳班级”。此外，还有16人获得优秀个人奖项，13个集体获得优秀集体奖项。具体获奖情况见附表。</p><br/>

                <p>“高校文明杯”是长春市高校工作委员会自1995年开始组织的在长高校间的评选活动，是长春市各高校展示精神文明建设成果的良好平台，对于繁荣校园文化、丰富学生活动、提升师生的思想水平和道德素养具有重要的促进作用。长期以来，我校积极参与并屡获佳绩，充分展现了师生良好的精神风貌和思想政治工作的实效。
            </p>
        </div>
    </div>
<%--    </c:forEach>--%>
    <div class="shut">
        <a href="index.jsp">[关闭窗口]</a>
    </div>
</div>
<div class="footer">
    <div id="content">
        <p>版权所有：东北师范大学党委学生工作部（处） | 地址：吉林省长春市人民大街5268号 | 邮编：130024 </p>
    </div>
</div>
</body>
</html>
