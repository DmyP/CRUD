package DB.service;

import DB.dao.UserDao;
import DB.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	public List<User> getUsers() {
		return userDao.getUsers();
	}
	public List<User> searchUsers(String searchName) {
		return userDao.searchUsers(searchName);
	}

	public void addUser(User user) {
		userDao.addUser(user);
	}

	public User getUser(int id) {
		return userDao.getUser(id);
	}

	public void deleteUser(int id) {
		userDao.deleteUser(id);
	}

    public void updateUser(User user) {
        userDao.updateUser(user);
    }

}
