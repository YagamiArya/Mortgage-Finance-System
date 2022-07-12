<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "mortgage";
String userId = "root";
String password = "root";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Mortgage Items</strong></font></h2>
<table class="table table-striped">
<tr>

</tr>
<tr bgcolor="yellow">
<td><b>id</b></td>
<td><b>Mortgage_item_type</b></td>
<td><b>value</b></td>
<td><b>rate_of_interest</b></td>
<td><b>last_updated_date</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM mortgage";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="lavender">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("Mortgage_item_type") %></td>
<td><%=resultSet.getDouble("value") %></td>
<td><%=resultSet.getInt("rate_of_interest") %></td>
<td><%=resultSet.getString("last_updated_date") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br>
<h2>View <a href="terms&conditions">Terms & conditions</a></h2>