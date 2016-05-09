package DB.dao;

import DB.model.User;

import java.util.List;

public interface UserDao {
    List<User> getUsers();
    List<User> searchUsers(String searchName);
    void addUser(User user);
    User getUser(int id);
    void deleteUser(int id);
    void updateUser(User user);
}