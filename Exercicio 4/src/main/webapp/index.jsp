<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%-- Exercicio 1 --%>		

	<%!
	String today(){
		java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}
	%>
	
	<c:set var="variavel" value="Primeira página JSP utilizando JSTL"/>
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje é: <c:out value="${d1}"/></h1>
	<h1>A data de hoje é: <fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${d1}"/></h1>
	<c:if test="${formatar == true}">
		<p>Variável formatar = <c:out value="${formatar}"/><p>
	</c:if>	
	<h1>A data de hoje é: <c:choose>
							<c:when test="${formatar == true}">
								<c:out value="<%=today() %>"/>
							</c:when>
							<c:otherwise>
								<c:out value="${d1}"/>
							</c:otherwise>
						  </c:choose></h1>
	<br>
	<br>
	<br>
								
	<%-- ________________________________________________________________________________________--%>		  
						  
	<%-- Exercicio 2 --%>					  
						  
		
	 <c:set var="altura" value="1.58"></c:set>
	 <c:set var="peso" value="75.0"></c:set> 
 	 
 	<c:set var="resultado" value="${(altura * altura) / peso }"></c:set>
 	 
 	 <c:set var="sobrepeso" value="Sobrepeso"></c:set>
 	 <c:set var="media" value="IMC dentro dos padrões" ></c:set>
	
	 <c:choose>
	 	<c:when test="${ resultado > 25 }">
	 		<c:out value="${sobrepeso }"/>
	 	</c:when>
	 	<c:otherwise>
	 		<c:out value="${media}"></c:out>
	 	</c:otherwise>
	 </c:choose>


 	 <br>
						 

</body>
</html>