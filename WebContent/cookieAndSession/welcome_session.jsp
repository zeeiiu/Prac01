<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>���� jsp �Դϴ�</h1>
	<%
    
      // ���� ���̵�
      String id = (String)session.getAttribute("id");
      String pw = (String)session.getAttribute("pw");
   %>
	ȯ���մϴ� :
	<%=id %>
	��
	<br> ����� �н������ :
	<%=pw %>
	��
	<br>
	<hr>
	<%
      Enumeration enumeration = session.getAttributeNames();
      
      while(enumeration.hasMoreElements()){
         String sName = enumeration.nextElement().toString();
         String sValue = (String)session.getAttribute(sName);
         
         out.print(sName + ":" + sValue + "<br>");
      }
      
      out.println("==================================<br/>");
      // ���� Ư�� ������ ����
      session.removeAttribute("pw");
      
     
      Enumeration enumeration2 = session.getAttributeNames();
   
      while(enumeration.hasMoreElements()){
          String sName = enumeration.nextElement().toString();
          String sValue = (String)session.getAttribute(sName);
          
          out.print(sName + ":" + sValue + "<br>");
       }  
      
      // ��� ������ ����
      session.invalidate();
      
   // ��ȿ�� ���� ���̵� ���� ����
      if(request.isRequestedSessionIdValid()){
         out.print("session valid");
      }else{
         out.print("session Invalid");
      }
      
      
   %>

</body>
</html>