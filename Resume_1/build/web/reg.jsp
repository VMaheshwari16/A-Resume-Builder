<%-- 
    Document   : reg
    Created on : May 21, 2023, 1:07:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<% response.setContentType("text/html");
out.println("<html><body>");
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String dbDriver = "com.mysql.jdbc.Driver";
String dbURL = "jdbc:mysql:// localhost:3306/";
String dbName = "db";
String dbUsername = "root";
String dbPassword = "root";
Class.forName(dbDriver);
Connection con = DriverManager.getConnection(dbURL + dbName,dbUsername,dbPassword);
Statement stmt=con.createStatement();
String sqlstmt="select id,pwd from login";
ResultSet rs=stmt.executeQuery(sqlstmt);
int flag=0;
while(rs.next())
{
if(id.equals(rs.getString(1))&&pwd.equals(rs.getString(2)))
{
flag=1;
}
}
if(flag==1)
{%>
    <script>
   alert("Invalid Username/Password, try again");
   window.location= "reg.html";
</script>
<%
}
else
{ Statement stmt1=con.createStatement();
stmt1.executeUpdate("insert into login values('"+id+"','"+pwd+"');");
 String site = new String("http://localhost:8084/Resume/details.html");
      response.setStatus(response.SC_MOVED_TEMPORARILY);
      response.setHeader("Location", site); 
}
out.println("</body></html>");
con.close();
%>
profile.
