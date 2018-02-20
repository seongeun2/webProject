<%@page import="member.memDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>    

<%
	String id=request.getParameter("m_id");
	String pass=request.getParameter("m_pwd");
	memDAO dao = memDAO.getInstance();
	
	//로그인
	int pwcheck = dao.login(id, pass);
%>
<%	if(pwcheck == -1){ %>
	<script>
      alert("ID가 존재하지 않습니다!");
      history.back();
    </script>
<%
   }
   else if(pwcheck == 0)
   {
%>
     <script>
      alert("비밀번호가 틀립니다!");
      history.back();
     </script>
<%
   }
   else
   {
	  String name = dao.getname(id);
	  session.setAttribute("id",id);
	  session.setAttribute("name", name);	//name 저장 >> welcome 에 name을 넘겨줌
	  response.sendRedirect("../main/main.jsp");
   }
%>








