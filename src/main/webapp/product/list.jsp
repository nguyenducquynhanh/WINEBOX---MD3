3<%--
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
    <title>Vip Admin</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/assets/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/assets/images\favicon.png">

    <!-- plugin css for this page -->
    <link rel="stylesheet" href="..\..\assets\vendors\datatables.net-bs4\dataTables.bootstrap4.css">
    <!-- End plugin css for this page -->

<body>
<div class="container-scroller">
    <%@include file="/navbar.jsp" %>

    <div class="container-fluid page-body-wrapper">
        <div class="row row-offcanvas row-offcanvas-right">
            <%@include file="/left_rightbar.jsp" %>
            <div class="content-wrapper">
                <div class="card">
                    <div class="card-body">
                        <div style="margin-bottom: 80px" class="row">
                            <div class="col-md-6">
                                <h4 style="font-size: 30px;" class="card-title"><strong><i> <i class="fas fa-wine-glass"></i>   𝐋𝐈𝐒𝐓 𝐖𝐈𝐍𝐄</i></strong></h4>
                            </div>
                            <div  class="col-md-4"></div>
                            <div class="col-md-2" style="background:#c7f6fa; float: right">
                                <ul class="navbar-nav">
                                    <li class="nav-item dropdown d-none d-lg-flex">
                                        <a class="nav-link dropdown-toggle nav-btn" id="actionDropdown" href="#" data-toggle="dropdown">
                                            <button style="font-size:18px" class="btn"><strong>+ Create New</strong></button>
                                        </a>
                                        <div class="dropdown-menu navbar-dropdown dropdown-left" aria-labelledby="actionDropdown">
                                            <a class="dropdown-item" href="/products?action=create">
                                                 <i class="fa fa-glass"></i>
                                                Add New Product
                                            </a>
                                            <a class="dropdown-item" href="/#">
                                                <i class="fas fa-user-shield"></i>
                                                 Add New Admin
                                            </a>
                                            <a class="dropdown-item" href="/#">
                                                <i class="fas fa-user"></i>
                                                 Add New User
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <div id="order-listing_wrapper"
                                         class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                        <div class="row">
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <table class="table table-hover" id="order-listing" class="table dataTable no-footer" role="grid"
                                                       aria-describedby="order-listing_info">
                                                    <thead style="background: linear-gradient(88deg, #aefbff, #d9fffd);">
                                                    <tr class="theadtitle" role="row">
                                                        <th  class="sorting_asc" tabindex="0"
                                                            aria-controls="order-listing" rowspan="1" colspan="1"
                                                            aria-sort="ascending"
                                                            aria-label="Product #: activate to sort column descending"
                                                            style="width: 75.7px;">ID
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                            rowspan="1" colspan="1"
                                                            aria-label="Purchased On: activate to sort column ascending"
                                                            style="width: 129.5px;">Name
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                            rowspan="1" colspan="1"
                                                            aria-label="Customer: activate to sort column ascending"
                                                            style="width: 94.5625px;">Type
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                            rowspan="1" colspan="1"
                                                            aria-label="Ship to: activate to sort column ascending"
                                                            style="width: 72.2px;">Image
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                            rowspan="1" colspan="1"
                                                            aria-label="Base Price: activate to sort column ascending"
                                                            style="width: 102.1px;">Price
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                            rowspan="1" colspan="1"
                                                            aria-label="Base Price: activate to sort column ascending"
                                                            style="width: 102.1px;">Quantity
                                                        </th>
                                                        <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                            rowspan="1" colspan="1"
                                                            aria-label="Actions: activate to sort column ascending"
                                                            style="width: 78.925px;">Actions
                                                        </th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var = "product" items="${products}">
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">${product.getId()}</td>
                                                                <td>${product.getName()}</td>
                                                                <td>${product.getCategory().getCategory()}</td>
                                                                <td>
                                                                    <img src="${product.getUrlImage()}" style="width: 100px; height: auto"/>
                                                                </td>
                                                                <td>${product.getPrice()}</td>
                                                                <td>${product.getQuantity()}</td>
                                                                <td>
                                                                    <a style="margin-bottom:5px; " href="/products?ui=${user.getId()}&action=edit&id=${product.id}" class="btn btn-secondary" title="Edit">
                                                                        <i class="fas fa-pen-square"></i>
                                                                    </a>

                                                                    <a href="/products?ui=${user.getId()}&action=delete&id=${product.id}" class="btn btn-danger" title="Delete">
                                                                        <i style="color: #4a4b59" class="fas fa-trash"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>


                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-md-5">
                                                <div class="dataTables_info" id="order-listing_info" role="status"
                                                     aria-live="polite">Showing 1 to 10 of 10 entries
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-7">
                                                <div class="dataTables_paginate paging_simple_numbers"
                                                     id="order-listing_paginate">
<%--                                                    <ul class="pagination">--%>
<%--                                                        <li class="paginate_button page-item previous disabled"--%>
<%--                                                            id="order-listing_previous">--%>
<%--                                                            <a href="#" aria-controls="order-listing" data-dt-idx="0"--%>
<%--                                                               tabindex="0" class="page-link">Previous</a>--%>
<%--                                                        </li>--%>
<%--                                                        <li class="paginate_button page-item active">--%>
<%--                                                            <a href="#" aria-controls="order-listing" data-dt-idx="1"--%>
<%--                                                               tabindex="0" class="page-link">1</a>--%>
<%--                                                        </li>--%>
<%--                                                        <li class="paginate_button page-item next disabled"--%>
<%--                                                            id="order-listing_next">--%>
<%--                                                            <a href="#" aria-controls="order-listing" data-dt-idx="2"--%>
<%--                                                               tabindex="0" class="page-link">Next</a>--%>
<%--                                                        </li>--%>
<%--                                                    </ul>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
</body>
</html>