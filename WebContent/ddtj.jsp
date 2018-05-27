<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车界面</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--购物车付款-->
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="script/global.js" type="text/javascript"></script>
<script src="script/head.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/basic.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="style/base.css" />
<link rel="stylesheet" href="style/head.css" />

<body>

<!--抬头开始-->

<%@include file="top.jsp" %>

<!--抬头结束-->



<!--中部开始-->

<div class="ding_tjb">
<div class="ding_1">
<table width="0" border="0" cellspacing="0" cellpadding="0">
  <tr style=" font-family:微软雅黑; text-align:center; font-size:14px;">
    <td width="69">
    <input name="" type="checkbox" name="c0" id="all"  onclick="change()" style=" margin-left:10px; margin-right:10px;"/>全选
    </td>
    <td width="279">商品信息</td>
    <td width="116">重量（g）</td>
    <td width="114">单价（元）</td>
    <td width="147">数量</td>
    <td width="83">赠送积分</td>
    <td width="118">小计（元）</td>
    <td width="72">操作</td>
  </tr>
</table>
</div>





<c:forEach var="w" items="${sessionScope.wine }">
<div class="dingd_sl">
<table width="0" border="0" cellspacing="0" cellpadding="0">
  <tr style=" font-family:微软雅黑; text-align:center; font-size:14px;">
    <td width="43" height="87">
    <input name="" type="checkbox" name="c1"  style=" margin-left:10px; margin-right:10px;"/></td>
    <td width="305">
    <span class="ddtp_3"><a href="WineServlet?method=detail&wine_id=${w.key.wine_id }">
    <img  src="${w.key.picture }" width="59" height="58" /></a></span>
    <span class="ddmc_xq"><a href="#">&nbsp;&nbsp;${w.key.kind }&nbsp;&nbsp;${w.key.wine_name}</a></span></td>
    <td width="116">2600</td>
    <td width="114" style="color:#F00;">￥${w.key.price }</td>
    <td width="147">
    <input name="" value="-" type="button" style="background: url(images/jia.jpg); width:19px; height:19px;/">
	<input type="text" value="${w.value }"  style="width:40px; text-align:center; height:18px; border:1px solid #dddddd;"/ >  
	<input name="" value="+" type="button" style="background: url(images/jia.jpg); width:19px; height:19px;"></td>
    <td width="83">+230</td>
    <td width="118" style="color:#F00;">￥${w.key.price }</td>
    <td width="72"><a href="javascript:deletwine('ShopingServlet?method=deletProduct&wine_id=${w.key.wine_id }')">删除</a></td>
  </tr>
</table>

</div>
</c:forEach>



<div class="jxgw_zj">

<div class="jxgw_wq"><a href="#">继续购物</a></div>
<div class="zjs2"><div class="none" style="height:15px;"></div>
<%-- <div class="zjs2_1">共
<span style="color:#F00; font-size:14px;">${w.value }</span>件商品，商品金额：
<span style="color:#F00; font-size:15px;">￥${w.key.price }</span></div>
<div class="zjs2_1">商品总价（不含运费）：
<span style="color:#F00; font-size:15px;">b￥188.00</span></div> --%>
<div class="qjs"><a href="ddqr.jsp">去结算</a></div>
<div style="width:10;height:30;position:relative;">
<a href="javascript:deletallwines()">清空购物车</a></div>
</div>


</div>
</div>

<!--中部结束-->

<!--底部开始-->
<c:import url="bottom.jsp"></c:import>


<!--底部结束-->



</body>
</html>
<script type="text/javascript">
function deletwine(url) {
	var  userChoice=window.confirm("您确认要删除这个商品吗?");
	if(userChoice)
	{
		location.href=url;
	}
}

function deletallwines() {
	var  userChoice=window.confirm("您确认要删除所有商品吗?");
	if(userChoice)
	{
		location.href="ShopingServlet?method=deletAllProducts";
	}
}

</script>
