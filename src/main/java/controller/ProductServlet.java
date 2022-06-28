package controller;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import model.Category;
import model.Product;
import model.User;
import service.*;
import utils.ValidateUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private final IProductService productService = new ProductService();
    private  final ICategoryService categorySevice = new CategoryService();
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action){
            case"create":
                showCreateForm(request,response);
                break;
            case"edit":
                showEditForm(request,response);
                break;
            case"delete":
                showDeleteForm(request,response);
                break;
            default:
                showListProduct(request,response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action){
            case"create":
                try {
                    createProduct(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case"edit":
                try {
                    editProduct(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case"delete":
                try {
                    deleteProduct(request,response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/delete.jsp");

        List<String> errors = new ArrayList<>();
        List<Category> categories = categorySevice.selectAllCategory();
        request.setAttribute("categories",categories);

        User user = null;
        String userId = request.getParameter("ui");
        if(userId != null && !userId.equals("")){
            user = userService.findUserById(Integer.parseInt(userId));
        }

        request.setAttribute("user",user);

        String idStr = request.getParameter("id");

        if(!ValidateUtils.isNumberValid(idStr)){
            errors.add("ID không hợp lệ!");
        }else if(!productService.isExistId(Integer.parseInt(idStr))){
            errors.add("ID không tồn tại!");
        }
        if (errors.size() > 0) {
            request.setAttribute("errors",errors);
        } else {
            int id = Integer.parseInt(idStr);
            boolean deleted = productService.deleteProduct(id);
            if(deleted){
                request.setAttribute("message","Xóa sản phẩm thành công!");
            } else {
                request.setAttribute("message","Xóa sản phẩm thất bại!");
            }
        }
        dispatcher.forward(request, response);
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/edit.jsp");

        List<String> errors = new ArrayList<>();
        List<Category> categories = categorySevice.selectAllCategory();
        request.setAttribute("categories",categories);

        User user = null;
        String userId = request.getParameter("ui");
        if(userId != null && !userId.equals("")){
            user = userService.findUserById(Integer.parseInt(userId));
        }

        request.setAttribute("user",user);

        String idStr = request.getParameter("id");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String image = request.getParameter("image");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");

        if(!ValidateUtils.isNumberValid(idStr)){
            errors.add("ID không hợp lệ!");
        }else if(!productService.isExistId(Integer.parseInt(idStr))){
            errors.add("ID không tồn tại!");
        }

        if (name.length() == 0) {
            errors.add("Tên không được để trống!");
        }else if (name.length() > 255) {
            errors.add("Tên vượt quá số lượng kí tự cho phép! (không vượt quá 255 kí tự)");
        }


        if (image.length() > 16000) {
            errors.add("Url image vượt quá số lượng kí tự cho phép! (không vượt quá 16000 kí tự");
        }
        if (priceStr.length() == 0) {
            errors.add("Giá không được để trống!");
        } else if ( priceStr.length() > 12) {
            errors.add("Giá vượt quá ngưỡng cho phép! (tối đa 999.999.999.999đ)");
        } else if (Long.parseLong(priceStr) < 0) {
            errors.add("Giá không được là số âm!");
        }
        if (quantityStr.length() == 0) {
            errors.add("Số lượng không được để trống!");
        } else if (quantityStr.length() > 9) {
            errors.add("Số lượng vượt quá ngưỡng cho phép! (tối đa 999.999.999 sản phẩm)");
        }else if ( Integer.parseInt(quantityStr) < 0) {
            errors.add("Số lượng không được là số âm!");
        }

        if (errors.size() > 0) {
            request.setAttribute("errors",errors);
        } else {
            Category category1 = categorySevice.selectCategoryById(Integer.parseInt(category));
            long price = Long.parseLong(priceStr);
            int quantity = Integer.parseInt(quantityStr);
            int id = Integer.parseInt(idStr);
            Product product = new Product(id,name,category1,image,price,quantity);
            boolean edited = productService.updateProduct(product);
            if(edited){
                request.setAttribute("message","Cập nhật sản phẩm thành công!");
            } else {
                request.setAttribute("message","Cập nhật sản phẩm thất bại!");
            }
        }
        dispatcher.forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/create.jsp");

        List<String> errors = new ArrayList<>();
        List<Category> categories = categorySevice.selectAllCategory();
        request.setAttribute("categories",categories);

        User user = null;
        String userId = request.getParameter("ui");
        if(userId != null && !userId.equals("")){
            user = userService.findUserById(Integer.parseInt(userId));
        }

        request.setAttribute("user",user);

        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String image = request.getParameter("image");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");


        if (name.length() == 0) {
            errors.add("Tên không được để trống!");
        }else if (name.length() > 255) {
            errors.add("Tên vượt quá số lượng kí tự cho phép! (không vượt quá 255 kí tự)");
        }


        if (image.length() > 16000) {
            errors.add("Url image vượt quá số lượng kí tự cho phép! (không vượt quá 16000 kí tự");
        }
        if (priceStr.length() == 0) {
            errors.add("Giá không được để trống!");
        } else if (Long.parseLong(priceStr) < 0) {
            errors.add("Giá không được là số âm!");
        } else if (priceStr.length() > 12) {
            errors.add("Giá vượt quá ngưỡng cho phép! (tối đa 999.999.999.999đ)");
        }
        if (quantityStr.length() == 0) {
            errors.add("Số lượng không được để trống!");
        } else if (Integer.parseInt(quantityStr) < 0) {
            errors.add("Số lượng không được là số âm!");
        }else if ( quantityStr.length() > 9) {
            errors.add("Số lượng vượt quá ngưỡng cho phép! (tối đa 999.999.999 sản phẩm)");
        }

        if (errors.size() > 0) {
            request.setAttribute("errors",errors);
        } else {
            Category category1 = categorySevice.selectCategoryById(Integer.parseInt(category));
            long price = Long.parseLong(priceStr);
            int quantity = Integer.parseInt(quantityStr);
            Product product = new Product(name,category1,image,price,quantity);
            boolean inserted = productService.insertProduct(product);
            if(inserted){
                request.setAttribute("message","Thêm sản phẩm thành công!");
            } else {
                request.setAttribute("message","Thêm sản phẩm thất bại!");
            }
        }
            dispatcher.forward(request, response);
    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/list.jsp");
        List<Product> products = productService.selectAllProduct();
        String userId = request.getParameter("ui");
        if(userId != null && !userId.equals("")){
            User user = userService.findUserById(Integer.parseInt(userId));
            request.setAttribute("user",user);
        }
        request.setAttribute("products",products);
        dispatcher.forward(request,response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/create.jsp");
        List<Category> categories = categorySevice.selectAllCategory();

        request.setAttribute("categories",categories);

        User user = null;
        String userId = request.getParameter("ui");
        if(userId != null && !userId.equals("")){
            user = userService.findUserById(Integer.parseInt(userId));
        }


        request.setAttribute("user",user);
        dispatcher.forward(request,response);
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/edit.jsp");
        List<String> errors = new ArrayList<>();
        List<Category> categories = categorySevice.selectAllCategory();

//        String userId = request.getParameter("ui");
//        User user = userService.findUserById(Integer.parseInt(userId));

        User user = null;

        String userId = request.getParameter("ui");
        if(userId != null && !userId.equals("")){
            user = userService.findUserById(Integer.parseInt(userId));
        }

        String idStr = request.getParameter("id");

        if(!ValidateUtils.isNumberValid(idStr)){
            errors.add("ID không hợp lệ!");
        } else if(!productService.isExistId(Integer.parseInt(idStr))) {
            errors.add("ID không tồn tại!");
        }

        if(errors.size() > 0){
            request.setAttribute("errors",errors);
        }else {
            Product product = productService.findProductById(Integer.parseInt(idStr));
            request.setAttribute("product",product);
            request.setAttribute("categories",categories);
        }


        request.setAttribute("user",user);
        dispatcher.forward(request,response);
    }


    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/product/delete.jsp");
        List<String> errors = new ArrayList<>();
        String idStr = request.getParameter("id");
        List<Category> categories = categorySevice.selectAllCategory();
        User user = null;

        String userId = request.getParameter("ui");
       if(userId != null && !userId.equals("")){
           user = userService.findUserById(Integer.parseInt(userId));
       }


        if (!ValidateUtils.isNumberValid(idStr)) {
            errors.add("ID không hợp lệ!");
        } else if (!productService.isExistId(Integer.parseInt(idStr))) {
            errors.add("ID không tồn tại!");
        }
        if(errors.size() > 0){
            request.setAttribute("errors",errors);
        }else {
            Product product = productService.findProductById(Integer.parseInt(idStr));
            request.setAttribute("product",product);
            request.setAttribute("categories",categories);
        }

        request.setAttribute("user",user);
        dispatcher.forward(request,response);
    }

}
