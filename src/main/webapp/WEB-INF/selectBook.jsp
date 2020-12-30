<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>查询结果</title>
<style type="text/css">
.selectImage {
	border: #666 solid 5px;
	margin-left: 100px;
	margin-top: 20px;
	width: 1000px;
}

.inimage {
	width: 200px;
}
</style>

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

</head>
<body>
	<%@include file="header.jsp" %>
	<c:forEach items="${books}" var="book">
		<div class="selectImage" style="position: relative;overflow: hidden;">
			<img class="inimage" alt="图片找不到了" src="${book.cover}" style="position: relative; float: left;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="details/details.do?bookname=${book.bookname}" class="h1" style="float:left;width: 600px"> 
				${book.bookname}</a>
			<div style="float:left;width: 600px">${book.intro}</div>
		</div>
	</c:forEach>

	<!-- 如果用户没有传值 -->
	<c:if test="${books==null}">
		<center>
			<h1>输入框不能为空！</h1>
		</center>
	</c:if>

	<!-- 如果没有结果 -->
	<center>
		<h1>${message}</h1>
	</center>

</body>
</html>