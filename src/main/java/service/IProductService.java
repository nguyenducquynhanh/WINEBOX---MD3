package service;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    boolean insertProduct(Product product) throws SQLException;

//    Product selectProduct(int id);

    Product findProductById(int id);

    List<Product> selectAllProduct();

    boolean deleteProduct(int id) throws SQLException;

    boolean updateProduct(Product product) throws SQLException;

    boolean isExistId(int id);

//    List<Category> selectAllCategory();
}
