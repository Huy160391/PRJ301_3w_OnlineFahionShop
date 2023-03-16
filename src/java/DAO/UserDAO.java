package DAO;

import DTO.UserDTO;
import mylib.DBTools;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public UserDTO login(String user, String pass) {
        String query = "select * from users\n"
                + "where [userName] = ?\n"
                + "and passWord = ?";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getInt("userID"),
                        rs.getString("userName"),
                        rs.getString("passWord"),
                        rs.getString("fullName"),
                        rs.getInt("isUser"),
                        rs.getInt("isAdmin")
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<UserDTO> getAllUsers() {
        List<UserDTO> list = new ArrayList<>();
        String query = "select * from users";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6)));

            }
        } catch (Exception e) {
        }
        return list;
    }
    

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        UserDAO dao = new UserDAO();
        List<UserDTO> users = dao.getAllUsers();
        for (UserDTO o : users) {
            System.out.println(o);
        }

    }
    public List<UserDTO> getUsersByID(int userID) {
        List<UserDTO> list = new ArrayList<>();
        String query = "select * from users\n"
                + "where userID = ?";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6)));

            }
        } catch (Exception e) {
        }
        return list;
    }
    public void singup(String username, String password, String fullname) {
        String query = "insert into users\n"
                + "values(?,?,?,0,0)";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, fullname);
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public UserDTO checkAccountExist(String user) {
        String query = "select * from users\n"
                + "where [userName] = ?\n";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void insertProduct(String userName, String passWord, String fullName,
            String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[users] \n"
                + "([userName], [passWord], [fullName], \n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            ps.setString(3, fullName);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

public void editProduct(String userName, String passWord, String fullName,
            String pid) {
        String query = "update users\n"
                + "set userName = ?,\n"
                + "passWord = ?,\n"
                + "fullName = ?,\n"
                + "where id = ?";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, passWord);
            ps.setString(3, fullName);
            ps.setString(4, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteUsers(String pid) {
        String query = "delete from users\n"
                + "where userID = ?";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


public List<UserDTO> searchByName(String txtSearch) {
        List<UserDTO> list = new ArrayList<>();
        String query = "select * from users\n"
                + "where [userName] like ?";
        try {
            con = new DBTools().makeConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new UserDTO(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6)));

            
            }
        } catch (Exception e) {
        }
        return list;
    }
}
