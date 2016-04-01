<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Samazon</title>
</head>
<body>
	

		<table>

			<c:forEach var="item" items="${productlist}">
			<form action="ProductDetailsServlet" method="post">
				<tr>
					<td><c:out value="${item.productid}"></c:out></td>
					<td><c:out value="${item.productname}"></c:out></td>
					<td><img src="${item.productimage}"
						style='width: 300px; height: 300px; border: 2;'></td>

					<td><input type="hidden" name="productId" value="${item.productid}"> <input
						type="submit" value="view details"></td>


				</tr>
				</form>
			</c:forEach>


		</table>
	
</body>
</html>