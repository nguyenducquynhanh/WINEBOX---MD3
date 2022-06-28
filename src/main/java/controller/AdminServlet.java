//package controller;
//
//import model.Admin;
//import model.Category;
//import model.Admin;
//import model.User;
//import service.IAdminService;
//import service.AdminService;
//import utils.ValidateUtils;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//@WebServlet(name = "AdminServlet", urlPatterns = "/admins")
//public class AdminServlet extends HttpServlet {
//    private final IAdminService adminService = new AdminService();
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action == null) {
//            action = "";
//        }
//
//        switch (action) {
//            case "create":
//                showCreateForm(request, response);
//                break;
////            case"edit":
////                showUpdateForm(request,response);
////                break;
//            default:
//                showListAdmin(request, response);
//                break;
//        }
//    }
//
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action == null) {
//            action = "";
//        }
//
//        switch (action) {
//            case "create":
//                try {
//                    createAdmin(request, response);
//                } catch (SQLException e) {
//                    throw new RuntimeException(e);
//                }
//                break;
////            case "edit":
////                try {
////                    editAdmin(request, response);
////                } catch (SQLException e) {
////                    throw new RuntimeException(e);
////                }
////                break;
//            default:
//                showListAdmin(request, response);
//                break;
//        }
//
//    }
//
//
////    private void editAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
////        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/edit.jsp");
////
////        List<String> errors = new ArrayList<>();
////
////        String idStr = request.getParameter("id");
////        String adminName = request.getParameter("adminName");
////        String password = request.getParameter("password");
////        String fullName = request.getParameter("fullName");
////        String gender = request.getParameter("gender");
////        String phone = request.getParameter("phone");
////        String email = request.getParameter("email");
////        String address = request.getParameter("address");
////        String urlImage = request.getParameter("urlImage");
////
////        if (!ValidateUtils.isNumberValid(idStr)) {
////            errors.add("ID không hợp lệ!");
////        } else if (!adminService.isExistId(Integer.parseInt(idStr))) {
////            errors.add("ID không tồn tại!");
////        }
////
////        if (adminName.length() == 0) {
////            errors.add("Tên không được để trống!");
////        } else if (adminName.length() > 255) {
////            errors.add("Tên vượt quá số lượng kí tự cho phép! (không vượt quá 255 kí tự)");
////        }
////
////
////        if (urlImage.length() > 10000) {
////            errors.add("Url image vượt quá số lượng kí tự cho phép! (không vượt quá 10000 kí tự");
////        }
////
////
////        if (errors.size() > 0) {
////            request.setAttribute("errors", errors);
////        } else {
////            int id = Integer.parseInt(idStr);
////            Admin admin = new Admin(id, name, category1, image, price, quantity);
////            boolean edited = adminService.updateAdmin(admin);
////            if (edited) {
////                request.setAttribute("message", "Cập nhật sản phẩm thành công!");
////            } else {
////                request.setAttribute("message", "Cập nhật sản phẩm thất bại!");
////            }
////        }
////        dispatcher.forward(request, response);
////    }
//
//    private void createAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/edit.jsp");
//
//        List<String> errors = new ArrayList<>();
//
//        String idStr = request.getParameter("id");
//        String adminName = request.getParameter("adminName");
//        String password = request.getParameter("password");
//        String fullName = request.getParameter("fullName");
//
//        String phone = request.getParameter("phone");
//        String email = request.getParameter("email");
//        String address = request.getParameter("address");
//        String urlImage = request.getParameter("urlImage");
//
//       if (!ValidateUtils.isNumberValid(idStr)) {
//           errors.add("ID không hợp lệ!");
//        } else if (!adminService.isExistId(Integer.parseInt(idStr))) {
//           errors.add("ID không tồn tại!");
//       }
//
//      if (adminName.length() == 0) {
//            errors.add("Tên không được để trống!");
//       } else if (adminName.length() > 255) {
//            errors.add("Tên vượt quá số lượng kí tự cho phép! (không vượt quá 255 kí tự)");
//        }
//
//
//      if (urlImage.length() > 10000) {
//           errors.add("Url image vượt quá số lượng kí tự cho phép! (không vượt quá 10000 kí tự");
//        }
//
//        if (errors.size() > 0) {
//            request.setAttribute("errors", errors);
//        } else {
//            Admin admin = new Admin(adminName, password, fullName, gender, phone, email, address, urlImage);
//            boolean inserted = adminService.insertAdmin(admin);
//            if (inserted) {
//                request.setAttribute("message", "Thêm sản phẩm thành công!");
//            } else {
//                request.setAttribute("message", "Thêm sản phẩm thất bại!");
//            }
//        }
//        dispatcher.forward(request, response);
//    }
//
//    private void showListAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/list.jsp");
//        List<Admin> admins = adminService.selectAllAdmin();
//
//        request.setAttribute("admins", admins);
//        dispatcher.forward(request, response);
//    }
//
//
//    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/create.jsp");
//        dispatcher.forward(request,response);
//    }
//}
////    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/create.jsp");
////        List<Category> categories = categorySevice.selectAllCategory();
////        request.setAttribute("categories",categories);
//////        String userId = request.getParameter("id");
//////        User user = userService.findUserById(Integer.parseInt(userId));
//////
//////        request.setAttribute("user",user);
////        dispatcher.forward(request,response);
////    }
////    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/edit.jsp");
////        List<String> errors = new ArrayList<>();
////        List<Category> categories = categorySevice.selectAllCategory();
////
////        String userId = request.getParameter("ui");
////        User user = userService.findUserById(Integer.parseInt(userId));
////        String idStr = request.getParameter("id");
////
////        if(!ValidateUtils.isNumberValid(idStr)){
////            errors.add("ID không hợp lệ!");
////        } else if(!adminService.isExistId(Integer.parseInt(idStr))) {
////            errors.add("ID không tồn tại!");
////        }
////
////        if(errors.size() > 0){
////            request.setAttribute("errors",errors);
////        }else {
////            Admin admin = adminService.findAdminById(Integer.parseInt(idStr));
////            request.setAttribute("admin",admin);
////            request.setAttribute("categories",categories);
////        }
////
////
////        request.setAttribute("user",user);
////        dispatcher.forward(request,response);
////    }
////}
