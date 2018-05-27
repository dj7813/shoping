<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="footer_ys">
<div class="footer_ys1"></div>
</div>



<!--软文开始-->

<div class="ruanwen">

<ul>
<li class="da">关于本亲</li>
<li><a href="#">公司简介</a></li>
<li><a href="#">联系我们</a></li>
<li><a href="#">友情连接</a></li>
</ul>



<ul>
<li class="da">新手指南</li>
<li><a href="#">账户注册</a></li>
<li><a href="#">购物流程</a></li>
<li><a href="#">注册须知</a></li>
</ul>



<ul>
<li class="da">配送范围及须知</li>
<li><a href="#">配送范围</a></li>
<li><a href="#">配送须知</a></li>
<li><a href="#">配送时间</a></li>
</ul>



<ul>
<li class="da">支付方式</li>
<li><a href="#">货到付款</a></li>
<li><a href="#">在线支付</a></li>
<li><a href="#">其他方式支付</a></li>
</ul>


<ul>
<li class="da">售后服务</li>
<li><a href="#">退换货政策</a></li>
<li><a href="#">退换货办理流程</a></li>
<li><a href="#">退款说明</a></li>
</ul>


<ul>
<li class="da">帮助说明</li>
<li><a href="#">找回密码</a></li>
<li><a href="#">帮助中心</a></li>
<li><a href="#">隐私声明</a></li>
</ul>



</div>


<!--软文结束-->


<!--友情连接开始-->


<div class="links">
<div class="links_main">友情连接：&nbsp;<a href="#">郑州卓普科技</a> &nbsp; | &nbsp; 本亲生活网  &nbsp;|  &nbsp;郑州卓普科技 &nbsp; | &nbsp; 本亲生活网 &nbsp; | &nbsp; 郑州卓普科技 &nbsp; | &nbsp; 本亲生活网 &nbsp; | &nbsp; 郑州卓普科技 &nbsp; |  &nbsp;本亲生活网 &nbsp; |  &nbsp;郑州卓普科技 &nbsp; | &nbsp; 本亲生活网&nbsp;  |&nbsp;  郑州卓普科技  </div>
</div>


<div class="banquan">Copyright © 2014-2019 All Right Reserved 版权所有：本亲生活网 备案号： 豫ICP 450051256-1号<br />

公司地址：湖北省襄阳市湖北文理学院    联系人：XXX     联系电话：13692548036 

<div class="banquan2"><img src="images/xinr.jpg" width="589" height="51" /></div>

</div>
<!--友情链接结束-->
<script src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.galleriffic.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	//这里是实现ajax动态模糊搜索匹配问题
		$("#key").keyup(function(){
			$.post("WineServlet",
					{
					"key":$(this).val(),
					"method":"mohuSearch"
					},
					function(data,status){
					var allpipei=data.getElementsByTagName("key");
					if(allpipei.length>0){
						$("#allpipei").css("display","block");
						 for (var i=0;i<document.getElementById("allpipei").rows.length;i++)
					     {
						  document.getElementById("allpipei").deleteRow(i);
					     }
					//清空表格之前的所有行
					for(var  n=0;n<allpipei.length;n++)
					{
						var  tr=document.getElementById("allpipei").insertRow();
						var  td=tr.insertCell();
						td.innerHTML=allpipei[n].childNodes[0].nodeValue;
						td.style.textAlign="left";
						td.style.width="267px";
						td.style.cursor="pointer";
						td.onclick=function(){
							$("#key").val(this.innerHTML);
							$("#allpipei").css("display","none");
							$("#button1").click();
						}
						tr.onmouseover=function(){
							this.style.backgroundColor='orange';
						}
						tr.onmouseout=function(){
							this.style.backgroundColor='';
						}
					}
					}
						
					
			});
		});
	});
</script>
    