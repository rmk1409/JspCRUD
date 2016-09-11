package models;

import bean.User;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

/**
 * Created by Roma on 11.09.2016.
 */
public class UserDao {
    public static Connection getConnection(){
        Connection result = null;

        try {
            Class.forName("org.postgresql.Driver");
            result = DriverManager.getConnection("jdbc:postgresql://localhost/postgres", "postgres", "password");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public static List<User> getAllUsers(){
        List<User> result = new ArrayList<>();

        try(Connection connection = UserDao.getConnection()){

            PreparedStatement statement = connection.prepareStatement("SELECT * FROM user_data");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                User currentUser = new User();

                currentUser.setId(resultSet.getInt("id"));
                currentUser.setName(resultSet.getString("name"));
                currentUser.setSex(resultSet.getString("sex"));
                currentUser.setRegistrationDate(resultSet.getString("registration_date"));
                currentUser.setPhoneNumber(resultSet.getString("phone_number"));

                result.add(currentUser);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    public static int addUser(User user){
        int status = 0;

        try(Connection connection = UserDao.getConnection()){

            PreparedStatement statement = connection.prepareStatement("INSERT INTO user_data(name, sex, phone_number, registration_date) VALUES (?,?,?,?)");

            statement.setString(1, user.getName());
            statement.setString(2, user.getSex());
            statement.setString(3, user.getPhoneNumber());
            user.setRegistrationDate(new SimpleDateFormat("dd.MM.yyyy").format(new Date()));
            statement.setString(4, user.getRegistrationDate());

            status = statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    public static int removeUser(int id){
        int status = 0;

        try(Connection connection = UserDao.getConnection()){

            PreparedStatement statement = connection.prepareStatement("DELETE FROM user_data where id=?");

            statement.setInt(1, id);

            status = statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
}
