<%-- 
    Document   : log
    Created on : May 17, 2023, 8:50:07 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : login
    Created on : May 13, 2023, 9:00:01 PM
    Author     : Administrator
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<% out.println("<html><body>");
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String error=request.getParameter("error");
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
out.println("hi");
}
}
if(flag==0)
{%>
    <script>
   alert("Wrong Username/Password, try again");
   window.location= "login.html";
</script>
  <% 
}
else
{
 String site = new String("http://localhost:8084/Resume/details.html");
      response.setStatus(response.SC_MOVED_TEMPORARILY);
      response.setHeader("Location", site); 
}
out.println("</body></html>");
con.close();
%>

