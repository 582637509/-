<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>开通会员</title>
<meta name="viewport"
	content="width=device-width user-scalable=no initial-scale=1.0 maximum-scale=1.0 minimum-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link type="text/css" href="${pageContext.request.contextPath }/css/nav.css" rel="stylesheet"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/geRen.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/fa/css/style.css">
<style type="text/css">
tr>td{
	width: 175px;
	padding: 10px;
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
				<div class="tle" style="background-color: #ddd;">
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
		<div id="right-div" style="background-image: url('../image/personage/entries.jpg');background-repeat: no-repeat;">
				<div id="outer-div">
					<div class="goods-items">
						<div class="total">
							<em class="money">30</em> <span class="unit">元</span>
							<p class="unit-price">30元/月</p>
						</div>
						<hr class="h-r" style="border: 1px dashed #ddd;" width="65%" />
						<div class="relative-to-total">1个月</div>
					</div>

					<div class="goods-items">
						<div class="total">
							<em class="money">60</em> <span class="unit">元</span>
							<p class="unit-price">30元/月</p>
						</div>
						<hr class="h-r" style="border: 1px dashed #ddd;" width="65%" />
						<div class="relative-to-total">2个月</div>
					</div>

					<div class="goods-items">
						<div class="total">
							<em class="money">120</em> <span class="unit">元</span>
							<p class="unit-price">30元/月</p>
						</div>
						<hr class="h-r" style="border: 1px dashed #ddd;" width="65%" />
						<div class="relative-to-total">4个月</div>
					</div>


					<div class="goods-items">
						<img alt="" src="../image/personage/wenzi.gif" style="float: left;">
						<div class="total">
							<em class="money">10</em> <span class="unit">元</span>
							<p class="unit-price">10元/月</p>
						</div>
						<hr class="h-r" style="border: 1px dashed #ddd;" width="65%" />
						<div class="relative-to-total">1个月</div>
					</div>
				</div>
				<hr />

				<div class="channels">
					<div class="channel" style="border: 0px solid; font-size: 18px;">
						<p class="pay-title" style="margin-bottom: 0px;">支付方式：</p>
					</div>
					<!--repeat629396314842-->
					<div class="channel2">
						<span>微信付款</span> <i class="icon-corner-checked"></i>
					</div>
					<div class="channel2">
						<span>支付宝付款</span> <i class="icon-corner-checked"></i>
					</div>
					<div class="channel">
						<span>暂无更多</span> <i class="icon-corner-checked"></i>
					</div>
				</div>
				<div class="cha">
					<p>
						验证码: <input type="text" size="6" onkeyup="checkCodeMethod(this.value)"/> <span
						 id="chek" style="border: 1px solid #ddd;">${chek}</span>&nbsp;&nbsp;<span id="checkCodeSpan"></span>
					</p>
					<button id="submit" class="btn btn-default" data-toggle="" data-target="#myModal" style="margin: 10px 0 0 20px;">
						  确&nbsp;定&nbsp;开&nbsp;通
					</button>
				</div>
			</div>
			<!-- 隐藏表单域,用于向支付页面提交数据 -->
		<form id="hideForm" name=alipayment action="${pageContext.request.contextPath}/pay/pay.do" method=post
					target="_blank">
					<div id="body1" class="show" name="divcontent">
						<dl class="content">
							<dt>订单名称 ：</dt>
							<dd>
								<input id="WIDsubject" name="WIDsubject" readonly="readonly" value="hcw@JSD1803_SSD"/>
							</dd>
							<hr class="one_line">
							<dt>订单日期 ：</dt>
							<dd>
								<span>2018/11/15</span>
							</dd>
							<hr class="one_line">
							<dt>商户订单号 ：</dt>
							<dd>
								<input id="WIDout_trade_no" name="WIDout_trade_no" readonly="readonly"/>
							</dd>
							<hr class="one_line">
							<dt>付款金额 ：</dt>
							<dd>
								<input id="WIDtotal_amount" name="WIDtotal_amount" readonly="readonly"/>
							</dd>
							<hr class="one_line">
							<dt>商品描述：</dt>
							<dd>
								<input id="WIDbody" name="WIDbody" readonly="readonly" value="Thank you!"/>
							</dd>
							<hr class="one_line">
						</dl>
					</div>
				</form>
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

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel" align="center">支付账单</h4>
      </div>
      <div class="modal-body">
        	<center>
        <table>
        	<tr>
        		<td>订单名称 ：</td>
        		<td>开通会员</td>
        	</tr>
        	<tr>
        		<td>订单日期 ：</td>
        		<td id="date">2018-11-15</td>
        	</tr>
        	<tr>
        		<td>商户订单号 ：</td>
        		<td id="appid">2018-11-15</td>
        	</tr>
        	<tr>
        		<td>付款金额 ：</td>
        		<td><span id="money"></span> 元</td>
        	</tr>
        	<tr>
        		<td>有效期限 ：</td>
        		<td id="valid">看情况</td>
        	</tr>
        	<tr>
        		<td>商品描述 ：</td>
        		<td id="describe">获得进入VIP专区资格</td>
        	</tr>
        </table>
        	</center>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button id="ok" type="button" class="btn btn-primary">提交订单</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</section>

<script type="text/javascript">
var key = false;
function checkCodeMethod(code){
	  var url = "../personal/oio.do";
	  $.ajax({
		  "url" : url,
		  "data" : "code="+code,
		  "type" : "GET",
		  "dataType" : "json",
		  "success" : function(json){
			  if(json.state == 200){
				  var sta = json.data;
				  if (sta) {
                    document.getElementById("checkCodeSpan").innerHTML = "<font style='color: green;'>验证码正确!</font>";
                    $("#submit").attr("data-toggle","modal");
                    key = true;
                }else {
                    document.getElementById("checkCodeSpan").innerHTML = "<font style='color: red;'>验证码错误!</font>";
                    $("#submit").attr("data-toggle","");
                    key = false;
                }
			  }
		  }
	  })
}
var rmb = false;
var zf = false;
$("#hideForm").hide();
$(".goods-items").click(function(){
	// 改变上面div边框颜色
	var div = $(this).siblings();
	div.css("border","1px solid #ddd");
	$(this).css("border","2px solid rgba(0, 0, 255, 0.48)");
	
	// 点击后赋值 
	var obj = $(this).find("em");
	var money = obj.text();
	var date = new Date();
	$("#money").text(money);
	$("#valid").text(money/30 + " 个月");
	$("#date").text(date.toLocaleDateString());
	rmb = true;
});
$(".channel2").click(function(){
	// 改变中间div边框颜色
	$(".channel2").css("border","1px solid #ddd");
	$(this).css("border","2px solid rgba(0, 0, 255, 0.48)");
	zf = true;
});
// 点击确定开通按钮做的事
$("#submit").click(function(){
	// 判断是否选择了金额和支付方式 
	if(rmb && zf){
		if(key){
			var url = "../pay/get_trade_no.do";
			$.ajax({
				"url" : url,
				"type" : "post",
				"dataType" : "json",
				"success" : function(json){
					if(json.state == 200){
						var data = json.data;
						$("#d-date").text($("#date").text());
						$("#appid").text(data.outTradeNo);
						$("#WIDout_trade_no").val(data.outTradeNo);
						$("#WIDsubject").val("开通会员");
						$("#WIDtotal_amount").val($("#money").text());
						$("#WIDbody").val($("#describe").text());
					}
				}
			});
		}else{
			alert("验证码错误!");
			var url = "../personal/update_check.do";
			$.ajax({
				"url" : url,
				"type" : "GET",
				"dataType" : "json",
				"success" : function(json){
					if(json.state == 200){
						$("#chek").text(json.data);
						$("#submit").attr("data-toggle","");
					}
				}
			});
		}
	}else{
		alert("请确定支付金额以及支付方式!");
	}
});

</script>
<script type="text/javascript">
// 提交订单
$("#ok").click(function(){
	$("#hideForm").submit();
});
</script>
<script type="text/javascript">
//加载头像
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