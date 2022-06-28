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
                                        <h3 style="margin-bottom: 50px" class="card-title"><i class="fa fa-lock"></i> BLOCK USER </h3>
                                        <p class="card-description">
                                            <%--Basic form elements--%>

                                        <div></div>

                                        </p>
                                        <form class="forms-sample" method="post">
                                            <div class="form-group">
                                                <label for="username">User Name</label>
                                                <input readonly id="username" class="form-control" name="username" type="text" placeholder="Username" value="${user.getUserName()}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input readonly type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" value="${user.getPassword()}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputName1">Full Name</label>
                                                <input readonly type="text" class="form-control" id="exampleInputName1" name="full_name" placeholder="Fullname" value="${user.getFullName()}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputAge">Age</label>
                                                <input readonly type="text" class="form-control" id="exampleInputAge" name="age" placeholder="Age" value="${user.getAge()}">
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <label class="col-sm-3 col-form-label">Gender</label>
                                                    <div class="col-sm-9">
                                                        <select class="form-control" value="${user.getGender().getGender()}">
                                                            <option disabled>Male</option>
                                                            <option disabled>Female</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Phone</label>
                                                <input readonly class="form-control" data-inputmask-alias="(+99) 9999-9999" im-insert="true" placeholder="(+99) 9999-9999" value="${user.getPhone()}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email</label>
                                                <input readonly type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" value="${user.getEmail()}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputCity1">City</label>
                                                <input readonly type="text" class="form-control" id="exampleInputCity1" placeholder="Location" value="${user.getCity()}">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleTextarea1">Country</label>
                                                <input readonly class="form-control" id="exampleTextarea1" placeholder="Country" value="${user.getCountry()}"/>
                                            </div>
                                            <div class="form-group row justify-content-end">
                                                <div class="col-md-4">
                                                    <c:choose>
                                                        <c:when test = "${user.getBlocked().getId() == 1}">
                                                            <button type="submit" class="btn btn-outline-success waves-effect waves-light mr-1">
                                                                <i class="fa fa-unlock"></i> Unlock
                                                            </button>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <button type="submit" class="btn btn-outline-danger waves-effect waves-light mr-1">
                                                                <i class="fa fa-lock"></i> Block
                                                            </button>
                                                        </c:otherwise>
                                                    </c:choose>

                                                    <a href="/users" style="margin-left: 10px" class="btn btn-light">
                                                        Cancel
                                                    </a>
                                                </div>
                                                <div class="col-md-8"></div>
                                            </div>
<%--                                            <button type="submit" class="btn btn-outline-danger"><i class="fa fa-lock"></i> Block</button>--%>
<%--                                            <button style="margin-left: 10px" class="btn btn-light">Cancel</button>--%>
                                        </form>
                                        <p></p>
                                        <c:choose>
                                            <c:when test = "${requestScope['message'] == null}" >
                                            </c:when>
                                            <c:when test='${requestScope["message"] == "Khoá người dùng thành công!"}'>
                                                <%@ include file="/alert/success.jsp"%>
                                            </c:when>
                                            <c:when test='${requestScope["message"] == "Mở khoá người dùng thành công!"}'>
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