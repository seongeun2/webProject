<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<title>Insert title here</title>
<script>
function View(value) {
	if(value == "0"){ // HOME 버튼 클릭시 첫화면으로 이동
		location.href="main.jsp";
	}else if(value == "6") {// 로그인페이지
        location.href="main.jsp?contentPage=/login/login.jsp";
    }else if(value == "7") {// 회원가입페이지
        location.href="main.jsp?contentPage=/join/joinForm.jsp";
    }
}
</script>
</head>
<body>
	<div class="login" style="background-color: #ff9fa0; height: 50px;">
	  <div class="loing_btn" style="text-align: right;">
	  <button onclick="View('0');"><img src="/webProject/images/home.jpg" alt="홈" ></button>
	  <button onclick="View('6');"><img src="/webProject/images/login.jpg" alt="로그인" ></button>
	  <button onclick="View('7');"><img src="/webProject/images/join.jpg" alt="회원가입"></button>
  		</div>
  	</div>
  	
  	
  	
	<!-- 모달 팝업 -->
	<div class="container">
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">Modal title</h4>
	      </div>
	      <div class="modal-body">
		...
	      </div>
	      <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>

</div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->
</body>
</html>