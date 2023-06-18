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
  <h1>League</h1>
</div>

<div class="w3-container w3-center w3-margin-bottom w3-padding">
  <div class="w3-card-4">

    <div class="w3-container w3-white w3-right-align">
      <h2></h2>

      <body class="w3-light-grey">
      <div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league'">Back to League List</button>

        <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
      </div>


      </body>

      <p>
        <H1 align="center">${league.name}</H1>

      </p>
      <TABLE BORDER width="100%" align="center">

        <tr align="center" bgcolor="green" >


          <TD><H2>Name</H2></TD>
          <TD><H2>Continent</H2></TD>
          <TD><H2>Country</H2></TD>
          <td><h2>Description</h2></td>
          <td><h2>Teams</h2></td>
          <TD><H2>Edit</H2></TD>
          <TD><H2>Delete</H2></TD>
        </tr>


        <tr>
          <TD>${league.name}</TD>
          <TD>${league.continent}</TD>
          <TD>${league.country}</TD>
          <TD>${league.description}</TD>


          <TD>
            <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
              <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${league.id}/club'">Club List</button>
            </div>


    </TD>
    <TD>


      <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/leagueEdit/${league.id}'">Edit</button>
      </div>


    </TD>
    <TD>
      <div class="w3-container w3-white w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-green w3-round-large" onclick="location.href='/league/${league.id}/deleteLeague'">Delete</button>
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
    <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league'">Back to League List</button>

    <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
  </div>
</div>
</div>
</div>
</body>
</html>
