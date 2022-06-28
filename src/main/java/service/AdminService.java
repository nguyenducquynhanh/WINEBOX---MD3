//package service;
//
//import model.Admin;
//import utils.MySQLConnUtils;
//
//import java.sql.SQLException;
//import java.util.List;
//
//public class AdminService implements IAdminService {
//    private final MySQLConnUtils mySQLConnUtils = new MySQLConnUtils();
//
//    private static final String SELECT_ADMIN_BY_ID = "SELECT * FROM vw_admins WHERE id = ?";
//
//    private static final String SELECT_ALL_ADMIN = "SELECT * FROM vw_admins";
//
//    @Override
//    public boolean insertAdmin(Admin admin) throws SQLException {
//        return false;
//    }
//
//    @Override
//    public Admin selectAdmin(int id) {
//        return null;
//    }
//
//    @Override
//    public Admin findAdminById(int id) {
//        return null;
//    }
//
//    @Override
//    public List<Admin> selectAllAdmin() {
//        return null;
//    }
//
//    @Override
//    public String blockAdmin(int id) throws SQLException {
//        return null;
//    }
//
//    @Override
//    public boolean updateAdmin(Admin admin) throws SQLException {
//        return false;
//    }
//
//    @Override
//    public Admin selectAdminByName(String name) {
//        return null;
//    }
//
//    @Override
//    public boolean isExistId(int id) {
//        return false;
//    }
//}
