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
            <!-- partial:partials/_settings-panel.html -->
            <!-- partial -->
            <!-- partial:partials/_sidebar.html -->
            <!-- content-wrapper ends -->
            <%@include file="/left_rightbar.jsp" %>
            <div class="content-wrapper">
                <div class="card">
                    <div class="card-body">
                        <div style="margin-bottom: 80px" class="row">
<%--                            LIST ADMIN--%>
                            <div class="col-md-6">
                                <h4 style="font-size: 30px;" class="card-title"><strong><i> <i class="fas fa-users"></i>   LIST ADMIN</i></strong></h4>
                            </div>
                            <div  class="col-md-4"></div>
                            <div class="col-md-2"></div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <div id="order-listing_wrapper1"
                                             class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                            <div class="row">
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <table class="table table-hover table dataTable no-footer" id="order-listing1" role="grid"
                                                           aria-describedby="order-listing_info">
                                                        <thead style="background: linear-gradient(88deg, #aefbff, #d9fffd);">
                                                        <tr class="theadtitle" role="row">
                                                            <th  class="sorting_asc" tabindex="0"
                                                                 aria-controls="order-listing" rowspan="1" colspan="1"
                                                                 aria-sort="ascending"
                                                                 aria-label="User #: activate to sort column descending"
                                                                 style="width: 54.5625px;">ID
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Purchased On: activate to sort column ascending"
                                                                style="width: 94.5625px;"> User Name
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="2" colspan="1"
                                                                aria-label="Customer: activate to sort column ascending"
                                                                style="width: 94.5625px;">Full Name
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="2" colspan="1"
                                                                aria-label="Customer: activate to sort column ascending"
                                                                style="width: 54.5625px;">Image
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Ship to: activate to sort column ascending"
                                                                style="width: 54.5625px;">Age
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Ship to: activate to sort column ascending"
                                                                style="width: 72.2px;">Gender
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Base Price: activate to sort column ascending"
                                                                style="width: 102.1px;">Phone
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="2" colspan="1"
                                                                aria-label="Base Price: activate to sort column ascending"
                                                                style="width: 102.1px;">Email
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Base Price: activate to sort column ascending"
                                                                style="width: 78.925px;">City
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Actions: activate to sort column ascending"
                                                                style="width: 78.925px;">Country
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Actions: activate to sort column ascending"
                                                                style="width: 78.925px;">Status
                                                            </th>


                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var = "user" items="${users}">
                                                            <c:choose>
                                                                <c:when test="${user.getRole().value == 'ADMIN'}">
                                                                    <tr role="row" class="odd">
                                                                        <td class="sorting_1">${user.getId()}</td>
                                                                        <td>${user.getUserName()}</td>
                                                                        <td>${user.getFullName()}</td>
                                                                        <td>
                                                                            <img src="${user.getUrlImage()}" style="width: 70px; height: auto"/>
                                                                        </td>
                                                                        <td>${user.getAge()}</td>
                                                                        <td>${user.getGender().getGender()}</td>
                                                                        <td>${user.getPhone()}</td>
                                                                        <td>${user.getEmail()}</td>
                                                                        <td>${user.getCity()}</td>
                                                                        <td>${user.getCountry()}</td>
                                                                        <td>${user.getBlocked().getStatus()}</td>
<%--                                                                        <td>--%>
<%--                                                                            <c:choose>--%>
<%--                                                                                <c:when test = "${user.getBlocked().getId() == 1}">--%>
<%--                                                                                    <a href="/users?action=block&id=${user.id}" class="btn btn-outline-success" title="Unlock">--%>
<%--                                                                                        <i class="fas fa-unlock"></i>--%>
<%--                                                                                    </a>--%>
<%--                                                                                </c:when>--%>
<%--                                                                                <c:otherwise>--%>
<%--                                                                                    <a href="/users?action=block&id=${user.id}" class="btn btn-outline-danger" title="Block">--%>
<%--                                                                                        <i class="fas fa-lock"></i>--%>
<%--                                                                                    </a>--%>
<%--                                                                                </c:otherwise>--%>
<%--                                                                            </c:choose>--%>
<%--                                                                        </td>--%>
                                                                    </tr>
                                                                </c:when>
                                                            </c:choose>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<%--                            LIST USER--%>

                            <div style="margin-top: 70px" class="col-md-6">
                                <h4 style="font-size: 30px;" class="card-title"><strong><i> <i class="fas fa-users"></i>   LIST USER</i></strong></h4>
                            </div>
                            <div  class="col-md-4"></div>
                            <div class="col-md-2"></div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <div id="order-listing_wrapper"
                                             class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                            <div class="row">
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <table class="table table-hover table dataTable no-footer" id="order-listing" role="grid"
                                                           aria-describedby="order-listing_info">
                                                        <thead style="background: linear-gradient(88deg, #aefbff, #d9fffd);">
                                                        <tr class="theadtitle" role="row">
                                                            <th  class="sorting_asc" tabindex="0"
                                                                 aria-controls="order-listing" rowspan="1" colspan="1"
                                                                 aria-sort="ascending"
                                                                 aria-label="User #: activate to sort column descending"
                                                                 style="width: 54.5625px;">ID
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Purchased On: activate to sort column ascending"
                                                                style="width: 94.5625px;"> User Name
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="2" colspan="1"
                                                                aria-label="Customer: activate to sort column ascending"
                                                                style="width: 94.5625px;">Full Name
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="2" colspan="1"
                                                                aria-label="Customer: activate to sort column ascending"
                                                                style="width: 54.5625px;">Image
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Ship to: activate to sort column ascending"
                                                                style="width: 54.5625px;">Age
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Ship to: activate to sort column ascending"
                                                                style="width: 72.2px;">Gender
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Base Price: activate to sort column ascending"
                                                                style="width: 102.1px;">Phone
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="2" colspan="1"
                                                                aria-label="Base Price: activate to sort column ascending"
                                                                style="width: 102.1px;">Email
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Base Price: activate to sort column ascending"
                                                                style="width: 78.925px;">City
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Actions: activate to sort column ascending"
                                                                style="width: 78.925px;">Country
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Actions: activate to sort column ascending"
                                                                style="width: 78.925px;">Status
                                                            </th>
                                                            <th class="sorting" tabindex="0" aria-controls="order-listing"
                                                                rowspan="1" colspan="1"
                                                                style="width: 78.925px;">Actions
                                                            </th>

                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var = "user" items="${users}">
                                                            <c:choose>
                                                                <c:when test="${user.getRole().value == 'USER'}">
                                                                    <tr role="row" class="odd">
                                                                        <td class="sorting_1">${user.getId()}</td>
                                                                        <td>${user.getUserName()}</td>
                                                                        <td>${user.getFullName()}</td>
                                                                        <td>
                                                                            <img src="${user.getUrlImage()}" style="width: 70px; height: auto"/>
                                                                        </td>
                                                                        <td>${user.getAge()}</td>
                                                                        <td>${user.getGender().getGender()}</td>
                                                                        <td>${user.getPhone()}</td>
                                                                        <td>${user.getEmail()}</td>
                                                                        <td>${user.getCity()}</td>
                                                                        <td>${user.getCountry()}</td>
                                                                        <td>${user.getBlocked().getStatus()}</td>
                                                                        <td>
                                                                            <c:choose>
                                                                                <c:when test = "${user.getBlocked().getId() == 1}">
                                                                                    <a href="/users?action=block&id=${user.id}" class="btn btn-outline-success" title="Unlock">
                                                                                        <i class="fas fa-unlock"></i>
                                                                                    </a>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <a href="/users?action=block&id=${user.id}" class="btn btn-outline-danger" title="Block">
                                                                                        <i class="fas fa-lock"></i>
                                                                                    </a>
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </td>
                                                                    </tr>
                                                                </c:when>
                                                            </c:choose>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
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
v
</html>