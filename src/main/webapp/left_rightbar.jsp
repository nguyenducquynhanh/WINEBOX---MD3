<div id="right-sidebar" class="settings-panel">
  <i class="settings-close mdi mdi-close"></i>
  <ul class="nav nav-tabs" id="setting-panel" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
    </li>
  </ul>
  <div class="tab-content" id="setting-content">
    <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
      <div class="add-items d-flex px-3 mb-0">
        <form class="form w-100">
          <div class="form-group d-flex">
            <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
            <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
          </div>
        </form>
      </div>
      <div class="list-wrapper px-3">
        <ul class="d-flex flex-column-reverse todo-list">
          <li>
            <div class="form-check">
              <label class="form-check-label">
                <input class="checkbox" type="checkbox">
                Team review meeting at 3.00 PM
              </label>
            </div>
            <i class="remove mdi mdi-close-circle-outline"></i>
          </li>
          <li>
            <div class="form-check">
              <label class="form-check-label">
                <input class="checkbox" type="checkbox">
                Prepare for presentation
              </label>
            </div>
            <i class="remove mdi mdi-close-circle-outline"></i>
          </li>
          <li>
            <div class="form-check">
              <label class="form-check-label">
                <input class="checkbox" type="checkbox">
                Resolve all the low priority tickets due today
              </label>
            </div>
            <i class="remove mdi mdi-close-circle-outline"></i>
          </li>
          <li class="completed">
            <div class="form-check">
              <label class="form-check-label">
                <input class="checkbox" type="checkbox" checked="">
                Schedule meeting for next week
              </label>
            </div>
            <i class="remove mdi mdi-close-circle-outline"></i>
          </li>
          <li class="completed">
            <div class="form-check">
              <label class="form-check-label">
                <input class="checkbox" type="checkbox" checked="">
                Project review
              </label>
            </div>
            <i class="remove mdi mdi-close-circle-outline"></i>
          </li>
        </ul>
      </div>
      <div class="events py-4 border-bottom px-3">
        <div class="wrapper d-flex mb-2">
          <i class="mdi mdi-circle-outline text-primary mr-2"></i>
          <span>Feb 11 2018</span>
        </div>
        <p class="mb-0 font-weight-thin text-gray">Creating component page</p>
        <p class="text-gray mb-0">build a js based app</p>
      </div>
      <div class="events pt-4 px-3">
        <div class="wrapper d-flex mb-2">
          <i class="mdi mdi-circle-outline text-primary mr-2"></i>
          <span>Feb 7 2018</span>
        </div>
        <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
        <p class="text-gray mb-0 ">Call Sarah Graves</p>
      </div>
    </div>
    <!-- To do section tab ends -->
    <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
      <div class="d-flex align-items-center justify-content-between border-bottom">
        <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
        <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
      </div>
      <ul class="chat-list">
        <li class="list active">
          <div class="profile"><img src="images\faces\face1.jpg" alt="image"><span class="online"></span></div>
          <div class="info">
            <p>Thomas Douglas</p>
            <p>Available</p>
          </div>
          <small class="text-muted my-auto">19 min</small>
        </li>
        <li class="list">
          <div class="profile"><img src="images\faces\face2.jpg" alt="image"><span class="offline"></span></div>
          <div class="info">
            <div class="wrapper d-flex">
              <p>Catherine</p>
            </div>
            <p>Away</p>
          </div>
          <div class="badge badge-success badge-pill my-auto mx-2">4</div>
          <small class="text-muted my-auto">23 min</small>
        </li>
        <li class="list">
          <div class="profile"><img src="images\faces\face3.jpg" alt="image"><span class="online"></span></div>
          <div class="info">
            <p>Daniel Russell</p>
            <p>Available</p>
          </div>
          <small class="text-muted my-auto">14 min</small>
        </li>
        <li class="list">
          <div class="profile"><img src="images\faces\face4.jpg" alt="image"><span class="offline"></span></div>
          <div class="info">
            <p>James Richardson</p>
            <p>Away</p>
          </div>
          <small class="text-muted my-auto">2 min</small>
        </li>
        <li class="list">
          <div class="profile"><img src="images\faces\face5.jpg" alt="image"><span class="online"></span></div>
          <div class="info">
            <p>Madeline Kennedy</p>
            <p>Available</p>
          </div>
          <small class="text-muted my-auto">5 min</small>
        </li>
        <li class="list">
          <div class="profile"><img src="images\faces\face6.jpg" alt="image"><span class="online"></span></div>
          <div class="info">
            <p>Sarah Graves</p>
            <p>Available</p>
          </div>
          <small class="text-muted my-auto">47 min</small>
        </li>
      </ul>
    </div>
    <!-- chat tab ends -->
  </div>
</div>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile">
      <div class="nav-link">
        <div class="profile-image">
          <img src="${user.getUrlImage()}" alt="image">
          <span class="online-status online"></span> <!--change class online to offline or busy as needed-->
        </div>
        <div class="profile-name">
          <p class="name" name = "fullNameUser">
            ${user.getFullName()}
          </p>
          <p class="designation">
            Super Admin
          </p>
        </div>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#e-commerce" aria-expanded="false" aria-controls="e-commerce">
        <i class="icon-briefcase menu-icon"></i>
        <span class="menu-title">Product</span>
        <span class="badge badge-info">3</span>
      </a>
      <div class="collapse" id="e-commerce">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="/products"> List Product </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Create Product </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Update Product </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Delete Product </a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item d-none d-lg-block">
      <a class="nav-link" data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false" aria-controls="sidebar-layouts">
        <i class="icon-layers menu-icon"></i>
        <span class="menu-title">User</span>
        <span class="badge badge-warning">4</span>
      </a>
      <div class="collapse" id="sidebar-layouts">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="/users"> List User </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Create User </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Update User </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Block User </a></li>
          <li class="nav-item"> <a class="nav-link" href="#"> Delete User </a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="true" aria-controls="ui-basic">
        <i class="icon-target menu-icon"></i>
        <span class="menu-title">Basic UI Elements</span>
        <span class="badge badge-success">10</span>
      </a>
      <div class="collapse show" id="ui-basic" style="">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/accordions.html">Accordions</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/buttons.html">Buttons</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/badges.html">Badges</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../paDropdownsges/ui-features/breadcrumbs.html">Breadcrumbs</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/dropdowns.html">Dropdowns</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/modals.html">Modals</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/progress.html">Progress bar</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/pagination.html">Pagination</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/tabs.html">Tabs</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/typography.html">Typography</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/ui-features/tooltips.html">Tooltips</a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link collapsed" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
        <i class="icon-globe menu-icon"></i>
        <span class="menu-title">Icons</span>
        <span class="badge badge-info">4</span>
      </a>
      <div class="collapse" id="icons" style="">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../../pages/icons/flag-icons.html">Flag icons</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/icons/font-awesome.html">Font Awesome</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/icons/simple-line-icon.html">Simple line icons</a></li>
          <li class="nav-item"> <a class="nav-link" href="../../pages/icons/themify.html">Themify icons</a></li>
        </ul>
      </div>
    </li>
<%--    <li class="nav-item">--%>
<%--      <a class="nav-link collapsed" data-toggle="collapse" href="#maps" aria-expanded="false" aria-controls="maps">--%>
<%--        <i class="icon-location-pin menu-icon"></i>--%>
<%--        <span class="menu-title">Admin</span>--%>
<%--        <span class="badge badge-success">2</span>--%>
<%--      </a>--%>
<%--      <div class="collapse" id="maps" style="">--%>
<%--        <ul class="nav flex-column sub-menu">--%>
<%--          <li class="nav-item"> <a class="nav-link" href="../../pages/maps/mapeal.html">Mapeal</a></li>--%>
<%--          <li class="nav-item"> <a class="nav-link" href="../../pages/maps/vector-map.html">Vector Map</a></li>--%>
<%--          <li class="nav-item"> <a class="nav-link" href="../../pages/maps/google-maps.html">Google Map</a></li>--%>
<%--        </ul>--%>
<%--      </div>--%>
<%--    </li>--%>
  </ul>
</nav>





