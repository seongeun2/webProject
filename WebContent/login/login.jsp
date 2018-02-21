<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<!-- 모달소스 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<script>
function View(value) {
	if(value == "0"){ // HOME 버튼 클릭시 첫화면으로 이동
		location.href="main.jsp";
	}else if(value == "6") {// 로그인페이지
        location.href="main.jsp?contentPage=/test/modal_login.jsp";
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
	  <button onclick="document.getElementById('id01').style.display='block'"><img src="/webProject/images/login.jpg" alt="로그인" ></button>
	  <button onclick="document.getElementById('id02').style.display='block'"><img src="/webProject/images/join.jpg" alt="회원가입"></button>
  		</div>
  	</div>
 
 
 
 
 
 
 
 <!-- 로그인 모달소스 -->
 <div class="w3-container">
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width:600px">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="img_avatar4.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>
	 <form class="w3-container" method="post" action="<%=request.getContextPath() %>/login/loginOk.jsp">
        <div class="w3-section">
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
        </div>
      </form>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>
    </div>
  </div>
</div> <!-- 로그인 끝 -->

 <!-- 회원가입 모달소스 -->
 <div class="w3-container">
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width:600px">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="img_avatar4.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>
	 <form class="w3-container" method="post" action="<%=request.getContextPath() %>/join/joinPro.jsp">
        <div class="w3-section">
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit">Login</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
        </div>
      </form>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('id02').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>
    </div>
  </div>
</div> <!-- 로그인 끝 -->






</body>
</html>