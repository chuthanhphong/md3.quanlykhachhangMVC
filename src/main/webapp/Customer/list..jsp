<%--
  Created by IntelliJ IDEA.
  User: Windboy
  Date: 01/07/2021
  Time: 11:45 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CustomerList</title>
</head>
<body>
<h1>Customer</h1>
<p>
  <a href="/Customer?action=create">Create new Customer</a>
</p>
<table border="1">
<tr>
  <th>Name</th>
  <th>Email</th>
  <th>Address</th>
  <th>Edit</th>
  <th>Delete</th>
</tr>
  <c:forEach items ='${requestScope["customers"]}' var ="customer">
    <tr>
      <td><a href="${pageContext.request.contextPath}/Customer?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
      <td>${customer.getEmail()}</td>
      <td>${customer.getAddress()}</td>
      <td><a href="${pageContext.request.contextPath}/Customers?action=edit&id=${customer.getId()}">edit</a></td>
      <td><a href="${pageContext.request.contextPath}/Customers?action=delete&id=${customer.getId()}">delete</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
