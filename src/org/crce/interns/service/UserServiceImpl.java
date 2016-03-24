package org.crce.interns.service;

import java.util.ArrayList;
import java.util.List;

import org.crce.interns.beans.UserBean;
import org.crce.interns.dao.UserDao;
import org.crce.interns.model.User;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public void insertUser(UserBean userBean) {
		User user = new User();
		User checkUser = new User();
		BeanUtils.copyProperties(userBean, user);
		checkUser.setUsername(userBean.getUsername());

		checkUser = userDao.getUser(checkUser);

		if (checkUser == null) {
			System.out.println("Error:No User Defined" + "\n");
		}

		if (checkUser.getRole_id().equalsIgnoreCase("2")
				|| checkUser.getRole_id().equalsIgnoreCase("4")) {
			System.out.println("Before update Faculty Role ID : " + checkUser.getRole_id() + "\n");
			checkUser.setRole_id("5");
			System.out.println("After update Faculty Role ID : " + checkUser.getRole_id() + "\n");
			userDao.insertUser(checkUser);
		}

		else {
			System.out.println("Error : No Such User Exists");
		}
	}

	@Override
	public List<UserBean> viewUsers() {
		// TODO Auto-generated method stub
		List<User> userList = userDao.viewUsers();
		return convertToBean(userList);
	}

	public List<UserBean> convertToBean(List<User> userList) {
		List<UserBean> userBeanList = new ArrayList<UserBean>();
		for (User user : userList) {
			UserBean userBean = new UserBean();
			BeanUtils.copyProperties(user, userBean);
			userBeanList.add(userBean);
		}
		return userBeanList;
	}

	@Override
	public void deleteUser(UserBean userBean) {
		// TODO Auto-generated method stub
		User user = new User();
		User checkUser = new User();
		BeanUtils.copyProperties(userBean, user);
		checkUser.setUsername(userBean.getUsername());

		checkUser = userDao.getUser(checkUser);

		if (checkUser == null) {
			System.out.println("Error:No User Defined" + "\n");
		}

		if (checkUser.getRole_id().equalsIgnoreCase("5")) {
			System.out.println("Before update Faculty Role : " + checkUser.getRole_id() + "\n");
			checkUser.setRole_id("2");
			System.out.println("After update Faculty Role : " + checkUser.getRole_id() + "\n");
			userDao.insertUser(checkUser);
		}

		else {
			System.out.println("Error : No Such User Exists");
		}
	}

}