<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Add New League</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-green w3-opacity w3-right-align">
    <h1>Add New League</h1>
</div>
<div class="w3-container w3-center w3-margin-bottom w3-padding">
    <div class="w3-card-4">
        <h2></h2>
        <TABLE  width="60" align="center">
            <tr  align="center" bgcolor="#228b22" >
            </tr>
        </TABLE>
    </div>
</div>
</TABLE>
<p>
</p>
<TABLE BORDER width="100%" align="center">
    <tr align="center" bgcolor="#228b22" >
        <TD><H2>Name of League</H2></TD>
        <TD><H2>Continent</H2></TD>
        <TD><H2>Country</H2></TD>
        <TD><H2>Short Description</H2></TD>
    </tr>


    <form action = "/league/leagueAdd" method="post">

        <tr>
            <TD><input type="text" placeholder="name" value="${league.name}" name="name"/><br/></TD>
            <TD><input type="text" placeholder="continent" value="${league.continent}" name="continent"/><br/></TD>
            <TD><input type="text" value="${league.country}" name="country"/><br/></TD>
            <TD><input type="text" value="${league.description}" name="description"/><br/></TD>

        </tr>



        <TABLE  width="100%" align="center">
            <tr align="right" bgcolor="#00ff7f" >
                <TD><button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button></TD>
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
<p>
</p>
<div class="w3-container w3-green w3-opacity w3-right-align w3-padding">
    <div class="w3-container w3-light-green w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/league'"> League List</button>
        <button class="w3-btn w3-hover-green w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
    </div>
</div>

</body>

</html>