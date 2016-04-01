<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>

			<c:forEach var="item" items="${shoppinglist}">
			<form action="ConfirmationPage" method="post">
				<tr>
					
					<td>
					  <input type="hidden" name="productName"
						value=${item.productname}>
					<c:out value="${item.productname}"></c:out></td>
					
					<input type="hidden" name="productPrice"
						value=${item.productprice}>
					<c:out value="${item.productprice}"></c:out></td>

					<td><input type="hidden" name="productId"
						value="${item.productid}"> <input type="submit"
						value="Confirm"></td>


				</tr>
				</form>
			</c:forEach>

</body>
</html>