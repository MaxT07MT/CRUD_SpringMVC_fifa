<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete Player</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-yellow w3-opacity w3-right-align">
    <h1>Delete Player</h1>
</div>
<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <h2></h2>
        <TABLE  width="100%" align="center">
            <tr  align="center" bgcolor="#b22222" >
                <TD height="50"><H2></H2></TD>
            </tr>
        </TABLE>
    </div>
</div>
</TABLE>
<p>
</p>
<TABLE BORDER width="100%" align="center">
    <tr align="center">
        <TD><H1>You want to delete club?</H1></TD>
    </tr>
</TABLE>
<TABLE BORDER width="100%" align="center">
    <tr align="center" bgcolor="#228b22" >

        <td><h2>Firstname</h2></td>
        <td><h2>Lastname</h2></td>
        <td><h2>Birth</h2></td>
        <td><h2>Position</h2></td>
        <td><h2>Role</h2></td>
        <td><h2>preferredFoot</h2></td>
        <td><H2>Country</H2></td>
    </tr>
    <form action = "/league/${player.leagueId}/club/${player.clubId}/player/${player.id}/delete" method="post">


        <br>

        <td><input type="text" value="${player.firstname}" name="firstname"/><br/></td>
        <td><input type="text"  value="${player.lastname}" name="lastname"/><br/></td>
        <td><input type="text"  value="${player.birth}" name="birth"/><br/></td>
        <td><input type="text"  value="${player.position}" name="position"/><br/></td>
        <td><input type="text"  value="${player.role}" name="role"/><br/></td>
        <td><input type="text"  value="${player.preferredFoot}" name="preferredFoot"/><br/></td>
        <td><input type="text"  value="${player.country}" name="country"/><br/></td>
        <input type="hidden" value="${player.leagueId}" name="leagueId"/><br/>
        <input type="hidden" value="${player.clubId}" name="clubId"/><br/>

        </tr>

        <TABLE  width="100%" align="center">
            <tr align="center" bgcolor="#ffd700"  >


            </tr>
        </TABLE>

        <tr align="center" bgcolor="#b22222" >
            <TD><button type="submit" class="w3-btn w3-hover-red w3-round-large w3-margin-bottom">Yes, Delete</button></TD>
        </tr>

    </form>

    <div class="w3-container w3-yellow w3-opacity w3-right-align w3-padding">

        <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${player.leagueId}/club/${player.clubId}/clubShowById'">Back to Club</button>

        <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${player.leagueId}/club'">Back to Club List of League</button>
    </div>
</TABLE>
<p>
</p>
<div class="w3-container w3-yellow w3-opacity w3-right-align w3-padding">

    <button class="w3-btn w3-hover-yellow w3-round-large" onclick="location.href='/league'">Back to League List</button>
    <button class="w3-btn w3-hover-yellow w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
</div>

</body>
</html>


