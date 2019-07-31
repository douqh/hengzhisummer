<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>东北师范大学学生处</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/Union.css" />
    <script>
        function search(){
            // alert("kaishi");
            if(confirm("确定要搜索吗？")){
                $.ajax({
                    type:'post',
                    url:'/SearchServlet',
                    dataType:"json",
                    data:{
                        // 传参
                        searchContent:$("#searchContent").val(),
                    },
                    success:function (data) {
                        alert(data.searchContent);
                        var content=null;
                        content=content+"<td height='100px'><td>"+data.searchContent +"</td><td>";
                        $("#cont").html(content);
                    },
                    error:function () {
                        alert("搜索无效")
                    }
                });
            }
        }
    </script>
</head>
<body>
<div class="row">
    <div class="span12">
        <div class="header">
            <img src="./img/school union.png" class="union"/>
            <img src="./img/logo1.png" class="logo" />
            <div class="right1">
                <div class="school-main">
                    <a href="./html/main.html" target="_blank" class="all">学校主页</a>
                </div>
                <div class="top1">

                    <input type="text" class="text" placeholder="  搜索..." id ="searchContent" name="searchContent"/>
                    <a><img src="./img/搜索--1.png" class="search1" onclick="search()"></a>
                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <img src="./img/登录.png" class="log2" />
                    <a href="LoginAndRegister.jsp">&emsp;&nbsp;登录&emsp;&emsp;</a>
                    <a href="LoginAndRegister.jsp">注册</a>
                </div>
                <div class="bottom">
                    <div class="head-nav">
                        <div class="head-nav-con clearFloat">
                            <ul>
                                <li class="drop-down">
                                    <a href="#">网站首页</a>
                                    <ul class="drop-down-content">
                                        <li><a href="/NewsShowServlet?flag=1&a=1">校园新闻</a></li>
                                        <li><a href="/NoticeShowServlet?flag=1&a=1">通知公告</a></li>
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
        <!--轮播-->
        <div id="myCarousel" class="carousel slide" style="width: 1200px;height: 400px;margin: 0 auto;">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="./img/tilent.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="./img/sdgy.jpg" alt="Second slide">
                </div>
                <div class="item">
                    <img src="./img/yfyn.jpg" alt="Third slide">
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="height: 450px;">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="height: 450px;">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--    轮播结束-->
    </div>
</div>
<div class="relative">
    <div class="content">
        <div class="information">
            <img src="./img/information.png"/><br />
            <a href="/">信息门户</a>
        </div>
        <div class="man">
            <img src="./img/man.PNG" /><br />
            <a href="/">学工系统</a>
        </div>
        <div class="director">
            <img src="./img/director.PNG" /><br />
            <a href="./html/lead.html">本站导航</a>
        </div>
        <div class="code1">
            <img src="./img/sqsm.png" /><br />
            <a href="/" id="sqsm">东师拾全拾美</a>
        </div>
        <div class="code2">
            <img src="./img/dsxq.PNG" /><br />
            <a href="/">东师心晴</a>
        </div>
        <div class="code3">
            <img src="./img/dsxw.PNG" /><br />
            <a href="/">东师小窝</a>
        </div>
    </div>
</div>
<div class="school-news">
    <div class="more">
        <a href="/NewsShowServlet?flag=1&a=1">更多></a>
    </div>
    <div class="news">
        <ul>
            <c:forEach items="${NewsList}" var="list"  begin="0" end="9" step="1">
            <li><a href="/NewsShow.jsp" title="${list.newsTitle}">${list.newsTitle}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>
<div class="advice">
    <div class="more1">
        <a href="/NoticeShowServlet?flag=1&a=1">更多></a>
    </div>
    <div class="message">
        <ul>
<c:forEach items="${NoticeList}" var="list1"  begin="0" end="9" step="1">
            <li><a href="/NewsShow.jsp" title="${list1.noticeTitle}">${list1.noticeTitle}</a></li>
</c:forEach>
    </ul>
    </div>
</div>
<div class="footer">
    <div id="content">
        <p>版权所有：东北师范大学党委学生工作部（处） | 地址：吉林省长春市人民大街5268号 | 邮编：130024 </p>
    </div>
</div>
</body>
</html>

