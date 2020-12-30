<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>个人中心</title>
<meta name="viewport"
	content="width=device-width user-scalable=no initial-scale=1.0 maximum-scale=1.0 minimum-scale=1.0"> 
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/my_space.css">
<link type="text/css" href="${pageContext.request.contextPath }/css/nav.css" rel="stylesheet"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/geRen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/style.css">
<style type="text/css">
.pagination{
	position: relative;
	bottom: 25px;
}
.showMouse{
	cursor: pointer;
}	
</style>
</head>
<body>
<section id="custom" class="example-box blue">
	<div style="text-align:center;clear:both;">
</div>
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
				<div class="tle"style="background-color: #ddd;">
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
				<div class="tle">
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
					<i class=".ff-icon  glyphicon glyphicon-time""></i>
					&nbsp;&nbsp;&nbsp;观看历史</span></a>
				</div>
				<hr style="margin: 6px auto;">
		</div>
		<div id="right-div" style="width: 751px;float: left;background-image: url('../image/personage/1120.jpg'); border:1px solid #ddd;margin-left:-1px;padding: 18px;">
			<h2 align="center">留言板</h2>
			<ul id="pn">
				<c:forEach items="${wordsList}" var="the">
					<li class="list0"><a class="close" href="javascript:;" onclick="deleteWords(${the.id})">X</a>
						<div class="head">
							<img src="${the.headPortrait}" alt="" />
						</div>
						<div class="content">
							<p class="text">
								<span class="name">${the.username}：</span><br>&nbsp;&nbsp;&nbsp;&nbsp;
								${the.words}
							</p>
							<div class="good">
								<span class="date">${the.time}</span>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		<center>
			<ul class="pagination">
				<c:forEach items="${wordsArrays}" varStatus="count">
					<li class="showMouse"><span onclick="getPage(${count.getCount()})">${count.getCount()}</span></li>
				</c:forEach>
			</ul>
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
function deleteWords(id){
	var url = "../personal/delete_words.do";
	$.ajax({
		"url" : url,
		"data" : "id="+id,
		"type" : "post",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200){
				alert("删除成功!");	
				getWords();
			}
		}
	});
}

function getWords(){
	var url = "../personal/update_space_data.do";
	$.ajax({
		"url" : url,
		"type" : "GET",
		"dataType" : "json",
		"success" : function(json){
			if(json.state == 200){
				$("#pn").empty();
				var list = json.data;
				console.log(list);
				for (var i = 0; i < list.length; i++) {
					var html = '<li class="list0"><a class="close" href="javascript:;" onclick="deleteWords(%{id})">X</a>'
						+ '<div class="head">'
						+ '<img src="%{headPortrait}" alt="" />'
						+ '</div>'
						+ '<div class="content">'
						+ '<p class="text">'
						+ '<span class="name">%{username}：</span><br>&nbsp;&nbsp;&nbsp;&nbsp;'
						+ '%{words}'
						+ '</p>'
						+ '<div class="good">'
						+ '<span class="date">%{time}</span>'
						+ '</div>'
						+ '</div>'
						+ '</li>';
					html = html.replace("%{id}", list[i].id);
					html = html.replace("%{headPortrait}", list[i].headPortrait);
					html = html.replace("%{username}", list[i].username);
					html = html.replace("%{words}", list[i].words);
					html = html.replace("%{time}", list[i].time);
					$("#pn").append(html);
				}
			}
		}
	});
};
</script>
 <script type="text/javascript"> 
 // 加载头像
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
					alert("更新失败!")
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