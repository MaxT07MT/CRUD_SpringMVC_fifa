<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>League</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

<body class="w3-light-grey">
<div class="w3-container w3-green w3-opacity w3-right-align">
    <h1>League List</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">

        <div class="w3-container w3-white w3-right-align">
            <h2></h2>

            <body class="w3-light-grey">
            <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
                <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league/newLeague'">Add New League</button>

                <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
            </div>


</body>

<p>

</p>
                <TABLE BORDER width="80" align="center">
                    <tr align="center" bgcolor="green" >
                        <TD><H2>Name</H2></TD>
                        <td><h2>Continent</h2></td>
                        <td><h2>Country</h2></td>
                        <td><h2>Info</h2></td>
    </tr>

    <c:forEach items="${league}" var="league">
        <tr>
            <TD>${league.name}</TD>
            <td>${league.continent}</td>
            <td>${league.country}</td>
            <td><button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league/${league.id}'">INFO</button></td>
        </tr>
    </c:forEach>
                </TABLE>

            <p>

            </p>

            </div>
        </div>

    <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
        <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league/newLeague'">Add New League</button>

            <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
        </div>
    </div>
    </div>
</div>
</body>
</html>