<%@ page import="com.nanshan.guessgame.model.GuessGame" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Lose</title>
</head>
<body>
<h1>You Lose</h1>
<% GuessGame guessGame = (GuessGame) request.getSession().getAttribute("guessGame");%>
<h3>正確答案: <%= guessGame.getMagicNumber() %></h3>
<a href="${ pageContext.request.contextPath }/index.jsp" class="btn btn-primary me-2">new game</a>
</body>
</html>
