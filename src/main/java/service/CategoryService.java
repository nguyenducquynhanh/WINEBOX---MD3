package service;

import model.Category;
import model.Product;
import utils.MySQLConnUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryService implements ICategoryService {
    private static final String SELECT_CATEGORY_BY_NAME = "SELECT * FROM category WHERE name = ?";
    private static final String SELECT_CATEGORY_BY_ID = "SELECT * FROM category WHERE id = ?";
    private final MySQLConnUtils mySQLConnUtils = new MySQLConnUtils();

    private String SELECT_ALL_CATEGORY = "SELECT * FROM category";
    @Override
    public boolean insertCategory(Category category) throws SQLException {
        return false;
    }

    @Override
    public Category selectCategoryById(int id) {
        Category category = null;
        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String categoryName = rs.getString("name");

                category = new Category(id, categoryName);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return category;
    }

    @Override
    public Category selectCategoryByName(String name) {
        Category category = null;
        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareStatement(SELECT_CATEGORY_BY_NAME);
            statement.setString(1,name);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String categoryName = rs.getString("name");

                category = new Category(id, categoryName);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return category;
    }

    @Override
    public String deleteCategory(int id) throws SQLException {
        return null;
    }

    @Override
    public String updateCategory(Category category) throws SQLException {
        return null;
    }

    @Override
    public List<Category> selectAllCategory() {
        List<Category> categories = new ArrayList<>();
        try {
            Connection connection = mySQLConnUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall(SELECT_ALL_CATEGORY);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String category = rs.getString("name");


                categories.add(new Category(id, category));
            }
        } catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return categories;
    }
}
