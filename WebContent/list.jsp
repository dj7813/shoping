<%@page import="com.java.model.dao.WineDaoImp"%>
<%@page import="com.java.model.bean.Wine"%>
<%@page import="com.java.model.bean.PageBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
<!-- 根据条件查找显示-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>本亲生活网</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
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
<c:import url="top.jsp"></c:import>
<!--抬头结束-->
<!--导航开始-->
<c:import url="daohang.jsp"></c:import>
<!--导航结束-->
<!--banner开始-->
<div class="mainbanner">
	<div class="mainbanner_window">
		<ul id="slideContainer">
			<li><a href="#"><img src="image/1.jpg" width="1920" height="500"  /></a></li>
			<li><a href="#"><img src="image/2.jpg" width="1920" height="500"  /></a></li>
			<li><a href="#"><img src="image/3.jpg" width="1920" height="500"  /></a></li>
			<li><a href="#"><img src="image/4.jpg" width="1920" height="500" /></a></li>
		</ul>
	</div>
	<ul class="mainbanner_list">
		<li><a href="javascript:void(0);">1</a></li>
		<li><a href="javascript:void(0);">2</a></li>
		<li><a href="javascript:void(0);">3</a></li>
		<li><a href="javascript:void(0);">4</a></li>
	</ul>
</div>

<!--banner结束-->

<!--中部开始-->

<div class="con_ny">

<div class="con_dqwz">您的当前位置：<a href="index.jsp">首页</a> >> 特色产品</div>
<c:forEach var="w" items="${searchwines }">
<div class="tplist1" style="margin-left:0px;">
<div class="tplist1_1"><a href="WineServlet?method=detail&wine_id=${w.wine_id }"target="_blank">
<img src="${w.picture }" width="296" height="185" /></a></div>
<div class="tplist_yy"></div>
<div class="tplist_mc">${w.kind }&nbsp;&nbsp;${w.wine_name }</div>
<div class="tplist_mcjg"><span class="tejia">特卖价￥${w.price }</span></div>
</div>
</c:forEach>
</div>
<center>
<div class="fy">

<a  href="WineServlet?method=searchByPage&page=1&count=6&kind=${condition.kind }&maxPrice=${condition.maxPrice }&minPrice=${condition.minPrice }"  class="pages">首页</a>

<a  href="WineServlet?method=searchByPage&page=${page.previousPage}&count=6&kind=${condition.kind }&maxPrice=${condition.maxPrice }&minPrice=${condition.minPrice } "  class="pages"> 上一页</a>
<a  href="WineServlet?method=searchByPage&page=${page.nextPage}&count=6&kind=${condition.kind }&maxPrice=${condition.maxPrice }&minPrice=${condition.minPrice } "  class="pages"> 下一页</a>
<a  href="WineServlet?method=searchByPage&page=${page.allPages}&count=6&kind=${condition.kind }&maxPrice=${condition.maxPrice }&minPrice=${condition.minPrice } "  class="pages"> 尾页</a>
	当前第${requestScope.page.nowPage}页/
	总共${requestScope.page.allPages}页，
	每页${requestScope.page.everPageCount}条
	总共${requestScope.page.allCount}条
	
</div>

</div>
</center>
 



<!--中部结束-->

<!--底部开始-->

<c:import url="bottom.jsp"></c:import>
<!--底部结束-->
</body>
</html>
