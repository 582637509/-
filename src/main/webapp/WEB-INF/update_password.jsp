<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>账户管理</title>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/nav.css" rel="stylesheet"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/geRen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/update_password.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/style.css">
<style type="text/css">
.form-group{
	width: 300px;
	float: left;
	padding-left: 50px;
}
</style>
</head>
<body>
<section id="custom" class="example-box blue">
<%@ include file="nav_head.jsp"%>
	<!-- 以上是导航栏 	``````````````			-->
	
	<div id="big-div" class="row">
		<div class="vip-tennis-condition"style="padding: 15px;">
			<img id="avatar" src="${pageContext.request.contextPath }/image/nav/login_succuss.png"
					style="width: 90px; height: 90px; border-radius: 50%;float: left;">
			<div style="float: left;margin: 10px auto auto 15px;">
					<p style="margin: 8px auto;"><a>关注量:&nbsp;2392</a>&nbsp;</p>
					<p><a class="ls">签到+5积分</a></p>
			</div>
		</div>
		<div style="float: left;width:751px;height:139px;border:1px solid #ddd;">
			<div class="vt-btn"></div>
			<div class="vt-goldBtn"></div>
		</div>
		<div id="left-div">
				<div class="tle">
				<a class="link ls" href="../personal/my_space.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-leaf"></i>
					&nbsp;&nbsp;&nbsp;我的空间</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/about_me.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-print"></i>
					&nbsp;&nbsp;&nbsp;个人资料</span></a>
				</div>
				<div class="tle" style="background-color: #ddd;">
				<a class="link ls" href="../personal/update_password.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-cog"></i>
					&nbsp;&nbsp;&nbsp;修改密码</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/my_favorite.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-star-empty"></i>
					&nbsp;&nbsp;&nbsp;我的收藏</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="${pageContext.request.contextPath}/share/showUpload.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-book"></i>
					&nbsp;&nbsp;&nbsp;我要投稿</span></a>
				</div>
				<hr style="margin: 6px auto;">
				<div class="tle">
				<a class="link ls" href="../personal/recharge.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-send"></i>
					&nbsp;&nbsp;&nbsp;开通会员</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/gold.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-cd"></i>
					&nbsp;&nbsp;&nbsp;我的金币</span></a>
				</div>
				<div class="tle">
				<a class="link ls" href="../personal/history.do">
					<span class="menu-text">
					<i class=".ff-icon  glyphicon glyphicon-time"></i>
					&nbsp;&nbsp;&nbsp;观看历史</span></a>
				</div>
				<hr style="margin: 6px auto;">
		</div>
		<div id="right-div" style="background-image: url('../image/personage/update_password.jpg');background-repeat: no-repeat;overflow: hidden;height:421px;">
			<center>
				  <form id="form_password" > 
				    <section class="updateForm"> 
				      <header> 
				      </header> 
				      <div class="updateForm_content"> 
				        <fieldset> 
				          <div class="inputWrap"> 
				          	<span id="span1">原密码：</span>
				            <input id="old_password" type="password" name="old_password" placeholder="请输入旧密码" autofocus required> 
				          </div> 
				          <div class="inputWrap"> 
				         	 <span id="span2">新密码：</span>
				            <input id="new_password1" type="password" name="new_password" placeholder="请输入新密码" required> 
				          </div> 
				          <div class="inputWrap"> 
				          	 <span id="span3">新密码：</span>
				            <input id="new_password2"  type="password"  placeholder="请重复新密码" required> 
				          </div> 
				        </fieldset> 
				        <fieldset> 
				          <button id="ok" onmousedown="verify()" type="button" class="btn btn-default">确&nbsp;定</button>
				        </fieldset> 
				      </div> 
				    </section> 
				  </form> 
				  </center>
		</div>
</div>
<!-- 外层最大容器 -->
    <div class="wrap-p">
        <!--包裹所有元素的容器-->
        <div class="cube">
            <!--小正方体 -->
            <span class="in_front">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_back">
                 <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_left">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_right">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_top">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
            <span class="in_bottom">
                <img src="../image/personage/烧烧果实.png" class="in_pic" />
            </span>
        </div>
    </div>
</section>
<script type="text/javascript">
var key = 0;
function verify(){
	// 文本框失去焦点判断新密码和重复输入的密码是否匹配
	var pwd1 = $("#new_password1").val();
	var pwd2 = $("#new_password2").val();
	if(!(pwd1 == pwd2)){
		alert("重复密码错误!");
	}else{
		key = 1;
	}
}

$("#ok").click(function(){
	var url = "../personal/handle_update_password.do";
	var data = $("#form_password").serialize();
	$.ajax({
		"url" : url,
		"data" : data,
		"type" : "post",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200 && key == 1){
				alert("修改成功!");
				$("#old_password").val("");
				$("#new_password1").val("");
				$("#new_password2").val("");
				key = 0;
			}else if(json.state == 407){
				alert("修改失败: " + json.message);
			}else{
				alert("修改失败!");
			}
		}
	});
});
function update(){
	var url = "../personal/show_about_data.do";
	$.ajax({
		"url" : url,
		"type" : "post",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200){
				var user = json.data;
				if(user.avadar != null){
					$("#avatar").attr("src",user.avadar);
				}
				if(user.member != null){
					$(".vt-goldBtn").css("background-image","url('../image/personage/vip-A.jpg')");
					$(".in_pic").attr("src","../image/personage/timg.jpg");
				}
			}else{
				alert("更新失败!");
			}
		}
	});
}
update();
</script>
<script src="../mouse/js/jquery-1.11.0.min.js"></script>
<script src="../mouse/js/bootstrap-3.3.4.js"></script>
<script src="../mouse/js/highlight.min.js"></script>
<script type="text/javascript" src="../mouse/js/jquery-stars.js"></script>
<script type="text/javascript" src="../mouse/js/smothscrool.js"></script>
<script type="text/javascript" src="../mouse/js/jquery.main.js"></script>
</body>
</html>