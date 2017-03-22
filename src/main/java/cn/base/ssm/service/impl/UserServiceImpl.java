package cn.base.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.base.ssm.mapper.UserMapper;
import cn.base.ssm.po.User;
import cn.base.ssm.po.UserExample;
import cn.base.ssm.po.UserExample.Criteria;
import cn.base.ssm.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	public User getUserById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

	public List<User> getUserByName(String username) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameLike(username);
		return userMapper.selectByExample(example);
	}

	public void insertUser(User user) {
		userMapper.insert(user);
		
	}

	public void deleteUser(int id) {
		userMapper.deleteByPrimaryKey(id);
	}

	public void updateUser(User user) {
		userMapper.updateByPrimaryKey(user);
	}

}
