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
public class ProductService implements IProductService {

    private final MySQLConnUtils mySQLConnUtils = new MySQLConnUtils();
    private static final String INSERT_PRODUCT = "INSERT INTO products (`name`,`category_id`,`url_image`,`price`,`quantity`)\n" +
            "VALUES (?,?,?,?,?);" ;
    private static final String UPDATE_PRODUCT_BY_ID = "UPDATE products AS p \n" +
           " SET \n" +
                "p.name =?, \n" +
                "p.category_id =?, \n" +
                "p.url_image =?, \n" +
                "p.price =?, \n" +
                "p.quantity =? \n" +
            "WHERE p.id =?;";
    private static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM vw_products WHERE id = ?";
    private static final String DELETE_PRODUCT_BY_ID = "UPDATE products AS p SET p.deleted = 1 WHERE p.id =?";

    private String SELECT_ALL_PRODUCT = "SELECT * FROM vw_products WHERE deleted = 0";


    @Override
    public boolean insertProduct(Product product) {
        boolean success = false;

        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareCall(INSERT_PRODUCT);
            statement.setString(1,product.getName());
            statement.setInt(2,product.getCategory().getId());
            statement.setString(3,product.getUrlImage());
            statement.setLong(4,product.getPrice());
            statement.setInt(5,product.getQuantity());

            statement.execute();

            success = true;

        } catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return success;
    }

    @Override
    public Product findProductById(int id) {
        Product product = null;
        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
            statement.setInt(1,id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");

                int category_id = Integer.parseInt(rs.getString("category_id"));
                String categoryName = rs.getString("category");
                Category category = new Category(category_id,categoryName);

                String urlImage = rs.getString("url_image");
                Long price = rs.getLong("price");
                int quantity = rs.getInt("quantity");

                product = new Product(id,name,category,urlImage,price,quantity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> products = new ArrayList<>();
        try {
            Connection connection = mySQLConnUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareCall(SELECT_ALL_PRODUCT);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");

                int category_id = Integer.parseInt(rs.getString("category_id"));
                String categoryName = rs.getString("category");
                Category category = new Category(category_id,categoryName);

                String urlImage = rs.getString("url_image");
                Long price = rs.getLong("price");
                int quantity = rs.getInt("quantity");

                products.add(new Product(id,name,category,urlImage,price,quantity));
            }
        }catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return products;
    }

    @Override
    public boolean deleteProduct(int id) throws SQLException {
        boolean success = false;

        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareCall(DELETE_PRODUCT_BY_ID);
            statement.setInt(1,id);
            statement.executeUpdate();

            success = true;
        } catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return success;
    }

    @Override
    public boolean updateProduct(Product product) throws SQLException {
        boolean success = false;

        try {
            Connection connection = mySQLConnUtils.getConnection();

            PreparedStatement statement = connection.prepareCall(UPDATE_PRODUCT_BY_ID);
            statement.setString(1,product.getName());
            statement.setInt(2,product.getCategory().getId());
            statement.setString(3,product.getUrlImage());
            statement.setLong(4,product.getPrice());
            statement.setInt(5, product.getQuantity());
            statement.setInt(6,product.getId());
            statement.executeUpdate();

            success = true;
        } catch (SQLException e) {
            mySQLConnUtils.printSQLException(e);
        }
        return success;
    }


    @Override
    public boolean isExistId(int id){
        List<Product> products = selectAllProduct();
        for(Product product : products) {
            if(product.getId() == id) {
                return true;
            }
        }
        return false;
    }
}
