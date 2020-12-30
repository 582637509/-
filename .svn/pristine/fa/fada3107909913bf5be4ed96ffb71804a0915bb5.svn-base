<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>国产漫画</title>
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
	.img{
		width: 150px;
		height: 200px;
		float: left;
	}
	.book{
		border: #333 solid 1px; 
		float: left;
		margin: 30px;
		width: 370px;
		overflow: hidden;
		height: 200px;
	}
	.last{
		float: left;
	}
</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<div style="overflow: hidden;" align="center">
		<c:forEach items="${books}" var="book" varStatus="vs">
			<div class="book">
				<img class="img"src="${book.cover}">
				<h3><a href="${pageContext.request.contextPath}/details/details.do?bookname=${book.bookname}">${book.bookname}</a></h3>
				${book.intro}
			</div>
		</c:forEach>
	</div> 
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
	<script type="text/javascript">
		function gopage(){
			location="area.do?place=${param.place}&page="+event.target.value;
		}
		onload=function(){
			$("[value='${param.page}']").attr("class","btn");
			$("[value='${param.page}']").attr({"disabled":"disabled"})
			if(${param.page==null}){
				$("[value='1']").attr("class","btn");
				$("[value='1']").attr({"disabled":"disabled"})
			}
			if(${param.place=='日本'}){
				$("li:contains('日本')").attr("class","active");
			}else if(${param.place=='中国'}){
				$("li:contains('国产')").attr("class","active");
			}else if(${param.place=='欧美'}){
				$("li:contains('欧美')").attr("class","active");
			}else if(${param.place=='今日'}){
				$("li:contains('今日')").attr("class","active");
			}else if(${param.place=='VIP'}){
				$("li:contains('VIP')").attr("class","active");
			}
		}
	</script>
</body>
</html>