<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="dao.ProductManagementDAO" %>
<%@page import="pojo.Product" %>
<%@page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%
		String productId = request.getParameter("prodId");
		Product product = ProductManagementDAO.getProductById(productId);
	%>
	<div align="center">
		<form action="processEditProduct" method="post">
			<table class="productTable">
				<thead>
					<tr>
						<th colspan="2">Product Details</th>
					</tr>
				</thead>
				<tr>
					<td>Product ID</td>
					<td><input type="text" name="prodId" size="20" 
						value="<%= productId%>" class="productTextField" readonly/></td>
				</tr>
				<tr>
					<td>Product ID</td>
					<td><input type="text" name="prodId" size="20" 
						value="<%=product.getProductName()%>" class="productTextField" /></td>
				</tr>
				<tr>
					<td>Category</td>
					<td><input type="text" name="prodCategory" size="20" 
						value="<%=product.getProductCategory()%>" class="productTextField" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="prodPrice" size="20" 
						value="<%=product.getProductPrice()%>" class="productTextField" /></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Save</button>
		</form>
	</div>
</body>
</html>