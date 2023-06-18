<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Club</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-grey">
<div class="w3-container w3-yellow w3-opacity w3-right-align">
    <h1>Club</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">

        <div class="w3-container w3-white w3-right-align">
            <h2></h2>

            <body class="w3-light-grey">
            <div class="w3-container w3-yellow w3-opacity w3-right-align w3-padding">
                <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league/${club.leagueId}/club'">Back to Club List of League</button>

                <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league'">Back to League List</button>

                <button class="w3-btn w3-hover-yellow w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
            </div>
            </body>

            <p>
            <h1 align="center">${club.name}</h1>

            </p>
            <TABLE BORDER width="100%" align="center">
                <tr align="center" bgcolor="green" >


                    <td><H2>Name</H2></td>
                    <td><H2>Country</H2></td>
                    <td><H2>City</H2></td>
                    <td><H2>Main Couch</H2></td>
                    <td><H2>Champion League</H2></td>
                    <td><H2>Champion ECC</H2></td>
                    <td><H2>Champion UEFA</H2></td>
                    <td><H2>Description</H2></td>
                    <td><h2>Player List</h2></td>
                    <td><H2>Edit</H2></td>
                    <td><H2>Delete</H2></td>
                </tr>

                    <tr>
                        <td>${club.name}</td>
                        <td>${club.country}</td>
                        <td>${club.city}</td>
                        <td>${club.mainCouch}</td>
                        <td>${club.championLeague}</td>
                        <td>${club.championECC}</td>
                        <td>${club.championUEFA}</td>
                        <td>${club.description}</td>
                        <td>
                            <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
                                <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${club.leagueId}/club/${club.id}/player'">Player List</button>
                            </div>
                        </td>
                        <td>
                            <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
                                <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${club.leagueId}/club/${club.id}/editClub'">Edit</button>
                            </div>
                        </td>
                        <TD>
                            <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
                                <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${club.leagueId}/club/${club.id}/delClub'">Delete</button>
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


            <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${club.leagueId}/club'">Back to Club List of League</button>


            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league'">Back to League List</button>

            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>

        </div>
    </div>
</div>
</div>
</body>
</html>
