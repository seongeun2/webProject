<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" href="/webProject/css/main.css" rel="stylesheet" />
<!-- ��޼ҽ� -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
<script>
function View(value) {
	if(value == "0"){ // HOME ��ư Ŭ���� ùȭ������ �̵�
		location.href="main.jsp";
	}
}
</script>
</head>
<body>
	<div class="login" style="background-color: #ff9fa0; height: 40px;">
	  <div class="loing_btn" style="text-align: right;">
	  <button onclick="View('0');"><img src="/webProject/images/home.jpg" alt="Ȩ" ></button>
	  <button onclick="document.getElementById('id01').style.display='block'"><img src="/webProject/images/login.jpg" alt="�α���" ></button>
	  <button onclick="document.getElementById('id02').style.display='block'"><img src="/webProject/images/join.jpg" alt="ȸ������"></button>
  		</div>
  	</div>
 
 
 
 
 <!-- �α��� ��޼ҽ� -->
 <div class="w3-container">
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width:600px">
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      <b style="font-size: 24px;">�� �� ��</b>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        </div>
	 <form method="post" action="<%=request.getContextPath() %>/login/loginOk.jsp">
     <div class="w3-container">   
        <div class="w3-section">
        	<br>
          <label><b>���̵�</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" required>
          <label><b>��й�ȣ</b></label>
          <input class="w3-input w3-border" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" required>
        <button class="w3-button w3-block w3-section w3-padding" type="submit" style="background-color: #d25a5a; color: white; margin-top: 10px; height: 50px; font-size: 20px;">login</button>
        </div>
        </div>
      <!-- <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      </div> -->
    
      </form>
  </div>
</div> <!-- �α��� �� -->




 <!-- ȸ������ ��޼ҽ� -->
 <div class="w3-container">
  <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="width:600px">
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey ">
      <b style="font-size: 24px;">ȸ �� �� ��</b>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        </div>
	 <form method="post" action="<%=request.getContextPath() %>/join/joinPro.jsp">
        <div class="w3-container">
        <div class="w3-section">
        	<table>
        	<tr>
        		<td><label><b>���̵�</b><sub style="color: red;">*&nbsp;</sub></label></td>
        		<td><input class="w3-border w3-margin-bottom" type="text" placeholder="Enter UserID" id="m_id" name="m_id" style="height: 30px;" required>&nbsp;&nbsp;
        		<input type="button" value="�ߺ�üũ"></td>
        	</tr>
        	<tr>
        		<td><label><b>��й�ȣ</b><sub style="color: red;">*</sub></label></td>&nbsp;
        		<td><input class="w3-border w3-margin-bottom" type="password" placeholder="Enter Password" id="m_pwd" name="m_pwd" style="height: 30px;"  required></td>
        	</tr>
        	<tr>
        		<td><label><b>��й�ȣ Ȯ��</b><sub style="color: red;">*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</sub></label></td>&nbsp;
        	    <td><input class="w3-border w3-margin-bottom" type="password" placeholder="Enter Password" id="m_pwd2" name="m_pwd2" style="height: 30px;"  required></td>
        	</tr>
        	<tr>	
        		<td><label><b>�̸�</b><sub style="color: red;">*</sub></label></td>&nbsp;
        		  <td><input class="w3-border w3-margin-bottom" type="text" placeholder="Enter Name" id="m_name" name="m_name" style="height: 30px;"  required></td>
        	</tr>	
        		<td><label><b>�������</b></label></td>&nbsp;
        		 <td> <input class="w3-border w3-margin-bottom" type="text" placeholder="Enter BirthDay" id="m_birth" name="m_birth" style="height: 30px;"  required></td>
        	</tr>
        	<tr>	
        		<td><label><b>ȸ�����</b></label></td>&nbsp;
        		<td><input class="w3-border w3-margin-bottom" type="text" id="m_level" name="m_level" value="����ȸ��" style="background-color: #d6d9da; height: 30px;" readonly></td>
        	</tr>	
        	<tr>
        		<td><label><b>�̸����ּ�</b></label></td>&nbsp;
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
</div> <!-- ȸ������ �� -->






</body>
</html>