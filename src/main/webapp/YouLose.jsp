<%@ page import="com.nanshan.guessgame.model.GuessGame" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>
<body>
<h1>You Lose</h1>
<% GuessGame guessGame = (GuessGame) request.getSession().getAttribute("guessGame");%>
<h3>正確答案: <%= guessGame.getMagicNumber() %></h3>
<a href="${ pageContext.request.contextPath }/index.jsp">Go Home</a>
</body>
</html>
