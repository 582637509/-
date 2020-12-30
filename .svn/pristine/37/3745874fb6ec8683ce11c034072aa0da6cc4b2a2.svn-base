<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>开通会员</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/jquery-3.3.1.min.js"></script>
</head>
<body>
  <div class="form-group">
    <label for="date" class="col-sm-2 control-label">验证码</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="writeCode" onkeyup="checkCodeMethod(this.value)" >
    </div>
    <div class="col-sm-2">
    	${chek}
    </div>
    <span id="checkCodeSpan"></span>
  </div>
</body>
<script type="text/javascript">
  function checkCodeMethod(code){
	  var url = "${pageContext.request.contextPath}/kap/oio.do";
	  $.ajax({
		  "url" : url,
		  "data" : "code="+code,
		  "type" : "GET",
		  "dataType" : "json",
		  "success" : function(json){
			  if(json.state == 200){
				  var sta = json.data;
				  if (sta) {
                      document.getElementById("checkCodeSpan").innerHTML = "<font>验证码正确!</font>";
                  }else {
                      document.getElementById("checkCodeSpan").innerHTML = "<font>验证码错误!</font>";
                  }
			  }
		  }
	  })
  }
</script>
</html>