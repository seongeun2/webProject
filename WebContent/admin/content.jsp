<%@page import="member.memDAO"%>
<%@page import="member.memVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	int num = Integer.parseInt(request.getParameter("memnum"));
	try{
		memDAO dao = memDAO.getInstance();
		memVO vo = dao.SelectViewMem(num);
		
%>
<style type="text/css">
img{
	display : block;
	margin: 0 auto;
}
</style>
<script type="text/javascript">

	
function golist(){
	location.href = "/webProject/main/main.jsp?contentPage=/admin/list.jsp"; 
	
	}
	
function update(){
	location.href = "/webProject/main/main.jsp?contentPage=/admin/updateForm.jsp?num=<%=vo.getM_num()%>";
}

function m_delete(){
	location.href = "/webProject/main/main.jsp?contentPage=/admin/deleteForm.jsp?num=<%=vo.getM_num()%>";
}


</script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link type="text/css" href="/webProject/css/form.css" rel="stylesheet" />
<title>ȸ�����</title>
</head>

<body>
<div class="leftcolumn">
<div class="card2">	
<!--forms-->
<img alt="�׸�" src="/webProject/images/ap.png" width="200px">
<div class="space-`medium">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<div class="row">                
	        	</div>
<div class="account-holder">
	<h3 align="center">****Haru ȸ������****</h3><br>
	<form name="writeForm" method="post" action="<%=request.getContextPath() %>/writePro.jsp">
	<div class="form-top">
			<div class="form-group">
				<label class="control-label required" for="phone">ȸ����ȣ<sup style="color:red">*</sup></label>
		        <input id="m_num" name="m_num" type="text" class="form-control" value="<%=vo.getM_num() %>" readonly />
		    </div>
			<div class="form-group">
				<label class="control-label required" for="phone">���̵�<sup style="color:red">*</sup></label>
		        <input id="m_id" name="m_id" type="text" class="form-control" value="<%=vo.getM_id() %>" readonly />
		    </div>
		    
		    <div class="form-group">
		        <label class="control-label required" for="name">�̸�<sup style="color:red">*</sup></label>
		        <input id="m_name" name="m_name" type="text" class="form-control" value="<%=vo.getM_name() %>" readonly />
		    </div>
            <div class="form-group">
                <label class="control-label required" for="phone">�������</label>
                <input id="m_brith" name="m_brith" type="text" class="form-control" value="<%=vo.getM_birth() %>" readonly />
            </div>
            <div class="form-group">
                <label class="control-label required" for="email">Email</label>
                <input id="m_email" name="m_email" type="text" class="form-control" value="<%=vo.getM_email() %>" readonly />
            </div>
        <div class="form-group">
                <label class="control-label required" for="name">ȸ�����</label>
                <input id="m_email" name="m_email" type="text" class="form-control" value="<%=vo.getM_level() %>" readonly />
        </div>
            
        </div>
        
        <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12" style="text-align: center">
            <input type="button" class="btn btn-primary btn-block" onclick="update();" value="��������">
            <input type="button" class="btn btn-primary btn-block" onclick="m_delete();" value="ȸ��Ż��">
            <input type="button" class="btn btn-primary btn-block" onclick="golist();" value="ȸ�����">
        </div>
       <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
       </div>
	</form>
</div></div>
</div>
</div>
</div>
</div></div>
<%
	}catch(Exception e){}
%>
</body>
</html>