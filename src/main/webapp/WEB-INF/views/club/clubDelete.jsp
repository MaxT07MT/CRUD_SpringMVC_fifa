<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete Club</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-yellow w3-opacity w3-right-align">
    <h1>Delete Employee</h1>
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
        <td><H2>Name</H2></td>
        <td><H2>Country</H2></td>
        <td><H2>City</H2></td>
        <td><H2>Main Couch</H2></td>
        <td><H2>Champion League</H2></td>
        <td><H2>Champion ECC</H2></td>
        <td><H2>Champion UEFA</H2></td>
        <td><H2>Description</H2></td>
    </tr>
    <form action = "/league/${club.leagueId}/club/${id}/delete" method="post">


        <br>

        <td><input type="text"  value="${club.name}" name="name"/><br/></td>
        <td><input type="text"  value="${club.country}" name="country"/><br/></td>
        <td><input type="text"  value="${club.city}" name="city"/><br/></td>
        <td><input type="text"  value="${club.mainCouch}" name="mainCouch"/><br/></td>
        <td><input type="number" value="${club.championLeague}" name="championLeague"/><br/></td>
        <td><input type="number" value="${club.championECC}" name="championECC"/><br/></td>
        <td><input type="number" value="${club.championUEFA}" name="championUEFA"/><br/></td>
        <td><input type="text"  value="${club.description}" name="description"/><br/></td>
        <input type="hidden" value="${club.leagueId}" name="depId"/><br/>

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

        <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${club.leagueId}/club'">Back to Club List of League</button>

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


