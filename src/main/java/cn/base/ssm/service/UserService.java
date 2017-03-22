package cn.base.ssm.service;

import java.util.List;

import cn.base.ssm.po.User;

public interface UserService {
	User getUserById(int id);

	List<User> getUserByName(String username);

	void insertUser(User user);

	void deleteUser(int id);

	void updateUser(User user);

}
