package service;

import model.Category;

import java.sql.SQLException;
import java.util.List;

public interface ICategoryService {
    boolean insertCategory(Category category) throws SQLException;

    Category selectCategoryById(int id);

    Category selectCategoryByName(String name);


    String deleteCategory(int id) throws SQLException;

    String updateCategory(Category category) throws SQLException;

    List<Category> selectAllCategory();

}
