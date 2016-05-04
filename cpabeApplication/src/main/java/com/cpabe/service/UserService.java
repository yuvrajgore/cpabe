package com.cpabe.service;
import com.cpabe.model.Battalion;
import com.cpabe.model.Region;
import com.cpabe.model.User;
import com.cpabe.model.UserRole;


public interface UserService {
	
	public Iterable<User> getUserInformation();
	public User getUserInformationById(User user);
	public Iterable<Battalion> getBattalionInfo();
	public Iterable<Region> getRegionInfo();
	public Iterable<UserRole> getUserRoleInfo();
	public void deleteUser(User user);
	public void saveUser(User user);
	public Iterable<User> getUsersByRole(User user);
}
