<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Club List</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-grey">
<div class="w3-container w3-yellow w3-opacity w3-right-align">
    <h1>Player List</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">

        <div class="w3-container w3-white w3-right-align">
            <h2></h2>

            <p>
            </p>
            <TABLE BORDER width="100%" align="center">
                <tr align="center" bgcolor="green" >
                    <td><h2>Firstname</h2></td>
                    <td><h2>Lastname</h2></td>
                    <td><H2>INFO</H2></td>
                </tr>
                <c:forEach items="${player}" var="player">
                    <tr>
                        <TD>${player.firstname}</TD>
                        <TD>${player.lastname}</TD>
                        <TD>
                            <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
                                <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${player.leagueId}/club/${player.clubId}/player/${player.id}/playerShowById'">Info</button>
                            </div>

                        </TD>

                    </tr>
                </c:forEach>
            </TABLE>
            <p>
            </p>
        </div>
    </div>

    <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
        <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league/${leagueId}/club/${clubId}/player/newPlayer'">Add New Player</button>
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league/${leagueId}/club/${clubId}/clubShowById'">Back to Club</button>
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league'">Back to Leagues List</button>
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
        </div>
    </div>
</div>
</div>
</body>
</html>