<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%
String year = DateTimeFormatter.ofPattern("yyyy").format(LocalDate.now());
%>
<h3>Footer <%= year %></h3>