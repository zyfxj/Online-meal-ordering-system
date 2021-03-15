<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: zt2620
  Date: 2020/7/28
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<base href="<%=basePath%>">
<head>
    <meta charset="utf-8">
    <title>订餐界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="Order.css">
</head>
<style>
    * {
        box-sizing: border-box;
    }
</style>
<script type="text/javascript">
    var x = [["黄焖鸡1", '10', '4', '0001'],
        ['黄焖鸡2', '15', '3', '0002'],
        ['黄焖鸡3', '20', '2', '0003'],
        ['黄焖鸡4', '25', '1', '0004']];
    window.onload=function create_shoppingcar(){
        for(i=0; i<x.length; i++){
            var name=x[i][0].toString();
            var price=x[i][1].toString()*x[i][2].toString();
            var number=x[i][2].toString();
            var id=x[i][3].toString();
            var tbody=document.getElementById("goods");
            var row=tbody.insertRow();
            row.innerHTML="<td>"+name+"</td>"+
                "<td>"+price+"</td>"+
                "<td>"+number+"</td>"+
                "<td>"+id+"</td>"+
                "</tr>"
        }
    }
</script>
<body>

<div class="header">
    <div class="background">
        <h1 style="color: black">网上订餐系统</h1>
    </div>
</div>

<div class="topnav">
    <a href="../../index.jsp">退出</a>
    <a href="../menu/menu.jsp">菜品浏览</a>
    <a href="${pageContext.request.contextPath}/firstpage.jsp">主界面</a>
    <a href="../PersonalInfo/PersonalInfo.jsp">个人信息</a>
    <a href="../contact/contact.jsp">留言评论</a>
</div>
<div class="row">
    <div class="column">
        <table id="customers">
            <tr>
                <th class="dish">菜名</th>
                <th class="price">价格</th>
                <th class="number">数量</th>
                <th class="others">备注</th>
            </tr>
            <%
                ArrayList<ArrayList<String>> table1 = (ArrayList<ArrayList<String>>)request.getAttribute("table1");
                for( int i = 0 ; i < table1.size() ; i++ ){
                    ArrayList<String> row = table1.get(i);
            %>
            <tr>
                <td class="dish"><%out.println(row.get(0));%></td>
                <td class="price"><%out.println(row.get(1));%>
                </td>
                <td class="number"><%out.println(row.get(2));%>
                </td>
                <td><input type="text" id="introduce+String(i)"></td>
            </tr>
            <%
                }
            %>
            <tr>
                <td class="dish">待输入</td>
                <td class="price">待输入</td>
                <td class="number">待输入</td>
                <td><input type="text" id="introduce1"></td>
            </tr>
        </table>
    </div>
</div>

<div class="footer">
    <table id="customersy">
        <tr>
            <td class="dish">订单总金额：
            <%
                float sum = 0;
                for( int i = 0 ; i < table1.size() ; i++ ){
                sum = Float.parseFloat(table1.get(i).get(3)) + sum;
            }
                out.println(sum);
                out.println("</td>");
                out.println("<td>总金额数");
                out.println(sum);
                out.println("</td>");
            %>
        </tr>
        <tr>
            <td>我的送餐地址：</td>
            <td><input type="text" id="location"></td>
        </tr>
    </table>
</div>
<button class="button" onclick="window.location.href='../../firstpage.jsp'" style="vertical-align:middle"><span>提交订单</span></button>
</body>
</html>