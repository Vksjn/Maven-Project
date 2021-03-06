<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<h2>Manage Supplier</h2>
<div id="CreateSupplier">
<form action="manage_supplier_add">
<input type="text" name="id" id="id">
<input type="text" name="name" id="name">
<input type="text" name="address" id="address">
<input type="submit" value="Create Supplier">
</form>
</div>
 <h2> Update Supplier</h2>
<div>
<form action="manage_supplier_update">
<table>
<tr>
<td> <input type="text" name="id" value="${selectedSupplier.id}"></td>
<td> <input type="text" name="id" value="${selectedSupplier.name}"></td>
<td> <input type="text" name="id" value="${selectedSupplier.address}"></td>
<td><input type="submit" value="Update Category"></td>
</table>
</form>
</div> 
<h2>  Delete & Update  the Category</h2>
<div id="Showsuppliers">
<table border="2">
<thead>
<tr>
<td> Supplier ID</td>
<td> Supplier Name</td>
<td> Supplier Address</td>
</tr>
</thead>

<c:forEach var="supplier" items="${supplerList}">
<tr>
<td> ${supplier.id}</td>
<td> ${supplier.name}</td>
<td> ${supplier.address}</td>
<td> <a href="manage_supplier_delete/${supplier.id}">Delete</a></td>
<td> <a href="manage_supplier_edit/${supplier.id}">Edit</a></td>
</tr>
</c:forEach>
</table>
</div>

</body>
</html>