<%@ page import="java.util.ArrayList" %>
<%@ page import="shixi.project.useri" %><%--
  Created by IntelliJ IDEA.
  User: zt2620
  Date: 2020/7/28
  Time: 10:31
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
    <title>个人中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="yonghuzhongxin.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/axios.min.js"></script>
    <style>
        @media (min-width: 1200px){
            .secs{
                display: grid;
                grid-template-columns: repeat(3, minmax(240px, 1fr));
            }
        }

        .section{
            display: flex;
            text-align: center;
            font-size: 17px;
        }
        .section__item{
            margin: 0px;
        }
    </style>
</head>
<body onload="initialInformation();">

<div class="header">
    <h1>网上订餐系统欢迎您！</h1>
</div>

<script  type="text/javascript">
    function initialInformation() {
        <%
            ArrayList<ArrayList<String>> table1 = (ArrayList<ArrayList<String>>)request.getAttribute("table1");
            for( int i = 0 ; i < table1.size() ; i++ ){
                ArrayList<String> row = table1.get(i);
        %>

        document.getElementsByTagName("input")[0].value="12344";
        document.getElementsByTagName("input")[1].value=row.get(0);
        document.getElementsByTagName("input")[2].value=row.get(2);
        document.getElementsByTagName("input")[3].value=row.get(4);
        document.getElementsByTagName("input")[4].value=row.get(5);
        document.getElementsByTagName("input")[5].value=row.get(6);
        <%
            }
        %>
    }
</script>

<div class="topnav">
    <div style="text-align:center;clear:both; padding: 0px;">
        <div class="section" style="padding: 0px">
            <div class="section__item" style="padding: 0px">
                <div class="section__box" style="padding: 0px 0px 0px 0px">
                    <a href="../contact/contact.jsp" class="r-link ai-element ai-element_bg ai-element9" style="margin:0px;padding:0px 15px 13px 15px">
                        <span class="ai-element__label" style="padding: 10px 0px 0px 5px">申请评论</span>
                    </a>
                    <a href="../menu/menu.jsp" class="r-link ai-element ai-element_bg ai-element9" style="margin:0px 150px 0px 180px;padding:0px 15px 13px 15px">
                        <span class="ai-element__label" style="padding: 10px 0px 0px 5px">选择菜品</span>
                    </a>
                    <a href="${pageContext.request.contextPath}/firstpage.jsp" class="r-link ai-element ai-element_bg ai-element9" style="margin:0px 140px 0px 150px;padding:0px 15px 13px 15px">
                        <span class="ai-element__label" style="padding: 10px 0px 0px 5px">主界面</span>
                    </a>
                    <a href="../order/Order.jsp" class="r-link ai-element ai-element_bg ai-element9" style="margin:0px 150px 0px 190px;padding:0px 15px 13px 15px">
                        <span class="ai-element__label" style="padding: 10px 0px 0px 5px">订单查询</span>
                    </a>
                    <a href="../../index.jsp" class="r-link ai-element ai-element_bg ai-element9" style="margin:0px 0px 0px 93px;padding:0px 15px 13px 15px">
                        <span class="ai-element__label" style="padding: 10px 0px 0px 5px">注销</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script language="javascript">
    function sel(){
        document.thisform.submit();
    }
</script>

<div class="row">
    <div class="column side">
        <!--<iframe src="index.html" width="100%" height="760px" frameborder="0" style="margin:0px; padding: 0px"></iframe>-->
    </div>

    <div class="column middle" style="margin-left: 0px">
        <p style="margin-top: 0px"><b>查看只需点击输入框\点击取消按钮，如要修改，请务必使每个输入框中含有信息</b></p>
        <form action="/web_war_exploded/aaa/bbb/Update" method="get">
            <table class="information" >
                <form name="thisform" method="get">
                    <tr>
                        <td class="username" width="100px">用户名：</td>
                            <td>
                                <input type="text" name="username" value="1">
                            </td>
                    </tr>
                    <tr>
                        <td class="userId" width="100px">用户账号：</td>
                            <td>
                                <input type="text" name="userId" value="2">
                            </td>
                    </tr>
                    <tr>
                        <td class="keyvalue" width="100px">登陆密码：</td>
                            <td>
                                <input type="text" name="keyvalue" value="3">
                            </td>
                    </tr>
                    <tr>
                        <td class="telphone" width="100px">联系方式：</th>
                            <td>
                                <input type="text" name="telphone" value="4">
                            </td>
                    </tr>
                    <tr>
                        <td class="e-mail" width="100px">电子邮箱：</td>
                            <td>
                                <input type="text" name="e-mail" value="5">
                            </td>
                    </tr>
                    <tr>
                    <td class="address" width="100px">配送地址：</td>
                        <td>
                            <input type="text" name="address" value="6">
                        </td>
                    </tr>
                </form>
            </table>
        </form>

        <div style="text-align:center;clear:both">
            <div class="section">
                <div class="section__item">
                    <div class="section__box">
                        <button class="r-button ai-element ai-element_bg ai-element9" style="margin: 50px 80px 100px 120px;padding:20px 30px 20px 30px">
                            <span class="ai-element__label">保存</span>
                        </button>
                        <button class="r-button ai-element ai-element_bg ai-element9" style="margin: 50px 0px 100px 20px;padding:20px 30px 20px 30px">
                            <span class="ai-element__label">取消</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    String username=request.getParameter("username");
    String userId=request.getParameter("userId");
    String keyvalue=request.getParameter("keyvalue");
    String telphone=request.getParameter("telphone");
    String email=request.getParameter("e-mail");
    String address=request.getParameter("address");
%>

<div class="footer">
    <p>此处插入图片</p>
</div>

</body>
</html>