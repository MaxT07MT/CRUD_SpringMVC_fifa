<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Edit club</title>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-green w3-opacity w3-right-align">
  <h1>Edit club</h1>
</div>
<div class="w3-container w3-center w3-margin-bottom w3-padding">
  <div class="w3-card-4">
    <h2></h2>
    <TABLE  width="100%" align="center">
      <tr  align="center" bgcolor="#228b22" >
      </tr>
    </TABLE>
  </div>
</div>
</TABLE>
<p>
</p>
<TABLE  width="100%" align="center">
  <tr  align="center">
    <TD><H1>You want edit Club?</H1></TD>
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

    <form action = "/league/${club.leagueId}/club/${club.id}/edit" method="post">
      <input type="hidden" value="${club.id}" name="id"/><br/>

      <br>

      <td><input type="text" placeholder="input name" value="${club.name}" name="name"/><br/></td>
      <td><input type="text" placeholder="input country" value="${club.country}" name="country"/><br/></td>
      <td><input type="text" placeholder="input city" value="${club.city}" name="city"/><br/></td>
      <td><input type="text" placeholder="input name of Main Couch" value="${club.mainCouch}" name="mainCouch"/><br/></td>
      <td><input type="number"  value="${club.championLeague}" name="championLeague"/><br/></td>
      <td><input type="number"  value="${club.championECC}" name="championECC"/><br/></td>
      <td><input type="number"  value="${club.championUEFA}" name="championUEFA"/><br/></td>
      <td><input type="text" placeholder="input description" value="${club.description}" name="description"/><br/></td>
      <input type="hidden" value="${club.leagueId}" name="depId"/><br/>

      </tr>


      <TABLE  width="100%" align="center">
          <tr align="right" bgcolor="#00ff7f" >
              <TD><button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Edit This Club</button></TD>
          </tr>
      </TABLE>
      <TABLE  width="100%" align="center">
          <tr align="center"  >

              <TD><H4><span style="color :red;">

               <c:if test="${error != null}">
                   <c:forEach items="${error}" var="violation">
                       <p>${violation.message}.</p>
                   </c:forEach>
               </c:if>

               </span></H4></TD>

          </tr>
      </TABLE>
  </form>

</TABLE>

<TABLE  width="100%" align="center">
  <tr align="center" bgcolor="#00ff7f" >
    <div class="w3-container w3-light-gold w3-opacity w3-right-align w3-padding">
      <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league/${club.leagueId}/club'">Back to Club List of League</button>
    </div>
</TABLE>
<p>
</p>
<div class="w3-container w3-yellow w3-opacity w3-right-align w3-padding">
  <div class="w3-container w3-light-gold w3-opacity w3-right-align w3-padding">

    <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
  </div>
</div>
</body>
</html>


