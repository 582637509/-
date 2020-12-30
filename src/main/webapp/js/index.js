var rcheck1=false;
var rcheck2=false;
var rcheck3=false;
var rcheck4=false;
var rcheck5=false;
$(window).scroll(function() {
	var x = $(this).scrollTop();
	if (x < 220) {
		$("#nav_div").attr("class", "navbar navbar-inverse navbar-fixed-top hidden-lg hidden-md");
		//alert(s);
	} else {
		var s =$("#nav_div").attr("class","navbar navbar-inverse navbar-fixed-top");
	}
})
var time2;
onblur = function() {
	clearInterval(time2);
}
onfocus = function() {
	clearInterval(time2);
	time2 = setInterval(function() {
		next()
	}, 5000);
}
function paly(){
	if(o%3==0){
		$(".hhnn").attr("title","第一张轮播图");
		$(".hhnn").attr("href",line1_play3_href);
	}else if(o%3==1){
		$(".hhnn").attr("title","仙侠世界");
		$(".hhnn").attr("href",line1_play2_href);
	}else if(o%3==2){
		$(".hhnn").attr("title","庖厨天下");
		$(".hhnn").attr("href",line1_play1_href);
	}
}
function next() { //轮播,执行一次换下一张图 
	imgdiappear((o+2) % 3);
	imgdiappear(o % 3);
	imgshow((o + 1) % 3)
	o++;
	$("#line1li"+o%3).attr("class","active");
	$("#line1li"+(o+1)%3).attr("class","");
	$("#line1li"+(o+2)%3).attr("class","");
	paly();
}
function pri(){//轮播，执行一次换上一张图
	imgdiappear((o-2) % 3);
	imgdiappear(o % 3);
	imgshow((o-1) % 3)
	o--;
	$("#line1li"+o%3).attr("class","active");
	$("#line1li"+(o+1)%3).attr("class","");
	$("#line1li"+(o+2)%3).attr("class","");
	$(".hhnn").attr("title",o);
	paly();
}
function seto(o){//点小圈是切换轮播图
	this.o=o;
	imgdiappear((o+1) % 3)
	imgdiappear((o+2) % 3)
	imgshow(o % 3);
	$("#line1li"+o%3).attr("class","active");
	$("#line1li"+(o+1)%3).attr("class","");
	$("#line1li"+(o+2)%3).attr("class","");
	paly();
}
$(function() { //页面加载完成事件
	addFristBigImg(line1_play1_cover); //放轮播图
	addFristBigImg(line1_play2_cover); //放轮播图
	addFristBigImg(line1_play3_cover); //放轮播图
	addFirstSmallImg(); //放第一行的小图片
	clearInterval(time2);
	time2 = setInterval(function() {
		next()
	}, 5000);
	firstLineLeft.onmouseover=function(){//鼠标移入停止轮播
		clearInterval(time2);
	}
	firstLineLeft.onmouseout=function(){//鼠标移出开始轮播
		clearInterval(time2);
		time2 = setInterval(function() {
			next()
		}, 5000);
	}
	$("#regbtn").click(function(){//点击注册时发生的事件
		if(rcheck1==true&&rcheck2==true&&rcheck3==true&&rcheck4==true&&rcheck5==true){
			$.ajax({
				"url":"handle_reg.do",
				"data":$("#doreg").serialize(),
				"type":"post",
				"dataType":"json",
				"success":function(json){
					if(json.state==200){
						location.href="index.do"
					}else{
						alert(json.message);
					}
				},
				"error":function(){
					console.log("错误！")
				}
			});
		}
	});
	$("#loginbtn").click(function(){//点击登录时发生的事件
			$.ajax({
				"url":"handle_login.do",
				"data":$("#dologin").serialize(),
				"type":"post",
				"dataType":"json",
				"success":function(json){
					if(json.state==200){
						location.href="index.do";
					}else if(json.state==403){//用户名不存在
						$("#s6").text(json.message);
					}else if(json.state==402){//密码不匹配
						$("#s7").text(json.message);
					}
				},
				"error":function(){
					console.log("错误！")
				}
			});
	});
});
var o =99;
function imgdiappear(k) { //使图片上拉消失
	var i = 0;
	var imgdiappear = setInterval(function() {
		var name1 = "#bigimgparti" + i + "k" + (2 - k % 3);
		$(name1).slideUp(600);
		i++;
		if (i > 16) {
			clearInterval(imgdiappear);
		}
	}, 50);
}
function imgshow(k) { //使图片下拉显示
	var i = 0;
	var imgdiappear = setInterval(function() {
		var name1 = "#bigimgparti" + i + "k" + (2 - k % 3);
		$(name1).slideDown(600);
		i++;
		if (i > 16) {
			clearInterval(imgdiappear);
		}
	}, 50);
}
var k = 0;
function addFristBigImg(src) { //放置轮播图
	var smallDiv = $("<div>");
	var a = $("<a class='hhnn'href=line1_play1_href title='皇后娘娘'>");
	a.attr("href",line1_play3_href);
	$("#firstLineLeftab" + k).append(a);
	for (var i = 0; i < 16; i++) {
		var smallDiv = $("<div>");
		smallDiv.attr("class", "left bigimgpart float");
		smallDiv.attr("id", "smallDivi" + i + "k" + k);
		a.append(smallDiv);
	}
	var j = 0;
	for (var i = 0; i < 16; i++) {
		var smallImg1 = $("<img>");
		smallImg1.attr("class", "left bigimg1 float");
		smallImg1.attr("id", "bigimgparti" + i + "k" + k);
		smallImg1.css("left", i % 4 * (-125) + "px");
		smallImg1.css("top", -100 * j + "px");
		smallImg1.attr("src", src);
		$("#smallDivi" + i + "k" + k).append(smallImg1);
		if (i % 4 == 3 && i != 0) {
			j++;
		}
	}
	k++;
}
function addFirstSmallImg() { //放置第一行的小图片
	var smallImg1 = $("<img>");
	var a= $("<a href='#'>");
	a.attr("href",line1_right1_href);
	smallImg1.attr("class", "left smallimg float hidden-xs");
	smallImg1.attr("src", line1_right1_cover);
	smallImg1.attr("title", "点击进入诸天记");
	a.append(smallImg1);
	$("#firstLineRight").append(a);

	var smallImg1 = $("<img>");
	var a= $("<a href='#'>");
	a.attr("href",line1_right2_href);
	smallImg1.attr("class", "left smallimg float hidden-xs hidden-sm");
	smallImg1.attr("src", line1_right2_cover);
	smallImg1.attr("title", "点击进入地府是我开");
	a.append(smallImg1);
	$("#firstLineRight").append(a);

	var smallImg1 = $("<img>");
	var a= $("<a href='#'>");
	a.attr("href",line1_right3_href);
	smallImg1.attr("class", "left smallimg float hidden-xs hidden-sm hidden-md");
	smallImg1.attr("src", line1_right3_cover);
	smallImg1.attr("title", "点击进入御灵师");
	a.append(smallImg1);
	$("#firstLineRight").append(a);

	var smallImg1 = $("<img>");
	var a= $("<a href='#'>");
	a.attr("href",line1_right4_href);
	smallImg1.attr("class", "left smallimg float hidden-xs");
	smallImg1.attr("src", line1_right4_cover);
	smallImg1.attr("title", "点击进入我的微信连三界");
	a.append(smallImg1);
	$("#firstLineRight").append(a);

	var smallImg1 = $("<img>");
	var a= $("<a href='#'>");
	a.attr("href",line1_right5_href);
	smallImg1.attr("class", "left smallimg float hidden-xs hidden-sm");
	smallImg1.attr("src", line1_right5_cover);
	smallImg1.attr("title", "点击进入穆甄");
	a.append(smallImg1);
	$("#firstLineRight").append(a);

	var smallImg1 = $("<img>");
	var a= $("<a href='#'>");
	a.attr("href",line1_right6_href);
	smallImg1.attr("class", "left smallimg float hidden-xs hidden-sm hidden-md");
	smallImg1.attr("src", line1_right6_cover);
	smallImg1.attr("title", "点击进入诸天记");
	a.append(smallImg1);
	$("#firstLineRight").append(a);
	
	$("#reg :input").blur(function(){
		var str=$(event.target).attr("name");
		var ret=/^$/;
		
		if(str=="username"){
            ret = /^[a-zA-Z0-9_-]{4,16}$/;
            if(ret.test(event.target.value)){
            	var data="username="+$("#username").val();
            	$.ajax({
    				"url":"check_username.do",
    				"data":data,
    				"type":"post",
    				"dataType":"json",
    				"success":function(json){
    					if(json.state==200){
    						$("#s1").text("恭喜，该用户名可用");
    		            	$("#s1").attr("class","green");
    		            	rcheck1=true;
    					}else{
    						$("#s1").text(json.message);
    		    			$("#s1").attr("class","red");
    		    			rcheck1=false;
    					}
    				},
    				"befroeSend":function(){
    					$("#s1").text("查询中。。。");
    				},
    				"error":function(){
    					console.log("错误！")
    				}
    			});
    		}else{
    			$("#s1").text("请输入用户名正确的格式(4-16位的数字字母下划线)");
    			$("#s1").attr("class","red");
    			rcheck1=false;
    		} 
		}else if(str=="password"){
			ret = /^[a-zA-Z0-9_]{6,20}$/;
			 if(ret.test(event.target.value)){
	            	$("#s2").text("");
	            	rcheck2=true;
	    		}else{
	    			$("#s2").text("请输入正确的密码格式(6-20字母数字下划线)");
	    			$("#s2").attr("class","red");
	    			rcheck2=false;
	    		} 
		}else if(str=="rpassword"){
			ret = /^[a-zA-Z0-9_]{6,20}$/;
			if(event.target.value==$("#password").val()){
				$("#s3").text("");
				rcheck3=true;
	    	}else{
	    		$("#s3").text("2次输入的密码不一致");
	    		$("#s3").attr("class","red");
	    		ret=/^$/;
	    		rcheck3=false;
	    	} 
		}else if(str=="email"){
			ret = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
			if(ret.test(event.target.value)){
            	$("#s4").text("");
            	rcheck4=true;
    		}else{
    			$("#s4").text("请输入邮箱正确的格式");
    			$("#s4").attr("class","red");
    			rcheck4=false;
    		}
		}else if(str=="phone"){
			ret = /^[\d]{5,20}$/;
			if(ret.test(event.target.value)){
            	$("#s5").text("");
            	rcheck5=true;
    		}else{
    			$("#s5").text("请输入手机号正确的格式");
    			$("#s5").attr("class","red");
    			rcheck5=false;
    		}
		}
		if(ret.test(event.target.value)){
			$(event.target).attr("class","input-green form-control");
		}else{
			$(event.target).attr("class","input-red form-control");
		}
	});
};
$(function() {
	// 悬浮窗口
	$(".yb_conct").hover(function() {
		$(".yb_conct").css("right", "5px");
		$(".yb_bar .yb_ercode").css('height', '200px');
	}, function() {
		$(".yb_conct").css("right", "-127px");
		$(".yb_bar .yb_ercode").css('height', '53px');
	});
	// 返回顶部
	$(".yb_top").click(function() {
		$("html,body").animate({
			'scrollTop': '0px'
		}, 300)
	});
});
$(function() {
	// 悬浮窗口
	$(".yb_conct").hover(function() {
		$(".yb_conct").css("right", "5px");
		$(".yb_bar .yb_ercode").css('height', '200px');
	}, function() {
		$(".yb_conct").css("right", "-127px");
		$(".yb_bar .yb_ercode").css('height', '53px');
	});
	// 返回顶部
	$(".yb_top").click(function() {
		$("html,body").animate({
			'scrollTop': '0px'
		}, 300)
	});
});
onload=function(){
	if(user==""){
		var strcookie = document.cookie;//获取cookie字符串
		var arrcookie = strcookie.split("; ");//分割
		//遍历匹配
		for ( var i = 0; i < arrcookie.length; i++) {
			var arr = arrcookie[i].split("=");
			if (arr[0] == "sso"){
				var brr=arr[1].split("#");
				$.ajax({
					"url":"handle_login.do",
					"data":"username="+brr[0]+"&password="+brr[1],
					"type":"post",
					"dataType":"json",
					"success":function(json){
						if(json.state==200){
							location.href="index.do";
						}
					}
				});
			}
		}
		return "";
	}
}
