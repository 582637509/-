<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">


<!-- 自己写的css文件 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css">
<style type="text/css">
.sharebookdiv {
	width: 1200px;
	height: 335px;
	border: red solid 1px;
	margin: 20px auto;
}

h2 {
	margin: 20px;
}

.divimg {
	width: 320px;
	height: 200px;
	margin-left: 20px;
}

.sharebookdiv>p {
	margin: 20px;
}
#upload-form input{
	width: 400px;
}
#hh3{
	margin-left: 200px;
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="box box-info">
		<div class="box-header with-border">
			<h3 id="hh3" class="box-title">上传短篇漫画</h3>
		</div>
		<form id="upload-form" class="form-horizontal">
			<div class="box-body">

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">书名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputPassword3"
							name="bookname" placeholder="要上传的书名？如：半夜千万不要开门">
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">rar压缩文件：</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="inputPassword3"
							name="file"><button type="button" class="btn btn-info"
					onclick="upload()">上传</button>
					</div>
				</div>

			</div>

			<div class="box-footer">
				
			</div>

		</form>
	</div>


</body>
<script type="text/javascript">
	onload=function(){
		$("li:contains('分享区')").attr("class","active");
	}
	//上一章
		function upload() {
			var url = "upload.do";
			var data = new FormData($("#upload-form")[0]);
			$.ajax({
				"url" : url,
				"data" : data,
				"type" : "post",
				"dataType" : "json",
				"contentType" : false, //ajax上传要加这两项
				"processData" : false, //
				"success" : function(json) {
					if(json.state==200){
						alert("上传成功");
						location.href="share.do";
					}else{
						alert(json.message)
					}
					
				}
			});
		}
</script>
</html>