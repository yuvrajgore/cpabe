package com.cpabe.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user=new User();
		user.setUserId(rs.getInt("id"));
		user.setUserName(rs.getString("username"));
		user.setFirstName(rs.getString("firstname"));
		user.setLastName(rs.getString("lastname"));
		user.setEmail(rs.getString("email"));
		user.setUserRoleId(rs.getInt("userroleid"));
		user.setBattalionId(rs.getInt("battalionid"));
		user.setRegionId(rs.getInt("regionid"));
		user.setEnabled(rs.getInt("enabled"));
		return user;
	}

}
