<%-- 
    Document   : details
    Created on : May 16, 2023, 7:42:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : details
    Created on : May 16, 2023, 7:42:49 PM
    Author     : Administrator
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<% response.setContentType("text/html");
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String linkedin=request.getParameter("linkedin");
String github=request.getParameter("github");
String photo=request.getParameter("photo");
String profile=request.getParameter("profile");
String college=request.getParameter("college");
String qualification_college=request.getParameter("qualification_college");
String startyear_college=request.getParameter("startyear_college");
String endyear_college=request.getParameter("endyear_college");
String city_college=request.getParameter("city_college");
String country_college=request.getParameter("country_college");
String percentage_college=request.getParameter("percentage_college");
String school=request.getParameter("school");
String qualification_school=request.getParameter("qualification_school");
String startyear_school=request.getParameter("startyear_school");
String endyear_school=request.getParameter("endyear_school");
String city_school=request.getParameter("city_school");
String country_school=request.getParameter("country_school");
String percentage_school=request.getParameter("percentage_school");
String title_project1=request.getParameter("title_project1");
String link_project1=request.getParameter("link_project1");
String Description_project1=request.getParameter("Description_project1");
String title_project2=request.getParameter("title_project2");
String link_project2=request.getParameter("link_project2");
String Description_project2=request.getParameter("Description_project2");
String skill1=request.getParameter("skill1");
String skill2=request.getParameter("skill2");
String skill3=request.getParameter("skill3");
String skill4=request.getParameter("skill4");
String skill5=request.getParameter("skill5");
String skill6=request.getParameter("skill6");
String interest1=request.getParameter("interest1");
String interest2=request.getParameter("interest2");
String interest3=request.getParameter("interest3");
String interest4=request.getParameter("interest4");
String interest5=request.getParameter("interest5");
String interest6=request.getParameter("interest6");
String language1=request.getParameter("language1");
String language2=request.getParameter("language2");%>
<html>
<head>
<style>
#full{
width:900px;
height:1200px;
margin:auto;
}
#left{
width:330px;
height:1200px;
background-color:#0e374e;
color:white;
text-align:center;
position:absolute;
border:2px solid #0e374e;
}
#right{
width:570px;
height:1200px;
text-align:center;
margin-left:330px;
border:2px solid #0e374e;
}
#left p{
font-size:20px;
}
#photo
{
width:150px;
height:150px;
border-radius:50%;
margin-top:50px;
}
hr{
width:150px;
}
#right h2{
background-color:#edf0f2;
color:#0e374e;
}
table tr td{
padding:20px;
text-align:center;
}
table{
margin:auto
}
p{
padding:10px;
}
</style>
</head>
<div id="full">
<div id="left">
<img src=<%= photo %> id="photo">
<h1><%= name %></h1>
<p><%= email %></p>
<p><%= linkedin %></p>
<p><%= github %></p>
<h1>Interest</h1><hr>
<p><%= interest1 %></p>
<p><%= interest2 %></p>
<p><%= interest3 %></p>
<p><%= interest4 %></p>
<p><%= interest5 %></p>
<p><%= interest6 %></p>
<h1>Language Known</h1><hr>
<p><%= language1 %></p>
<p><%= language2 %></p>
</div>

<div id="right">
<h2>Profile</h2>
<p><%= profile %></p><br><br>
<h2>Education</h2>
<table>
<tr>
<td><%= city_college+", "+country_college %></td>
<td><b><%= qualification_college %></b><br><%= college %><br><%= percentage_college+"percent<br>"+startyear_college+" - "+endyear_college %></td></tr>
<tr>
<td><%= city_school+", "+country_school %></td>
<td><b><%= qualification_school %></b><br><%= school %><br><%= percentage_college+"percent<br>"+startyear_school+" - "+endyear_school %></td></tr>
</table><br><br>
<h2>Project</h2>
<table>
<tr>
<td><b><%= title_project1 %></b></td>
<td><%= Description_project1 %><br><%= link_project1 %></td></tr>
<tr>
<td><b><%= title_project2 %></b></td>
<td><%= Description_project2 %><br><%= link_project2 %></td></tr>
</table><br><br>
<h2>Skills</h2>
<p><%= skill1 %></p>
<p><%= skill2 %></p>
<p><%= skill3 %></p>
<p><%= skill4 %></p>
<p><%= skill5 %></p>
<p><%= skill6 %></p>
</div>
</div>
<!--a href="http://localhost:8084/Resume/details.jsp" download><button>Download</button></a-->
<!--input type="submit" onclick="window.print()" value="download"-->
</body>
</html>
