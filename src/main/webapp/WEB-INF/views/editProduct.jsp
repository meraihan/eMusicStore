<%--
  Created by IntelliJ IDEA.
  User: rayhan
  Date: 12/1/16
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
  <div class="container">
    <div class="page-header">
      <h1>Edit Product</h1>

      <p class="lead">Please update the product information here.</p>
    </div>

    <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct" method="POST" commandName="product" enctype="multipart/form-data">

    <%--<form:hidden path="productId" value="${product.productId}"/>--%>

    <div class="form-group">
      <label for="productId">Product ID</label>
      <form:input path="productId" id="id" class="form-Control" value="${product.productId}"/>
    </div>
    <div class="form-group">
      <label for="name">Name</label>
      <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
    </div>
    <div class="form-group">
      <label for="category">Category</label>
      <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
      <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record"/>Record</label>
      <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory"/>Accessory</label>
    </div>

    <div class="form-group">
      <label for="description">Description</label>
      <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
    </div>

    <div class="form-group">
      <label for="price">Price</label>
      <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
    </div>

    <div class="form-group">
      <label for="condition">Condition</label>
      <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="Old"/>Old</label>
      <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="New"/>New</label>
    </div>

    <div class="form-group">
      <label for="status">Status</label>
      <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Actice"/>Active</label>
      <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Inactive"/>Inactive</label>
    </div>

    <div class="form-group">
      <label for="unitinStack">Unit In Stock</label>
      <form:input path="unitinStack" id="unitinStack" class="form-Control" value="${product.unitinStack}"/>
    </div>

    <div class="form-group">
      <label for="manufacturer">Manufacturer</label>
      <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
    </div>

    <div class="form-group">
      <label class="control-label" for="productImage">Upload Picture</label>
      <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
    </div>

    <br><br>
    <input type="submit" value="submit" class="btn btn-default"/>
    <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

    </form:form>

    <%@include file="/WEB-INF/views/template/footer.jsp" %>
