<%@page import="java.util.List"%>
<%@page import="models.student"%>
<%@page import="dbconnections.studentdb"%>
<%@page import="services.studentservice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>student management system</title>
<%@include file="bootstrap.jsp" %>
</head>
<body>
<h1>welcome page</h1>
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">BRANCH</th>
      <th scope="col">EMAIL</th>
      <th scope="col">PHONENO</th>
      <th scope="col">ACTIONS</th>
    </tr>
  </thead>
  <tbody>
  <%
  studentservice std = new studentservice(studentdb.getConnection());
  List<student> stu =std.fetchall();
  for(student st : stu){
	  
  %>
    <tr>
      <th scope="row"><%=st.getId() %></th>
      <td><%=st.getName() %></td>
      <td><%=st.getBranch() %></td>
      <td><%=st.getEmail() %></td>
      <td><%=st.getPhoneno() %></td>
      <td>
      <button class="btn btn-outline-warning">Update</button>
      <a href="delete?id=<%=st.getId()%>">
      <button class="btn btn-outline-danger">Delete</button>
      </a>
      </td>
    </tr>
    <%}%>
  </tbody>
</table>
</body>
</html>
