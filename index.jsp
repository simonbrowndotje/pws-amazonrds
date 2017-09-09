<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>

  <pre>
  <%
      final String url = "jdbc:mysql://pws-test.coa8xbqrp52d.us-east-1.rds.amazonaws.com:3306/test?verifyServerCertificate=true&useSSL=true&requireSSL=true";
      final String username = "username";
      final String password = "password";

      try {
          Class.forName("com.mysql.jdbc.Driver");
          DriverManager.getConnection(url, username, password);
  %>
    Connection succeeded.
  <%
          System.out.println("Connection to Amazon RDS succeeded");
      } catch (SQLException e) {
            e.printStackTrace(new java.io.PrintWriter(out));
            e.printStackTrace();
      }
  %>
  </pre>

  </body>
</html>