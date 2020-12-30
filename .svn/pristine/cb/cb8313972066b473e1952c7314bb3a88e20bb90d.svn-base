<%@ page  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>小呆漫画</title>
</head>

<!-- 以下3个为bootstrap的css和js -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- jstl标签 -->
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application"/>
	<script>
        <%--JS gloable varilible--%>
        var contextPath = "${contextPath}";
        var line1_play1_cover="${line1_play1.cover}";
        var line1_play1_href="details/details.do?bookname=${line1_play1.bookname}";
        
        var line1_play2_cover="${line1_play2.cover}";
        var line1_play2_href="details/details.do?bookname=${line1_play2.bookname}";
        
        var line1_play3_cover="${line1_play3.cover}";
        var line1_play3_href="details/details.do?bookname=${line1_play3.bookname}";
        
        var line1_right1_cover="${line1_right1.cover}";
        var line1_right1_href="details/details.do?bookname=${line1_right1.bookname}";
        
        var line1_right2_cover="${line1_right2.cover}";
        var line1_right2_href="details/details.do?bookname=${line1_right2.bookname}";
        
        var line1_right3_cover="${line1_right3.cover}";
        var line1_right3_href="details/details.do?bookname=${line1_right3.bookname}";
        
        var line1_right4_cover="${line1_right4.cover}";
        var line1_right4_href="details/details.do?bookname=${line1_right4.bookname}";
        
        var line1_right5_cover="${line1_right5.cover}";
        var line1_right5_href="details/details.do?bookname=${line1_right5.bookname}";
        
        var line1_right6_cover="${line1_right6.cover}";
        var line1_right6_href="details/details.do?bookname=${line1_right6.bookname}";
        
        var user="${sessionScope.user}";
    </script>
<!-- 帮主写的2个css -->
<link href="${pageContext.request.contextPath}/css/nav.css"  type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/lrtk.css" rel="stylesheet" type="text/css" />

<!-- 自己写的js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js">
	
</script>

<!-- 自己写的css文件 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">

<body>
	<%@include file="header.jsp" %>

	<article>
		<div class="line">
			<!--第一行 -->
			<div class="lineon float bigimg carousel-inner " id="firstLineLeft">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" class="active" id="line1li0"
						onclick="seto(99)"></li>
					<li data-target="#myCarousel" id="line1li1" onclick="seto(100)"></li>
					<li data-target="#myCarousel" id="line1li2" onclick="seto(101)"></li>
				</ol>
				<div class="absolute bigimg" id="firstLineLeftab0"></div>
				<div class="absolute bigimg" id="firstLineLeftab1"></div>
				<div class="absolute bigimg" id="firstLineLeftab2"></div>
				<a class="left carousel-control" role="button" data-slide="prev"
					onclick="pri()"> <span class="glyphicon glyphicon-chevron-left"
					aria-hidden="true"></span> <span class="sr-only">Previous</span> <!-- 轮播（Carousel）导航 -->
				</a> <a class="right carousel-control" role="button" data-slide="next"
					onclick="next()"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- 响应式 缩小 -->
			<div class="lineon float col-lg-7 col-md-5 col-sm-3 col-xs-0"
				id="firstLineRight"></div>
		</div>
		<div class="line" id="line2">
			<!-- 第二行 -->
			<div class="line2 float col-lg-4 col-md-6 col-sm-6 col-xs-12"
				id="line21">
				<ul class="list-group">
					<li class="list-group-item font-lg">国漫排行榜</li>
					<c:forEach items="${line2books1}" var="book">
						<li class="list-group-item"><a href="details/details.do?bookname=${book.bookname}">${book.bookname}</a> <span
						class="font-red" style="float: right;"> ${book.redTicket} ↑ </span></li>
					</c:forEach>
				</ul>
			</div>
			<div class="line2 float float col-lg-4 col-md-6 col-sm-6 col-xs-12"
				id="line21">
				<ul class="list-group">
					<li class="list-group-item font-lg">日漫排行榜</li>
					<c:forEach items="${line2books2}" var="book">
						<li class="list-group-item"><a href="details/details.do?bookname=${book.bookname}">${book.bookname}</a> <span
						class="font-red" style="float: right;"> ${book.redTicket} ↑ </span></li>
					</c:forEach>
				</ul>
			</div>
			<div class="line2 float float col-lg-4 col-md-6 col-sm-6 col-xs-12"
				id="line21">
				<ul class="list-group">
					<li class="list-group-item font-lg">综合排行榜</li>
					<c:forEach items="${line2books3}" var="book">
						<li class="list-group-item"><a href="details/details.do?bookname=${book.bookname}">${book.bookname}</a> <span
						class="font-red" style="float: right;"> ${book.redTicket} ↑ </span></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="line" id="line3">
			<!-- 第三行 -->
			<div class="line3div float col-lg-2 col-md-3 col-sm-5 col-xs-12">
				<a href="details/details.do?bookname=${line3_1.bookname}"><img class="line3img "
					src="${line3_1.cover}"></a>
			</div>
			<div
				class="line3div float float col-lg-2 col-md-3 col-sm-5 col-xs-12">
				<a href="details/details.do?bookname=${line3_2.bookname}"><img class="line3img"
					src="${line3_2.cover}"></a>
			</div>
			<div
				class="line3div float float col-lg-2 col-md-3 col-sm-5 col-xs-12">
				<a href="details/details.do?bookname=${line3_3.bookname}"><img class="line3img"
					src="${line3_3.cover}"></a>
			</div>
			<div
				class="line3div float float col-lg-2 col-md-3 col-sm-5 col-xs-12">
				<a href="details/details.do?bookname=${line3_4.bookname}"><img class="line3img"
					src="${line3_4.cover}"></a>
			</div>
			<div
				class="line3div float float col-lg-2 col-md-3 col-sm-5 col-xs-12">
				<a href="details/details.do?bookname=${line3_5.bookname}"><img class="line3img"
					src="${line3_5.cover}"></a>
			</div>
		</div>
	</article>
	<!-- 注册窗口 -->
	<div id="reg" class="modal fade" tabindex="-1">
		<div class="modal-dialog" >
			<div class="modal-content">
				<div class="modal-body" id="modal-body2">
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-title">
					<h1 class="text-center col-md-offset-2">欢迎注册</h1>
				</div>
				<div class="modal-body">
					
							
				
					<form class="form-group" method="post" id="doreg">
					<!-- 用户名 -->
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="username" id="username"
										placeholder="请输入您的用户名" class="form-control" type="text" >
								</div>
								<span id="s1"></span>
							</div>
						</div>
						
						<!-- 密码 -->
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input name="password" id="password"
										placeholder="请输入您的密码" class="form-control" type="password">
								</div>
								<span id="s2"></span>
							</div>
						</div>
						
						<!-- 重复密码 -->
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input name="rpassword"
										placeholder="请再次输入您的密码" class="form-control" type="password" >
								</div>
								<span id="s3"></span>
							</div>
							
						</div>
						
						<!-- 邮箱 -->
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input name="email" id="email"
										placeholder="请输入您的邮箱" class="form-control" type="text">
								</div>
								<span id="s4"></span>
							</div>
						</div>
						
						<!-- 手机号 -->
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-phone"></i></span> <input name="phone" id="phone"
										placeholder="请输入您的手机号" class="form-control" type="text">
								</div>
								<span id="s5"></span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<button class="btn btn-primary col-md-12" type="button" id="regbtn">注册</button>
							</div>
						</div>
						<div>
							<a class="col-lg-offset-4" href="" data-toggle="modal" data-dismiss="modal"
							data-target="#login">已有账号？点我登录</a>
						</div>
					</form>
					<div>
				</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 登录窗口 -->
	<div id="login" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" id="modal-body1">
					<button class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-title">
					<h1 class="text-center col-md-offset-2">欢迎登录</h1>
				</div>
				<div class="modal-body">
					<form class="form-group" id="dologin" method="post">
						
						
						<!-- 用户名 -->
						<div class="form-group">
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input name="username"
										placeholder="请输入您的用户名" class="form-control" type="text" >
										
								</div>
								<span style="color: red" id="s6"></span>
							</div>
						</div>
						
						<!-- 密码 -->
						<div class="form-group">
							
							<div class="col-md-12 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input name="password"
										placeholder="请输入您的密码" class="form-control" type="password">
										
								</div>
								<span style="color: red" id="s7"></span>
							</div>
						</div>
						

						
						
						
						<div class="form-group">
						<div class="col-md-12 inputGroupContainer">
							<button class="btn btn-primary col-md-12" type="button" id="loginbtn">登录</button>
						</div>
						</div>
						<div><a class="col-lg-offset-4" href="" data-toggle="modal" data-dismiss="modal"
							data-target="#reg">还没有账号？点我注册</a></div>
						
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12"
			id="footer-div">
			<p>
				<a href="#">联系我们</a>&nbsp; | &nbsp;<a href="#">免责声明</a>&nbsp; |
				&nbsp;<a href="#">隐私政策</a>&nbsp; | &nbsp;<a href="#">网站地图</a>&nbsp;
				| &nbsp;<a href="#">版权保护投诉声明</a>&nbsp; | &nbsp;<a href="#">动漫作品上传须知</a>&nbsp;
				| &nbsp;<a href="#">未成年人家长监护</a>
			</p>
			<p>本站漫画等相关内容均来自网友分享和上传,以供漫画爱好者研究漫画画法技巧和构图方式,若侵犯到您的权益,请立即联系我们删除.本站不负任何相关责任.
			</p>
			<p>
				<a>闽网文[2019]1293-042号</a> | &nbsp;<a href="#">新出网证字23号</a> | &nbsp;<a
					href="#">ICP证B2-20000099-21</a> 如果有意见和建议,请点击至 <a href="#">反馈报错箱</a>
				或 请惠赐E-mail至 <a href="#">45699dmw@4199inkc.com</a>
			</p>
			<p>
				<a href="#">Copyright © 2004-2018 4399dmw.com</a> AII Rights
				Reserved.某网络股份有限公司 版权所有
			</p>
		</div>
	</footer>
	
	<!-- 代码 开始 -->
<div class="yb_conct">
  <div class="yb_bar">
    <ul>
      <li class="yb_top">返回顶部</li>
      <li class="yb_phone">400-123-456</li>
      <li class="yb_QQ">
      	<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=582637509&amp;site=qq&amp;menu=yes&amp;from=message&amp;isappinstalled=0" title="即刻发送您的需求">在线咨询</a>
      </li>
      <li class="yb_ercode" style="height:53px;">微信二维码 <br>
        <img class="hd_qr" src="${pageContext.request.contextPath}/image/nav/weixin.jpg" width="125" alt="关注你附近"> </li>
    </ul>
  </div>
</div>
</body>
<script type="text/javascript">
$("li:contains('首页')").attr("class","active");
</script>
</html>