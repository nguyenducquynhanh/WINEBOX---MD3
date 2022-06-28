package controller;

import model.User;
import service.IUserService;
import service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private final IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        if (id == null) {
            id = "";
        }

        switch (id){
            case "":
                showListUser(request,response);
                break;
            default:
                login(request,response);
                break;
        }
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action == null) {
//            action = "";
//        }
//
//        switch (action){
//            default:
//                login(request,response);
//                break;
//        }
//    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/products");
        String id = request.getParameter("id");

        User user = userService.findUserById(Integer.parseInt(id));
        request.setAttribute("user",user);

        dispatcher.forward(request,response);
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        List<User> users = userService.selectAllUser();

        request.setAttribute("users",users);
        dispatcher.forward(request,response);
    }
}
