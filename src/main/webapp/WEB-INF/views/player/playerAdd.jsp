<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Add New Player</title>
</head>
<p>
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
    </tr>

    <form action = "/league/${player.leagueId}/club/${player.clubId}/player/createPlayer" method="post">
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


        <TABLE  width="80" align="center">
            <tr align="right" bgcolor="#00ff7f" >
                <TD><button >Add This Player</button></TD>
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

<button  onclick="location.href='/league/${player.leagueId}/club/${player.clubId}/clubShowById'">Back to Club</button>
<button  onclick="location.href='/league/${player.leagueId}/club'">Back to Club List of League</button>
<button  onclick="location.href='/league'">Back to Leagues List</button>
<button  onclick="location.href='/index.jsp'">Back to main</button>
</body>
</html>