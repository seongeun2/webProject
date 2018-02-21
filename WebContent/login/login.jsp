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
	}
}
</script>
</head>
<body>
	<div class="login" style="background-color: #ff9fa0; height: 40px;">
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
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      <b style="font-size: 24px;">로 그 인</b>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        </div>
	 <form method="post" action="<%=request.getContextPath() %>/login/loginOk.jsp">
     <div class="w3-container">   
        <div class="w3-section">
        	<br>
          <label><b>아이디</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" required>
          <label><b>비밀번호</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
        <button class="w3-button w3-block w3-section w3-padding" type="submit" style="background-color: #d25a5a; color: white; margin-top: 10px; height: 50px; font-size: 20px;">login</button>
        </div>
        </div>
      <!-- <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      </div> -->
    
      </form>
  </div>
</div> <!-- 로그인 끝 -->




 <!-- 회원가입 모달소스 -->
 <div class="w3-container">
  <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width:600px">
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      <b style="font-size: 24px;">회 원 가 입</b>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        </div>
	 <form method="post" action="<%=request.getContextPath() %>/join/joinPro.jsp">
        <div class="w3-container">
        <div class="w3-section">
        	<table>
        	<tr>
        		<td><label><b>아이디</b><sub style="color: red;">*&nbsp;</sub></label></td>
        		<td><input class="w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" style="height: 30px;" required>&nbsp;&nbsp;
        		<input type="button" value="중복체크"></td>
        	</tr>
        	<tr>
        		<td><label><b>비밀번호</b><sub style="color: red;">*</sub></label></td>&nbsp;
        		<td><input class="w3-border w3-margin-bottom" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" style="height: 30px;"  required></td>
        	</tr>
        	<tr>
        		<td><label><b>비밀번호 확인</b><sub style="color: red;">*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</sub></label></td>&nbsp;
        	    <td><input class="w3-border w3-margin-bottom" type="password" placeholder="Enter Password" id="m_pwd2" name="m_pwd2" style="height: 30px;"  required></td>
        	</tr>
        	<tr>	
        		<td><label><b>이름</b><sub style="color: red;">*</sub></label></td>&nbsp;
        		  <td><input class="w3-border w3-margin-bottom" type="text" placeholder="Enter Name" id="m_name" name="m_name" style="height: 30px;"  required></td>
        	</tr>	
        		<td><label><b>생년월일</b></label></td>&nbsp;
        		 <td> <input class="w3-border w3-margin-bottom" type="text" placeholder="Enter BirthDay" id="m_birth" name="m_birth" style="height: 30px;"  required></td>
        	</tr>
        	<tr>	
        		<td><label><b>회원등급</b></label></td>&nbsp;
        		<td><input class="w3-border w3-margin-bottom" type="text" id="m_level" name="m_level" value="새싹회원" style="background-color: #d6d9da; height: 30px;" readonly></td>
        	</tr>	
        	<tr>
        		<td><label><b>이메일주소</b></label></td>&nbsp;
        		 <td><input class="w3-border w3-margin-bottom" type="email" placeholder="Enter Email" id="m_email" name="m_email" style="height: 30px;" required></td>
        	</tr>
      		</table>
      		<br>
             <button class="w3-button w3-block w3-section w3-padding" type="submit" style="background-color: #d25a5a; color: white; margin-top: 10px; height: 50px; font-size: 20px;">Join</button>
      </div><!-- w3-section -->
      </div><!-- w3-container -->
      
      </form>
    </div>
  </div>
</div> <!-- 회원가입 끝 -->






</body>
</html>