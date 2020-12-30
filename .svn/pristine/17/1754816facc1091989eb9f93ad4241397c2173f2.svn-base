<%@page import="java.util.Date"%>
<%@page import="com.alipay.api.domain.Data"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- 格式化标签 --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>分享区</title>
<!-- 以下3个为bootstrap的css和js -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<!-- 帮主写的2个css -->
<link href="${pageContext.request.contextPath}/css/nav.css"
	type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/lrtk.css"
	rel="stylesheet" type="text/css" />

<!-- 自己写的css文件 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">


<!-- 自己写的css文件 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">
<style type="text/css">
	.sharebookdiv{
		width:1200px;
		height: 335px;
		border: #333 solid 1px;
		margin: 20px auto;
	}
	h2{
		margin: 20px;
	}
	.divimg{
		width: 320px;
		height: 200px;
		margin-left: 20px;
	}
	.sharebookdiv>p{
		margin: 20px;
	}
</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<!-- 用户上传的一本短篇集 -->
	<center>
		<a class="h3" href="showUpload.do">我也要分享漫画</a>
	</center>
	<c:forEach items="${userBooks}" var="userBook">
		<div class="sharebookdiv">
			<h2><a href="read.do?bookname=${userBook.bookname}">${userBook.bookname}</a></h2>
			<a href="read.do?bookname=${userBook.bookname}">
			<img class="divimg" alt="找不到了" src="${userBook.image1url}">
			<img class="divimg" alt="找不到了" src="${userBook.image2url}">
			<img class="divimg" alt="找不到了" src="${userBook.image3url}">
			</a>
			<p>上传人：
			<c:set var="uid" value="u${userBook.uid}"/>
			${map[uid]}&nbsp;&nbsp;&nbsp;&nbsp;上传时间：<fmt:formatDate value="${userBook.createTime}" pattern="yyyy-MM-dd" /></p>
		</div>
	</c:forEach>
	
	<center>
		<%
		Integer pages=(Integer)request.getAttribute("pages");
		for(int i=0;i<pages;i++){
		%>
			<%-- <a class="btn btn-info" href="area.do?place=${param.place}&page=<%=i+1 %>"><%=i+1 %></a> --%>
			<input type="button" class="btn btn-info" value="<%=i+1 %>" onclick="gopage()">
		<%
		}
		 %>
	</center>
	<!-- 用户上传的一本短篇集,循环原型 -->
	<!-- <div class="sharebookdiv">
		<h2><a href="ww">寄生人类</a></h2>
		<a href="ww">
		<img class="divimg" alt="" src="">
		<img class="divimg" alt="" src="">
		<img class="divimg" alt="" src="">
		</a>
		<p>上传人：小呆&nbsp;&nbsp;&nbsp;&nbsp;上传时间：2018-11-15</p>
	</div> -->
</body>
<script type="text/javascript">
	onload=function(){
		$("li:contains('分享区')").attr("class","active");
		$("[value='${param.page}']").attr("class","btn");
		$("[value='${param.page}']").attr({"disabled":"disabled"})
		if(${param.page==null}){
				$("[value='1']").attr("class","btn");
				$("[value='1']").attr({"disabled":"disabled"})
		}
	}
	function gopage(){
			location="share.do?page="+event.target.value;
	}
</script>
</html>