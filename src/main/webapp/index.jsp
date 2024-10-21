<%@ page import="com.nanshan.guessgame.model.GuessGame" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GuessGame</title>
</head>
<body>
<h2>Guess Game!</h2>
<form:form method="POST" action="${ pageContext.request.contextPath }/guessStart">
    <h4>自訂範圍:1~
        <label>
            <input type="number" name="randomNum" required>
        </label>
    </h4>
    <button type="submit">Start</button>
</form:form>

</body>
</html>