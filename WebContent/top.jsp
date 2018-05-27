<%@page import="com.java.model.bean.User"%>
<%@page import="com.java.model.bean.Wine"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.java.model.dao.WineDaoImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--抬头开始-->

<div class="top">
<div class="top1">
 <% if(session.getAttribute("loginedUser")!=null)
	{
	
	out.write("美酒佳酿网欢迎您："+((User)session.getAttribute("loginedUser")).getUser_name());
	 %> 
	<label  name ="userid" >${sessionScope.loginedUser.user_id }</label>
	<%-- <img src="${sessionScope.loginedUser.image }" width="20" height="20"/> --%>
	<label style="float: right;"><a href="UserServlet?method=logoff">退出登录</a></label>
	 <% 
	} 
	else{%>	
<span class="dl">您好，欢迎光临本亲生活网！
<a href="denglu.jsp"> [请登录]</a>  
<a href="zhuce.jsp">[免费注册]</a>
<a href="ShopingServlet?method=listAllProducts">我的订单</a>
</span>
<%} %> 
<div class="top1_main" style="position: relative;top: -30px">
	<span class="yh_zx"><a href="hyzx.jsp">用户中心</a>  |  
	<a href="ShopingServlet?method=listAllProducts">我的订单</a>  |  <a href="#">帮助中心</a>  |  <a href="#">联系方式</a></span>
	</div>
</div>


<div class="top_logo">

<div class="logo"><a href="#"><img src="images/logo.jpg" width="338" height="113" / alt="本亲生活的logo标志"></a></div>
<div class="top_you">

<div class="ss_1">
<form action="WineServlet" id="boxpanel" class="form-panel" >
	<input type="hidden"   name="method"  value="searchByPage"/>
	<input type="hidden"   name="page"  value="1"/>
	<input type="hidden"   name="count"  value="6"/>
	<input name="kind" type="text" id="key" value="请输入您要搜索的产品" size="30"      
         onclick="if(value==defaultValue){value='';this.style.color='#898b8c'}"    
         onBlur="if(!value){value=defaultValue;this.style.color='#999'}"
         style="color:#999; line-height:26px;" class="ssk1"/>
         <button id="button1" class="button1" type="submit">搜索</button>
         <table id="allpipei" style="width:100px;border:1px solid black;position: absolute ;z-index:3; display: none; width: 267px;top: 80px;">
							
		</table>
 </form>         
          </div>

</div>

</div>

</div>

<!--抬头结束-->


