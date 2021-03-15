<%--
  Created by IntelliJ IDEA.
  User: zt2620
  Date: 2020/7/28
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>留言反馈</title>
    <link rel="stylesheet" href="contact.css">
    <script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&ak=8ShjBzwPhpwIFSCq0LZVwaLHChBchfmu"></script>
</head>
<body>
<div class="header">
    <h1 style="color: black">
        菜狗网上订餐服务系统
    </h1>
</div>
<div style="padding:0px 90px" class="topnav">
    <a href="${pageContext.request.contextPath}/firstpage.jsp">首页</a>
    <a href="../menu/menu.jsp">选餐订餐</a>
    <a href="../order/Order.jsp">我的订单</a>
    <a href="../PersonalInfo/PersonalInfo.jsp">个人信息</a>
    <a class="active" style="float: right" href="contact.jsp">留言反馈</a>
    <a style="float: right" href="#">关于我们</a>
    <input class="zyf" type="text" placeholder="搜索..">
</div>

<div class="container">
    <div class="row">
        <div class="column">
            <div id="allmap" style="width:100%;height:514.4px"></div>
        </div>
        <div class="column">
            <form action="/action_page.php">
                <label for="fname">姓名</label>
                <input class="wjm" type="text" id="fname" name="name" placeholder="您的称呼..">
                <label for="phone">联系电话</label>
                <input class="wjm" type="text" id="phone" name="phone" placeholder="联系电话..">
                <label for="country">所在地</label>
                <select id="country" name="country">
                    <option value="bj">北京</option>
                    <option value="sh">上海</option>
                    <option value="sz">深圳</option>
                    <option value="sz">西安</option>
                </select>
                <label for="subject">留言</label>
                <textarea id="subject" name="subject" placeholder="写入一些信息.." style="height:170px"></textarea>
                <input type="submit" value="提交">
            </form>
        </div>
    </div>
</div>

<div class="footer">

</div>

</body>
</html>

<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");    // 创建Map实例
    map.centerAndZoom(new BMap.Point(108.771709,34.039191), 14);  // 初始化地图,设置中心点坐标和地图级别
    //添加地图类型控件
    map.addControl(new BMap.MapTypeControl({
        mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));
    map.setCurrentCity("西安");          // 设置地图显示的城市 此项是必须设置的
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>