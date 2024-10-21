<%@ page import="com.nanshan.guessgame.model.GuessGame" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Guess</title>
</head>
<body>
<h1>Guess</h1>
<form:form method="POST" action="${ pageContext.request.contextPath }/guessNumber">
    <% GuessGame guessGame = (GuessGame) request.getSession().getAttribute("guessGame");%>
    <h3>剩餘次數:<%= guessGame.getRemain() %></h3>
    <h3>答案:<%= guessGame.getMagicNumber() %></h3>
    <label>
        <input type="number" name="number" required/>
    </label>
    <button type="submit">Guess</button>
</form:form>
</body>
</html>
