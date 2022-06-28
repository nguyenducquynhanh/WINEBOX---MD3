<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/23/2022
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="utf-8">
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
    <link rel="stylesheet" href="/assets/css\style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/assets/images\favicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="..\..\assets\vendors\datatables.net-bs4\dataTables.bootstrap4.css">
</head>
<body>
    <div class="container">
        <form action="" method="post">
            <div class=" row" style="margin-top: -70px">
                <c:forEach var="user" items="${users}">
                    <c:choose>
                        <c:when test="${user.getRole().value == 'ADMIN'}">
                            <div class="col-md-4 grid-margin stretch-card">
                                <div  style="background-color: #fff3f3" class="card login table table-hover">
                                    <a class="a-login" href="/login?id=${user.getId()}">
                                        <div class="card-body">
                                            <div class="d-flex flex-row flex-wrap">
                                                <img style="border-radius: 50%; overflow: hidden" src="${user.getUrlImage()}"  class="img-lg rounded img-user" alt="profile image">
                                                <div class="ml-3">
                                                    <h6 style="margin-bottom: 3px">${user.getFullName()}</h6>
                                                    <p style="margin-bottom: -10px" class="text-muted"><i>${user.getEmail()}</i></p>
                                                    <p style="margin-bottom: -10px; color: #a62ee1" class="mt-2 font-weight-bold">${user.getGender().getGender()}</p>
                                                    <p class="mt-2 text-success font-weight-bold">${user.getBlocked().getStatus()}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                </c:forEach>
            </div>
        </form>
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
<!-- End custom js for this page-->
</body>

</html>
