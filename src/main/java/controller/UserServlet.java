package controller;

import model.User;
import service.CategoryService;
import service.ICategoryService;
import service.IUserService;
import service.UserService;
import utils.ValidateUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/users")
public class UserServlet extends HttpServlet {
    private final IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action){
//            case"create":
//                showCreateForm(request,response);
//                break;

            case"block":
                showBlockForm(request,response);
                break;
            default:
                showListUser(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createUser(request, response);
                break;
            case "block":
                try {
                    blockUser(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                showListUser(request, response);
                break;
        }

    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) {
    }

    private void blockUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/block.jsp");
        int id = Integer.parseInt(request.getParameter("id"));

        String message = userService.blockUser(id);
        User user = userService.findUserById(id);
        request.setAttribute("message",message);
        request.setAttribute("user",user);

        dispatcher.forward(request,response);
        //        RequestDispatcher dispatcher = request.getRequestDispatcher("/user/block.jsp");
//
//        List<String> errors = new ArrayList<>();
//
//        String idStr = request.getParameter("id");
//
//        if(!ValidateUtils.isNumberValid(idStr)){
//            errors.add("ID người dùng không hợp lệ!");
//        }else if(userService.isExistId(Integer.parseInt(idStr))){
//            errors.add("Không tồn tại người dùng có ID " + idStr +"!" );
//        }
//        if (errors.size() > 0) {
//            request.setAttribute("errors",errors);
//        } else {
//            int id = Integer.parseInt(idStr);
//            User user = userService.findUserById(id);
//            request.setAttribute("user", user);
//            boolean blocked = userService.blockUser(id);
//            if(blocked){
//                request.setAttribute("message","Chặn người dùng thành công!");
//            } else {
//                request.setAttribute("message","Chặn người dùng thất bại!");
//            }
//        }
//        dispatcher.forward(request, response);p
    }

//    private void editUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/User/edit.jsp");
//
//        List<String> errors = new ArrayList<>();
//        List<Category> categories = categorySevice.selectAllCategory();
//        request.setAttribute("categories",categories);
//
//        String idStr = request.getParameter("id");
//        String name = request.getParameter("name");
//        String category = request.getParameter("category");
//        String image = request.getParameter("image");
//        String priceStr = request.getParameter("price");
//        String quantityStr = request.getParameter("quantity");
//
//        if(!ValidateUtils.isNumberValid(idStr)){
//            errors.add("ID không hợp lệ!");
//        }else if(!UserService.isExistId(Integer.parseInt(idStr))){
//            errors.add("ID không tồn tại!");
//        }
//
//        if (name.length() == 0) {
//            errors.add("Tên không được để trống!");
//        }else if (name.length() > 255) {
//            errors.add("Tên vượt quá số lượng kí tự cho phép! (không vượt quá 255 kí tự)");
//        }
//
//
//        if (image.length() > 16000) {
//            errors.add("Url image vượt quá số lượng kí tự cho phép! (không vượt quá 16000 kí tự");
//        }
//        if (priceStr.length() == 0) {
//            errors.add("Giá không được để trống!");
//        } else if ( priceStr.length() > 12) {
//            errors.add("Giá vượt quá ngưỡng cho phép! (tối đa 999.999.999.999đ)");
//        } else if (Long.parseLong(priceStr) < 0) {
//            errors.add("Giá không được là số âm!");
//        }
//        if (quantityStr.length() == 0) {
//            errors.add("Số lượng không được để trống!");
//        } else if (quantityStr.length() > 9) {
//            errors.add("Số lượng vượt quá ngưỡng cho phép! (tối đa 999.999.999 sản phẩm)");
//        }else if ( Integer.parseInt(quantityStr) < 0) {
//            errors.add("Số lượng không được là số âm!");
//        }
//
//        if (errors.size() > 0) {
//            request.setAttribute("errors",errors);
//        } else {
//            Category category1 = categorySevice.selectCategoryById(Integer.parseInt(category));
//            long price = Long.parseLong(priceStr);
//            int quantity = Integer.parseInt(quantityStr);
//            int id = Integer.parseInt(idStr);
//            User User = new User(id,name,category1,image,price,quantity);
//            boolean edited = UserService.updateUser(User);
//            if(edited){
//                request.setAttribute("message","Cập nhật sản phẩm thành công!");
//            } else {
//                request.setAttribute("message","Cập nhật sản phẩm thất bại!");
//            }
//        }
//        dispatcher.forward(request, response);
//    }

//    private void createUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/User/create.jsp");
//
//        List<String> errors = new ArrayList<>();
//        List<Category> categories = categorySevice.selectAllCategory();
//        request.setAttribute("categories",categories);
//
//        String name = request.getParameter("name");
//        String category = request.getParameter("category");
//        String image = request.getParameter("image");
//        String priceStr = request.getParameter("price");
//        String quantityStr = request.getParameter("quantity");
//
//
//        if (name.length() == 0) {
//            errors.add("Tên không được để trống!");
//        }else if (name.length() > 255) {
//            errors.add("Tên vượt quá số lượng kí tự cho phép! (không vượt quá 255 kí tự)");
//        }
//
//
//        if (image.length() > 16000) {
//            errors.add("Url image vượt quá số lượng kí tự cho phép! (không vượt quá 16000 kí tự");
//        }
//        if (priceStr.length() == 0) {
//            errors.add("Giá không được để trống!");
//        } else if (Long.parseLong(priceStr) < 0) {
//            errors.add("Giá không được là số âm!");
//        } else if (priceStr.length() > 12) {
//            errors.add("Giá vượt quá ngưỡng cho phép! (tối đa 999.999.999.999đ)");
//        }
//        if (quantityStr.length() == 0) {
//            errors.add("Số lượng không được để trống!");
//        } else if (Integer.parseInt(quantityStr) < 0) {
//            errors.add("Số lượng không được là số âm!");
//        }else if ( quantityStr.length() > 9) {
//            errors.add("Số lượng vượt quá ngưỡng cho phép! (tối đa 999.999.999 sản phẩm)");
//        }
//
//        if (errors.size() > 0) {
//            request.setAttribute("errors",errors);
//        } else {
//            Category category1 = categorySevice.selectCategoryById(Integer.parseInt(category));
//            long price = Long.parseLong(priceStr);
//            int quantity = Integer.parseInt(quantityStr);
//            User User = new User(name,category1,image,price,quantity);
//            boolean inserted = UserService.insertUser(User);
//            if(inserted){
//                request.setAttribute("message","Thêm sản phẩm thành công!");
//            } else {
//                request.setAttribute("message","Thêm sản phẩm thất bại!");
//            }
//        }
//        dispatcher.forward(request, response);
//    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/user/list.jsp");
        List<User> users = userService.selectAllUser();

        request.setAttribute("users",users);
        dispatcher.forward(request,response);
    }

//    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/User/create.jsp");
//        List<Category> categories = categorySevice.selectAllCategory();
//        request.setAttribute("categories",categories);
//
//        dispatcher.forward(request,response);
//    }

    private void showBlockForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/user/block.jsp");
        List<String> errors = new ArrayList<>();
        String idStr = request.getParameter("id");

        if (!ValidateUtils.isNumberValid(idStr)) {
            errors.add("ID không hợp lệ!");
        } else if (userService.isExistId(Integer.parseInt(idStr))) {
            errors.add("ID không tồn tại!");
        }
        if(errors.size() > 0){
            request.setAttribute("errors",errors);
        }else {
            User user = userService.findUserById(Integer.parseInt(idStr));
            request.setAttribute("user",user);
        }

        dispatcher.forward(request,response);
    }

}
