package service;

import model.Gender;
import model.Status;
import model.User;
import utils.MySQLConnUtils;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserService implements IUserService {
    private final MySQLConnUtils mySQLConnUtils = new MySQLConnUtils();

    private static final String CALL_BLOCK_USER_SQL = "{call sp_block_user(?, ?)}";
    private static final String SELECT_USER_BY_ID = "SELECT * FROM vw_users WHERE id = ?";

    private static final String BLOCK_USER_BY_ID = "UPDATE users AS u SET u.blocked = 1 WHERE u.id =?";

    private static final String SELECT_ALL_USER = "SELECT * FROM vw_users";

    @Override
    public boolean insertUser(User user) {
        return false;
    }

    @Override
    public User findUserById(int id) {
        User user = null;
        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareStatement(SELECT_USER_BY_ID);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String userName = rs.getString("user_name");
                String password = rs.getString("password");
                String fullName = rs.getString("full_name");
                String age = rs.getString("age");
                int gender_id = Integer.parseInt(rs.getString("gender_id"));
                String genderName = rs.getString("gender");
                Gender gender = new Gender(gender_id,genderName);
                int phone = rs.getInt("phone");
                String email = rs.getString("email");
                String city = rs.getString("city");
                String country = rs.getString("country");
                int statusId = rs.getInt("blocked");
                String statusName = rs.getString("status");
                Status status = new Status(statusId,statusName);
                String urlImage = rs.getString("url_image");

                user = new User(id, userName, password, fullName, age, gender, phone, email, city, country, status, urlImage);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public List<User> selectAllUser() {
        List<User> users = new ArrayList<>();
        try {
            Connection connection = mySQLConnUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall(SELECT_ALL_USER);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int id = rs.getInt("id");
                String userName = rs.getString("user_name");
                String password = rs.getString("password");
                String fullName = rs.getString("full_name");
                String age = rs.getString("age");
                int gender_id = Integer.parseInt(rs.getString("gender_id"));
                String genderName = rs.getString("gender");
                Gender gender = new Gender(gender_id,genderName);
                int phone = rs.getInt("phone");
                String email = rs.getString("email");
                String city = rs.getString("city");
                String country = rs.getString("country");
                int statusId = rs.getInt("blocked");
                String statusName = rs.getString("status");
                Status status = new Status(statusId,statusName);
                String urlImage = rs.getString("url_image");
                String role = rs.getString("role");

                users.add(new User(id,userName, password, fullName, age, gender, phone, email, city, country, status, urlImage,role));
            }
        }catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return users;
    }


    @Override
    public String blockUser(int id){
        try {
            Connection connection = mySQLConnUtils.getConnection();
            CallableStatement callableStatement = connection.prepareCall(CALL_BLOCK_USER_SQL);

            callableStatement.setInt(1, id);
            callableStatement.registerOutParameter(2, Types.VARCHAR);
            callableStatement.execute();
            return callableStatement.getString(2);

        }catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return null;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return false;
    }

    @Override
    public User selectUserByName(String name) {
        return null;
    }
//        boolean success = false;
//
//        try {
//            Connection connection = mySQLConnUtils.getConnection();
//
//            PreparedStatement statement = connection.prepareCall(BLOCK_USER_BY_ID);
//            statement.setInt(1,id);
//            statement.executeUpdate();
//
//            success = true;
//        } catch (SQLException e) {
//            mySQLConnUtils.printSQLException(e);
//        }
//        return success;
//    }

    @Override
    public boolean isExistId(int id) {
        List<User> products = selectAllUser();
        for(User user : products) {
            if(user.getId() == id) {
                return false;
            }
        }
        return true;
    }
}
