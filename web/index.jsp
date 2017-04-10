<%--
  Created by IntelliJ IDEA.
  User: mxlcpu
  Date: 2017/4/5
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>editplus在线注册</title>
    <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
    <link rel="SHORTCUT ICON" href="img/myweb.ico">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <script type="application/javascript" src="js/bootstrap.js"></script>
    <script type="application/javascript" src="js/editpluskeygen.js"></script>
    <script>
        var username = document.getElementById("username").value;
        <!--校验用户名-->
        function myvali() {
            if (/\W/g.test(username)) {
                document.getElementById("username").value = "";
            }
        }
        <!--复制激活码-->
        function copy() {
            var regcode = document.getElementById("regcode");
            var regcodevalue = regcode.value;
            if ("" == username) {
                alert("请输入用户名！");
                return;
            }
            if ("" == regcodevalue || !/\w/g.test(regcodevalue)) {
                alert("请生成注册码！");
                return;
            }
            regcode.select();
            if(document.execCommand("copy", false, null)){
                alert('已复制到剪切板！');
                return;
            }
            alert("复制失败！");
        }
    </script>
</head>
<body style="padding-top: 70px">
<div class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation"><!--导航条-->
        <div class="container-fluid">

            <div class="navbar-header"><!--主页-->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://192.168.0.104:8080/keygen/index.jsp">首页</a>
            </div>

            <div class="collapse navbar-collapse"><!--其他页-->
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">电脑软件</a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">系统工具</a></li>
                            <li><a href="#">联系方式</a></li>
                            <li><a href="#">广告合作</a></li>
                            <li class="divider"></li>
                            <li><a href="#">关于本站</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">手机软件</a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">作者信息</a></li>
                            <li><a href="#">联系方式</a></li>
                            <li><a href="#">广告合作</a></li>
                            <li class="divider"></li>
                            <li><a href="#">关于本站</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于</a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">作者信息</a></li>
                            <li><a href="#">联系方式</a></li>
                            <li><a href="#">广告合作</a></li>
                            <li class="divider"></li>
                            <li><a href="#">关于本站</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="搜索本站">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="form-group"><!--editplus注册码生成器-->
        <div class="col-md-2 col-sm-12" style="height: inherit">
            <h4>editplus注册码生成器：</h4>
        </div>
        <div class="col-md-3 col-sm-12" style="height: inherit">
            <input type="text" class="form-control" id="username" placeholder="请输入英文用户名" onclick="myvali()"/>
        </div>
        <div class="col-md-2 col-sm-12" style="height: inherit">
            <button type="button" class="btn btn-default btn-block" onclick="generate_editplus_regcode()">生成注册码</button>
        </div>
        <div class="col-md-3 col-sm-12" style="height: inherit">
            <input type="text" class="form-control" id="regcode" placeholder="请先生成注册码，再点击复制" readonly/>
        </div>
        <div class="col-md-2 col-sm-12" style="height: inherit">
            <button type="button" class="btn btn-default btn-block" onclick="copy()">复制</button>
        </div>
    </div>
</div>
</body>
</html>
