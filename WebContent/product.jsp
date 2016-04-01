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

			<c:forEach var="item" items="${productdetails}">
			<form action="ShoppingCartServlet" method="post">
				<tr>
					<td><c:out value="${item.productid}"></c:out></td>
					<td>
					<input type="hidden" name="productName"
						value=${item.productname}>
					<c:out value="${item.productname}"></c:out></td>
					<td><img src="${item.productimage}"
						style='width: 300px; height: 300px; border: 2;'></td>
					<td><c:out value="${item.productdescription}"></c:out></td>
					<td>
					<input type="hidden" name="productPrice"
						value=${item.productprice}>
					<c:out value="${item.productprice}"></c:out></td>

					<td><input type="hidden" name="productId"
						value=${item.productid}> <input type="submit"
						value="Add to cart"></td>


				</tr>
				</form>
			</c:forEach>




		</table>
	

	<form action="SamazonServlet" method="post">

		<input type="submit" value="Back">

	</form>
</body>
</html>