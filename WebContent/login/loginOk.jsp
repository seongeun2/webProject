<%@page import="member.memDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>    

<%
	String id=request.getParameter("m_id");
	String pass=request.getParameter("m_pwd");
	memDAO dao = memDAO.getInstance();
	
	//�α���
	int pwcheck = dao.login(id, pass);
%>
<%	if(pwcheck == -1){ %>
	<script>
      alert("ID�� �������� �ʽ��ϴ�!");
      history.back();
    </script>
<%
   }
   else if(pwcheck == 0)
   {
%>
     <script>
      alert("��й�ȣ�� Ʋ���ϴ�!");
      history.back();
     </script>
<%
   }
   else
   {
	  String name = dao.getname(id);
	  session.setAttribute("id",id);
	  session.setAttribute("name", name);	//name ���� >> welcome �� name�� �Ѱ���
	  response.sendRedirect("../main/main.jsp");
   }
%>








