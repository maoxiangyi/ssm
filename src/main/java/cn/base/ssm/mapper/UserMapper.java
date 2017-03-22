package cn.base.ssm.mapper;

import java.util.List;

import cn.base.ssm.po.User;


public interface UserMapper {
	User getUserById(int id);
	List<User> getUserByName(String username);
	void insertUser(User user);
	void deleteUser(int id);
	void updateUser(User user);

}
