<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Add New Club</title>
</head>
<p>
</p>
<TABLE border="40">
    <tr>
        <td height="30"><H4>Name</H4></td>
        <td><H4>Country</H4></td>
        <td><H4>City</H4></td>
        <td><H4>Couch</H4></td>
        <td><H4>League</H4></td>
        <td><H4>ECC</H4></td>
        <td><H4>UEFA</H4></td>
        <td><H4>Desc</H4></td>
    </tr>

    <form action = "/league/${club.leagueId}/club/createClub" method="post">
        <br>
            <td><input type="text" value="${club.name}" name="name"/><br/></td>
            <td><input type="text"  value="${club.country}" name="country"/><br/></td>
            <td><input type="text"  value="${club.city}" name="city"/><br/></td>
            <td><input type="text"  value="${club.mainCouch}" name="mainCouch"/><br/></td>
            <td><input type="number"  value="${club.championLeague}" name="championLeague"/><br/></td>
            <td><input type="number"  value="${club.championECC}" name="championECC"/><br/></td>
            <td><input type="number"  value="${club.championUEFA}" name="championUEFA"/><br/></td>
            <td><input type="text"  value="${club.description}" name="description"/><br/></td>
            <input type="hidden" value="${club.leagueId}" name="depId"/><br/>

        </tr>


        <TABLE  width="40" align="center">
            <tr align="right" bgcolor="#00ff7f" >
                <TD><button >Add This Club</button></TD>
            </tr>
        </TABLE>
        <TABLE  width="40" align="center">
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

        <button  onclick="location.href='/league/${club.leagueId}/club'">Back to Club List of League </button>
        <button  onclick="location.href='/league'">Back to Leagues List</button>
        <button  onclick="location.href='/index.jsp'">Back to main</button>
</body>
</html>