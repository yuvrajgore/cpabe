package com.cpabe.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpabe.model.Battalion;
import com.cpabe.model.Region;
import com.cpabe.model.User;
import com.cpabe.model.UserRole;
import com.cpabe.repository.BattalionRepository;
import com.cpabe.repository.RegionRepository;
import com.cpabe.repository.UserJdbcRepository;
import com.cpabe.repository.UserRepository;
import com.cpabe.repository.UserRoleRepository;
import com.cpabe.service.UserService;
@Service("userServiceImpl")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserJdbcRepository userJdbcRepository;
	
	@Autowired
	private BattalionRepository battalionRepository;
	
	@Autowired
	private RegionRepository regionRepository;
	
	@Autowired
	private UserRoleRepository userRoleRepository;
	@Override
	public Iterable<User> getUserInformation() {
		Iterable<User> userList=null;
		try {
			userList=userRepository.findAll();
		} catch (Exception e) {
			System.out.println("Exception to find user information......."+e.getMessage());
		}
		return userList;
	}

	@Override
	public User getUserInformationById(User user) {
	 try {
		user=userRepository.findOne(user.getUserId());
	} catch (Exception e) {
		System.out.println("Exception to find user information by id......."+e.getMessage());
	}
		return user;
	}

	@Override
	public Iterable<Battalion> getBattalionInfo() {
		Iterable<Battalion> battaionList=null;
		try {
			battaionList=battalionRepository.findAll();
		} catch (Exception e) {
			System.out.println("Exception to find Battalion information......."+e.getMessage());
		}
		return battaionList;
	}

	@Override
	public Iterable<Region> getRegionInfo() {
		Iterable<Region> regionList=null;
		try {
			regionList=regionRepository.findAll();
		} catch (Exception e) {
			System.out.println("Exception to find Region information......."+e.getMessage());
		}
		return regionList;
	}

	@Override
	public Iterable<UserRole> getUserRoleInfo() {
		Iterable<UserRole> userRoleList=null;
		try {
			userRoleList=userRoleRepository.findAll();
		} catch (Exception e) {
			System.out.println("Exception to find User Role information......."+e.getMessage());
		}
		return userRoleList;
	}

	@Override
	public void deleteUser(User user) {
		try {
			userRepository.delete(user.getUserId());
		} catch (Exception e) {
			System.out.println("Exception to delete User information......."+e.getMessage());
		}
	}

	@Override
	public void saveUser(User user) {
		try {
			userRepository.save(user);
		} catch (Exception e) {
			System.out.println("Exception to update User information......."+e.getMessage());
		}
	}

	@Override
	public Iterable<User> getUsersByRole(User user) {
		return userJdbcRepository.getUsersByRole(user);
	}

}
