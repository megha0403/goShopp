<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected products in your shopping cart</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">

            <div ng-controller = "cartCtrl">

                <div>
                    <a class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                    
                </div>

                <br/><br/><br/>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(product.id)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total:</th>
                        <th></th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/showproducts" />" class="btn btn-default">Continue Shopping</a>
                <a href="<spring:url value="/shipping" />" class="btn btn-default" align="right">Next</a>
            </div>
        </section>



<%@ include file="/WEB-INF/views/template/footer.jsp" %>