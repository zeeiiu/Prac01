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
	<h1>웰컴 jsp 입니다</h1>
	<%
    
      // 세션 아이디
      String id = (String)session.getAttribute("id");
      String pw = (String)session.getAttribute("pw");
   %>
	환영합니다 :
	<%=id %>
	님
	<br> 당신의 패스워드는 :
	<%=pw %>
	님
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
      // 세션 특정 데이터 삭제
      session.removeAttribute("pw");
      
     
      Enumeration enumeration2 = session.getAttributeNames();
   
      while(enumeration.hasMoreElements()){
          String sName = enumeration.nextElement().toString();
          String sValue = (String)session.getAttribute(sName);
          
          out.print(sName + ":" + sValue + "<br>");
       }  
      
      // 모든 데이터 삭제
      session.invalidate();
      
   // 유효한 세션 아이디 존재 여부
      if(request.isRequestedSessionIdValid()){
         out.print("session valid");
      }else{
         out.print("session Invalid");
      }
      
      
   %>

</body>
</html>