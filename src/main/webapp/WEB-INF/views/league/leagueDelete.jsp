<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Delete League</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-red w3-opacity w3-right-align">
    <h1>Delete League</h1>
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
     <TD><H1>You want to delete this League?</H1></TD>
    </tr>
</TABLE>
<TABLE BORDER width="100%" align="center">
    <tr align="center" bgcolor="#b22222" >
        <TD><H2>Name of League</H2></TD>
        <TD><H2>Continent</H2></TD>
        <TD><H2>Continent</H2></TD>
        <TD><H2>Short Description</H2></TD>
    </tr>
    <form action="/league/${league.id}/delete" method="post">

        <input type="hidden" value="${league.id}" name="id" />

        <tr>
            <TD><input type="text" value="${league.name}" name="name"/><br/></TD>
            <TD><input type="text" value="${league.continent}" name="phone"/><br/></TD>
            <TD><input type="text" value="${league.country}" name="email"/><br/></TD>
            <TD><input type="text" value="${league.description}" name="description"/><br/></TD>

        </tr>

        <TABLE  width="100%" align="center">


            </tr>
            <tr align="center" bgcolor="#b22222" >
            <TD><button type="submit" class="w3-btn w3-hover-red w3-round-large w3-margin-bottom">Yes, Delete</button></TD>
</tr>


        </TABLE>
    </form>
</TABLE>
<p>
</p>

    <div class="w3-container w3-red w3-opacity w3-right-align w3-padding">

           <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/league'">No, back to Leagues List</button>
        <button class="w3-btn w3-hover-red w3-round-large" onclick="location.href='/index.jsp'">Back to main</button>
    </div>

</body>
</html>


