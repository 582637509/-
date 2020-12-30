<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
	#foot{
		margin: 10px auto;
	}
	img{
		width:80%;
	}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>${param.chapter}</title>
</head>
<body>
<h1 align="center">${param.bookname}:${param.chapter}</h1>
<div align="center">
	<c:forEach items="${images}" var="image">
		<img alt="图片找不到了" src="${image}">
	</c:forEach>
</div>
<div id="foot" align="center">
	<input type="button" class="btn btn-info" value="上一章" onclick="pre()">
	<input type="button" class="btn btn-info"value="下一章" onclick="next()">
	<a href="${pageContext.request.contextPath}/index.do"><input type="button" class="btn btn-info"value="回到主页"></a>
</div>
</body>
<script type="text/javascript">
	function pre(){
		$.ajax({
			"url" : "pre.do",
			"data" : "bookname=${param.bookname}&chapter=${param.chapter}",
			"type" : "get",
			"dataType" : "json",
			"success" : function(json){
				if(json.state == 200){
					location.href=json.data;
				}else{
					alert(json.message);
				}
			},
			"error":function(){
				alert("未知错误！")
			}
		});
	}
	function next(){
		$.ajax({
			"url" : "next.do",
			"data" : "bookname=${param.bookname}&chapter=${param.chapter}",
			"type" : "get",
			"dataType" : "json",
			"success" : function(json){
				if(json.state == 200){
					location.href=json.data;
				}else{
					alert(json.message);
				}
			},
			"error":function(){
				alert("未知错误！")
			}
		});
	}
</script>
</html>