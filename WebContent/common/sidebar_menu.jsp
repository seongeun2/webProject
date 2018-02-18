<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">

function changeView(value) {
	
var id = "<%=(String)session.getAttribute("id")%>";
	if(id == "null"){
		alert("로그인 후 이용바랍니다");
		location.href="main.jsp?contentPage=/login/loginForm.jsp";
	}else{
		if(value == "1") {// 입력페이지
			location.href="main.jsp?contentPage=/haru_write/writeForm.jsp";
		}else if(value == "2") {// 보기페이지
		    location.href="main.jsp?contentPage=/haru_view/mainList.jsp";
		}else if(value == "3") {// 통계페이지
		    location.href="main.jsp?contentPage=/common/NewFile.jsp";
		}else if(value == "4") {// 설정페이지
		    location.href="main.jsp?contentPage=/common/NewFile.jsp";
		}else if(value == "5") {// 공지페이지
		    location.href="main.jsp?contentPage=/common/NewFile.jsp";
		}else if(value == "11") {// 달력페이지 이동
		    location.href="main.jsp?contentPage=/common/calendar.jsp";
		}else if(value == "8") {// 회원관리페이지
		    location.href="main.jsp?contentPage=/admin/list.jsp";
		}
	}
}
</script>
<style>
.haruimg{
	background-color: #f1f1f1;
    width: 100%;
    text-align: center;
    height:60px;
    margin-bottom: 50px;
    cursor:auto;
}
.haruimg img{
    top:0; left: 0;
	width: 100%;
	height: 100%;
}
</style>
<body>
<!-- 좌측 사이드바 -->
  <div class="rightcolumn">
    <div class="card">
    <br><br>
      <div class="haruimg" onclick="View('0');">
	      	<img src="/webProject/images/menu.png" style="width: 100%; max-width: 760px; vertical-align: middle" />
	      </div>
	      <div class="haruimg" onclick="changeView('1');">
	      	<img src="/webProject/images/haru_1.jpg" style="width: 100%; max-width: 760px; vertical-align: middle" />
	      </div>
	      <div class="haruimg" onclick="changeView('2');">
	       	<img src="/webProject/images/haru_2.jpg" style="width: 100%; max-width: 760px; vertical-align: middle" />
		  </div>
	      <div class="haruimg" onclick="changeView('3');">
	     	<img src="/webProject/images/haru_3.jpg" style="width: 100%; max-width: 760px; vertical-align: middle" />
	      </div>
	      <div class="haruimg" onclick="changeView('4');">
	      	<img src="/webProject/images/haru_4.jpg" style="width: 100%; max-width: 760px; vertical-align: middle" />
	      </div>
	       <div class="haruimg" onclick="changeView('5');">
	       	<img src="/webProject/images/haru_5.jpg" style="width: 100%; max-width: 760px; vertical-align: middle" />
	       </div>
	      <div class="fakeimg" onclick="changeView('11');">달력 보기</div>
      
    </div>
  </div>
</body>
</html>