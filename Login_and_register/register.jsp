<%--
  Created by IntelliJ IDEA.
  User: zt2620
  Date: 2020/7/28
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="register.css">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
        }

        /* 头部样式 */
        .header {
            width: 100%;
            height: 100px;
            background-color: #f1f1f1;
            padding: 20px;
            text-align: center;
            background-image: url("photo/logbg.jpg");
        }
        .background
        {
            overflow: hidden;
            position: absolute;
            top:-10px;
            left: 0px;
            width: 100%;
            height: 110px;
            background-color: #ffffff;
            opacity: 0.8;
        }
        /* 导航条 */
        .topnav {
            border: 2px solid #fafafa;
            overflow: hidden;
            background-color: #333;
            height: 40px;
        }
        /* 导航链接 */
        .topnav a {
            float: right;
            display: block;
            color: #f2f2f2;
            text-align: center;
            text-decoration: none;
            padding-right: 15px;
            padding-left: 15px;
            padding-bottom: 0;
        }
        /* 链接 - 修改颜色 */
        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

    </style>
</head>
<body>

<div class="header">
    <div class="background">
        <h1 style="color: black">网上订餐系统欢迎您！</h1>
    </div>
</div>

<div class="topnav">
    <a href="#">关于我们</a>
    <a href="#">联系客服</a>
    <a href="../../firstpage.jsp">登录</a>
</div>
<script language="javascript">
    function sel(){
        document.thisform.submit();
    }
    function login() {
        window.location.href="../../index.jsp"
    }
</script>
<div class="row" style="padding: 0px">
    <div class="column side" style="padding: 0px">
        <div class="backgrounda" >
            <img src="photo/a.jpg" height="100%" width="100%" >
        </div>
    </div>
    <div class="column middle" style="padding: 20px 20px 0px 20px">
        <div class="backgroundb">
            <form action="/web_war_exploded/aaa/bbb/AddInput" method="post">
                <label for="fname" style="font-size: x-large;"> 用户名</label>
                <input type="text" id="fname" name="username" placeholder="Input Your name..">
                <label for="lname" style="font-size: x-large"> 密码</label>
                <input type="text" id="lname" name="password" placeholder="Input Your Keyvalue">
                <label for="lname"style="font-size: x-large"> 再次输入密码</label>
                <input type="text" id="lname" name="password" placeholder="Input Your Keyvalue again">
                <label for="location" style="font-size: x-large"> 所在地区</label>
                <input type="text" id="location" name="address" placeholder="Input Your Address again">
                <input type="submit" value="提交" onclick="login()">
            </form>
        </div>
    </div>
    <div class="column side" style="padding: 0px">
        <div class="backgroundc">
            <img src="photo/c.jpg" height="100%" width="100%">
        </div>
    </div>
</div>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String address=request.getParameter("address");
%>
<div class="footer">
    <img class="thumbnail" src="photo/1.jpg">
    <img class="thumbnail" src="photo/2.jpg">
    <img class="thumbnail" src="photo/3.jpg">
    <img class="thumbnail" src="photo/4.jpg">
    <img class="thumbnail" src="photo/5.jpg">
    <img class="thumbnail" src="photo/6.jpg">
    <img class="thumbnail" src="photo/7.jpg">
    <img class="thumbnail" src="photo/8.jpg">
    <img class="thumbnail" src="photo/9.jpg">
    <img class="thumbnail" src="photo/12.jpg" style="margin: 4.5px 1px 0px 6px">
</div>
</body>
</html>

