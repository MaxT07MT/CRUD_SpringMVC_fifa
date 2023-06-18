<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Player</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-grey">
<div class="w3-container w3-yellow w3-opacity w3-right-align">
    <h1>Player</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">

        <div class="w3-container w3-white w3-right-align">
            <h2></h2>


            <p>
            <h1 align="center">${player.firstname} ${player.lastname}</h1>

            </p>
            <TABLE BORDER width="100%" align="center">
                <tr align="center" bgcolor="green" >


                    <td><h2>Firstname</h2></td>
                    <td><h2>Lastname</h2></td>
                    <td><h2>Birth</h2></td>
                    <td><h2>Position</h2></td>
                    <td><h2>Role</h2></td>
                    <td><h2>preferredFoot</h2></td>
                    <td><H2>Country</H2></td>
                    <td><H2>Edit</H2></td>
                    <td><H2>Delete</H2></td>
                </tr>

                <tr>
                    <td>${player.firstname}</td>
                    <td>${player.lastname}</td>
                    <td>${player.birth}</td>
                    <td>${player.position}</td>
                    <td>${player.role}</td>
                    <td>${player.preferredFoot}</td>
                    <td>${player.country}</td>

                    <td>
                        <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
                            <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${player.leagueId}/club/${player.clubId}/player/${player.id}/editPlayer'">Edit</button>
                        </div>
                    </td>
                    <TD>
                        <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
                            <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${player.leagueId}/club/${player.clubId}/player/${player.id}/delPlayer'">Delete</button>
                        </div>
                    </TD>
                </tr>
            </TABLE>
            <p>
            </p>
        </div>
    </div>

    <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
        <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">


            <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${player.leagueId}/club/${player.clubId}/clubShowById'">Back to Club</button>
            <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${player.leagueId}/club'">Back to Club List of League</button>
            <button class="w3-btn w3-hover-yellow w3-round-large" onclick="location.href='/league'">Back to League List</button>
            <button class="w3-btn w3-hover-yellow w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>

        </div>
    </div>
</div>
</div>
</body>
</html>

