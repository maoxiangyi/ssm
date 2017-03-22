package cn.base.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.base.ssm.mapper.UserMapper;
import cn.base.ssm.po.User;
import cn.base.ssm.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	public User getUserById(int id) {
		return userMapper.getUserById(id);
	}

	public List<User> getUserByName(String username) {
		return userMapper.getUserByName(username);
	}

	public void insertUser(User user) {
		userMapper.insertUser(user);
		
	}

	public void deleteUser(int id) {
		userMapper.deleteUser(id);
	}

	public void updateUser(User user) {
		userMapper.updateUser(user);
	}

}
