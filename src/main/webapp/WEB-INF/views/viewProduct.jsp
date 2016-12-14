<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Details</h1>

            <p class="lead">Here is the details about the product</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" style="width: 100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>

                    <p>${product.productDescription}</p>

                    <p>
                        <strong>Manufacturer </strong>: ${product.productManufacturer}
                    </p>

                    <p>
                        <strong>Category </strong>: ${product.productCategory}
                    </p>

                    <p>
                        <strong>Condition </strong> : ${product.productCondition}
                    </p>

                    <h4>${product.productPrice} TK</h4>

                    <br>
                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory"/>
                    </c:if>

                    < ng-controller="cartCtrl">
                        <a href="<c:url value="${url}" /> " class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large"
                           ng-click="addToCart('${product.productId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span>Order Now</a>
                        <a href="<spring:url value="/cart"/>" class="btn btn-default">
                            <span class="glyphicon glyphicon-hand-right"/>
                        </a>
                    </p>
                </div>
            </div>
        </div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>