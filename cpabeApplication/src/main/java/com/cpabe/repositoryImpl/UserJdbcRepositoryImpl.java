package com.cpabe.repositoryImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cpabe.model.User;
import com.cpabe.model.UserMapper;
import com.cpabe.repository.UserJdbcRepository;
@Repository
public class UserJdbcRepositoryImpl implements UserJdbcRepository {
	
	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	@Override
	public Iterable<User> getUsersByRole(User user) {
		Iterable<User> userList=null;
		String query="SELECT users.id , `username`, `firstname`, `lastname`, `email`, `userroleid`, "
				+ "`battalionid`, `regionid`, `enabled` FROM `users` INNER JOIN user_roles on users.userroleid=user_roles.id"
				+ " where user_roles.id="+user.getUserRoleId()+"";
		try {		
			userList=jdbcTemplate.query(query,new UserMapper());
		} catch (Exception e) {
			System.out.println("Error to fetch user list:"+e.getMessage());
		}
		return userList;
	}

	@Override
	public Iterable<User> requestUserInfo(User user) {
		Iterable<User> userList=null;
		String query="SELECT users.id , `username`, `firstname`, `lastname`, `email`, `userroleid`, "
				+ "`battalionid`, `regionid`, `enabled` FROM `users` INNER JOIN user_roles on users.userroleid=user_roles.id"
				+ " where users.userroleid=2 and users.battalionid="+user.getBattalionId()+"";
		try {		
			userList=jdbcTemplate.query(query,new UserMapper());
		} catch (Exception e) {
			System.out.println("Error to fetch user list:"+e.getMessage());
		}
		return userList;
	}

	@Override
	public Iterable<User> requestKeyAuthorityInfo() {
		Iterable<User> userList=null;
		String query="SELECT users.id , `username`, `firstname`, `lastname`, `email`, `userroleid`, "
				+ "`battalionid`, `regionid`, `enabled` FROM `users` INNER JOIN user_roles on users.userroleid=user_roles.id"
				+ " where users.userroleid=4";
		try {		
			userList=jdbcTemplate.query(query,new UserMapper());
		} catch (Exception e) {
			System.out.println("Error to fetch user list:"+e.getMessage());
		}
		return userList;	}

}
