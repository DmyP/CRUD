package DB.service;

import DB.model.User;

import java.util.List;

public interface UserService {
	public List<User> getUsers();
	public List<User> searchUsers(String searchName);
	public void addUser(User user);
	public User getUser(int id);
	public void deleteUser(int id);
	public void updateUser(User user);
}
