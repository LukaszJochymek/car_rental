<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 16.04.2023
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
  <tr>
    <th>FIELD User</th>
    <th>MESSAGE</th>

  </tr>
  <c:forEach items="${userValidations}" var="val">
    <tr>
      <td>${val.getPropertyPath()}</td>
      <td>${val.getMessage()}</td>

    </tr>
  </c:forEach>

</table>
</body>
</html>
