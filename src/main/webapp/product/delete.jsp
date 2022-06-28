<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/16/2022
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Victory Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/assets/vendors\mdi\css\materialdesignicons.min.css">
    <link rel="stylesheet" href="/assets/vendors\simple-line-icons\css\simple-line-icons.css">
    <link rel="stylesheet" href="/assets/vendors\flag-icon-css\css\flag-icon.min.css">
    <link rel="stylesheet" href="/assets/vendors\css\vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="/assets/vendors\font-awesome\css\font-awesome.min.css">
    <link rel="stylesheet" href="/assets/vendors\jquery-bar-rating\fontawesome-stars.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/assets/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/assets/images/favicon.png">

    <!-- plugin css for this page -->
    <link rel="stylesheet" href="..\..\assets\vendors\datatables.net-bs4\dataTables.bootstrap4.css">
    <!-- End plugin css for this page -->

<body>
<div class="container-scroller">
    <%@include file="/navbar.jsp" %>

    <div class="container-fluid page-body-wrapper">
        <div class="row row-offcanvas row-offcanvas-right">
            <!-- partial:partials/_settings-panel.html -->
            <!-- partial -->
            <!-- partial:partials/_sidebar.html -->
            <!-- content-wrapper ends -->
            <%@include file="/left_rightbar.jsp" %>
            <div class="content-wrapper">
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-md-12 grid-margin stretch-card">
                                <div class="card">
                                    <div class="card-body">
                                      <div class="row">
                                          <div class="col-lg-8">
                                              <h3 style="margin-bottom: 50px" class="card-title"><i class="fa fa-trash"></i><i> DELETE WINE</i></h3>
                                              <p class="card-description">
                                          </div>
                                          <%--Basic form elements--%>

                                          <div class="col-lg-4">
                                              <a href="/products?ui=${user.id}" class="btn btn-outline-primary btn-add" style="margin-left: 15px">
                                                  <i class="fa fa-bars"></i> Back to List Product
                                              </a>
                                          </div>
                                      </div>

                                        <div></div>

                                        </p>
                                        <form class="forms-sample" method="post">
                                            <div class="form-group">
                                                <label for="exampleInputName1">Wine name</label>
                                                <input readonly type="text" class="form-control" id="exampleInputName1" name="name" placeholder="Wine name" value="${product.getName()}">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputType">Category</label>
                                                <%--                                                <input type="text" class="form-control" id="exampleInputType" placeholder="Type">--%>
                                                <select type="text" class="form-control" id="exampleInputType" name="category" placeholder="Type">
                                                    <c:forEach var="category" items="${categories}">
                                                        <option disabled value="${category.getId()}" ${(category.getId() == product.getCategory().getId()) ? "selected" : ""}>${category.getCategory()}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="image">Image</label>
                                                <input readonly type="text" class="form-control" id="image" name="image" placeholder="Image" value="${product.getUrlImage()}">
                                            </div>

                                            <%--                                            <div class="form-group">--%>
                                            <%--                                                <label>Image upload</label>--%>
                                            <%--                                                <input type="file" name="img[]" class="file-upload-default">--%>
                                            <%--                                                <div class="input-group col-xs-12">--%>
                                            <%--                                                    <input type="text" class="form-control file-upload-info" disabled="" placeholder="Upload Image">--%>
                                            <%--                                                    <div class="input-group-append">--%>
                                            <%--                                                        <button class="file-upload-browse btn btn-info" type="button">Upload</button>--%>
                                            <%--                                                    </div>--%>
                                            <%--                                                </div>--%>
                                            <%--                                            </div>--%>

                                            <div class="form-group">
                                                <label for="exampleInputPrice">Price</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">$</span>
                                                    </div>
                                                    <input readonly id="exampleInputPrice" name="price" type="number" class="form-control" aria-label="Amount (to the nearest dollar)" placeholder="Price" value="${product.getPrice()}">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text">.00</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="margin-bottom: 50px" class="form-group">
                                                <label for="exampleInputQuantity">Quantity</label>
                                                <input readonly type="number" class="form-control" id="exampleInputQuantity" placeholder="Quantity" name="quantity" value="${product.getQuantity()}">
                                            </div>
                                            <%--                                            <div class="form-group">--%>
                                            <%--                                                <label for="exampleTextarea1">Actions</label>--%>
                                            <%--                                                <button class="btn btn-outline-primary form-control" id="exampleTextarea1" >Edit--%>
                                            <%--                                                </button>--%>
                                            <%--                                            </div>--%>
                                            <button type="submit" class="btn btn-outline-info mr-2">Delete</button>
                                            <button style="margin-left: 10px" class="btn btn-light">
                                                <a href="/products?ui=${user.id}">Cancel</a>
                                            </button>
                                        </form>
                                        <p></p>
                                        <c:choose>
                                            <c:when test = "${requestScope['message'] == null}" >
                                            </c:when>
                                            <c:when test='${requestScope["message"] == "Xóa sản phẩm thành công!"}'>
                                                <%@ include file="/alert/success.jsp"%>
                                            </c:when>
                                            <c:otherwise>
                                                <%@ include file="/alert/warning.jsp"%>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:if test='${requestScope["errors"] != null}'>
                                            <%@ include file="/alert/danger.jsp"%>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->

                    <footer class="footer">
                        <div class="container-fluid clearfix">
                        <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">CodeGym © 2022 <a
                                href="#">Quynh Anh</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted &amp; made with <i
                                    class="mdi mdi-heart text-danger"></i></span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
            </div>
        </div>
        <!-- row-offcanvas ends -->
    </div>
</div>
<script src="/assets/vendors\js\vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="/assets/vendors\jquery-bar-rating\jquery.barrating.min.js"></script>
<script src="/assets/vendors\chart.js\Chart.min.js"></script>
<script src="/assets/vendors\raphael\raphael.min.js"></script>
<script src="/assets/vendors\morris.js\morris.min.js"></script>
<script src="/assets/vendors\jquery-sparkline\jquery.sparkline.min.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="/assets/js\off-canvas.js"></script>
<script src="/assets/js\hoverable-collapse.js"></script>
<script src="/assets/js\misc.js"></script>
<script src="/assets/js\settings.js"></script>
<script src="/assets/js\todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="/assets/js\dashboard.js"></script>

<!-- endinject -->
<!-- Plugin js for this page-->
<script src="..\..\assets\vendors\datatables.net\jquery.dataTables.js"></script>
<script src="..\..\assets\vendors\datatables.net-bs4\dataTables.bootstrap4.js"></script>
<!-- End plugin js for this page-->
<!-- Custom js for this page-->
<script src="..\..\assets\js\data-table.js"></script>



<!-- Plugin js for this page-->
<script src="..\..\vendors\icheck\icheck.min.js"></script>
<script src="..\..\vendors\typeahead.js\typeahead.bundle.min.js"></script>
<script src="..\..\vendors\select2\select2.min.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="..\..\js\off-canvas.js"></script>
<script src="..\..\js\hoverable-collapse.js"></script>
<script src="..\..\js\misc.js"></script>
<script src="..\..\js\settings.js"></script>
<script src="..\..\js\todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="..\..\js\file-upload.js"></script>
<script src="..\..\js\iCheck.js"></script>
<script src="..\..\js\typeahead.js"></script>
<script src="..\..\js\select2.js"></script>
</body>
</html>