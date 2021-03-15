    <%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: zt2620
  Date: 2020/7/28
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%
String path = request.getRequestURI();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<base href="<%=basePath%>">
<head>
    <meta charset="UTF-8">
    <title>选餐订餐</title>
    <link rel="stylesheet" href="menu.css">
    <script type="text/javascript" src="menu.js"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/axios.min.js"></script>

</head>

<body>
<div class="header">
    <h1 style="color: black">
        菜狗网上订餐服务系统
    </h1>
</div>
<div style="padding:0px 90px" class="topnav">
    <a href="${pageContext.request.contextPath}/firstpage.jsp">首页</a>
    <a class="active" href="menu.jsp">选餐订餐</a>
    <a href="${pageContext.request.contextPath}/aaa/bbb/Select">我的订单</a>
    <a href="../PersonalInfo/PersonalInfo.jsp">个人信息</a>
    <a style="float: right" href="../contact/contact.jsp">留言反馈</a>
    <a style="float: right" href="#">关于我们</a>
    <input type="text" placeholder="搜索..">
</div>
<div style="margin: 0px 90px">

    <div class="content">

        <h2 style="text-align: center; padding-top: 40px; padding-bottom: 10px">简餐便当</h2>
        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡米饭</p>
                    <p style="margin: 0">单价:<strong>12</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">麻辣香锅</p>
                    <p style="margin: 0">单价:<strong>9</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡3</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡4</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <h2 style="text-align: center; padding-top: 40px; padding-bottom: 10px">地方美食</h2>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡5</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡6</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡7</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡8</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <h2 style="text-align: center; padding-top: 40px; padding-bottom: 10px">水果饮料</h2>
        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡9</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡10</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡11</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡12</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <h2 style="text-align: center; padding-top: 40px; padding-bottom: 10px">风味小吃</h2>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡13</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡14</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡15</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="responsive">
            <div class="img">
                <img src="1.jpg" height=100%>
                <div class="desc">
                    <p style="margin: 0">黄焖鸡16</p>
                    <p style="margin: 0">单价:<strong>10</strong>元</p>
                    <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="加入购物车" type="button" value="加入购物车" onclick="add_shoppingcar(this)">
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <div style="padding:6px;"></div>

    </div>

</div>

<h2 style="text-align: center; padding-top: 40px">我的购物车</h2>
<table>
    <thead>
    <tr>
        <th>商品</th>
        <th>单价</th>
        <th>数量</th>
        <th>金额</th>
        <th>删除</th>
    </tr>
    </thead>
        <tbody id="goods">
        </tbody>
    <tfoot>
    <tr>
        <td colspan="3" align="center" >总计</td>
        <td id="total"></td>
        <td>元</td>
    </tr>
    </tfoot>
</table>
        <form action="/web_war_exploded/aaa/bbb/index" method="post">
        <div style="text-align:center">
            <input class="zyf" style="margin-top: 10px; margin-bottom: 5px" name="去结算" type="submit" value="去结算" onclick="Get()">
        </div>
        </form>

<div class="footer">

</div>
</body>
</html>
        <script type="text/javascript">
        var data_1 = [];
        function Get() {
        var x = document.getElementById('goods');
        row = x.rows.length
        for (var i = 0; i < row; i++) {
        var data2 = [];
        var cells = x.rows[i].cells.length
        for (var j = 0; j < cells-1; j++) {
        data2.push(x.rows[i].cells[j].innerHTML);
        }
        data2[2] = (data2[3].toString()) / (data2[1].toString());
        data_1.push(data2);
        }
        for(var i = 0; i<data_1.length; i++){
        $.ajax({
        url : "/web_war_exploded/aaa/bbb/index",
        data : {
        "checkedData" : (data_1[i].toString())
        },
        dataType : 'String',
        type : "post",
        traditional: true,//属性在这里设置
        cache:false,
        async:false,
        success : function(message) {
        alert("传输成功");
        },
        });
        }
        alert("下单成功");
        }
        </script>
