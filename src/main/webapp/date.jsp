<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%
LocalDate now = LocalDate.now();
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
String currentDate = formatter.format(now);
%>
<%! 
public int computeSum(int num1, int num2) {
    return num1 + num2;
}
%>
<html>
    <head>
        <title>Current Date</title>
        <style type="text/css">
            body {
                background-color: #000000;
                color: white;
                margin: 50px;
            }
        </style>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <h1>Java Server Page</h1>
        <hr/>
        <b>Current Date: <%= currentDate %></b>
        <br/>
        Sum: <%= computeSum(10, 5) %>
        <br/>
        <br/>
        <%
        for(int index=0;index<100;index++) {
        %>
        Input <%= index + 1%><input type="text" name="textbox<%=index+1%>>"><br/>
        <%
        }
        %>
        <%@ include file="footer.jsp" %>
    </body>
</html>
