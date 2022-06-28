package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    boolean insertUser(User user) throws SQLException;

//    User selectUser(int id);

    User findUserById(int id);

    List<User> selectAllUser();

    String blockUser(int id) throws SQLException;

//    boolean updateUser(User user) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    User selectUserByName(String name);

    boolean isExistId(int id);

//    List<Category> selectAllCategory();
}
