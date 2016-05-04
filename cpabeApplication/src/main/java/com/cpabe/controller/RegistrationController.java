package com.cpabe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cpabe.model.Battalion;
import com.cpabe.model.Region;
import com.cpabe.model.User;
import com.cpabe.model.UserRole;
import com.cpabe.service.UserService;


@Controller
public class RegistrationController {

@Autowired
@Qualifier("userServiceImpl")
private UserService userService;

	@RequestMapping("/registration")
	public String gotoRegistration(){
		return "registration";
	}
	@RequestMapping(value="/getUserInfo",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Iterable<User> getUserInfo(){
		return this.userService.getUserInformation();
	}
	@RequestMapping(value="/getUserInfoById",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody User getUserInformationById(@RequestBody User user){
		return this.userService.getUserInformationById(user);
	}
	@RequestMapping(value="/getUserRoleInfo",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Iterable<UserRole> getUserRoleInfo(){
		return this.userService.getUserRoleInfo();
	}
	@RequestMapping(value="/getBattalionInfo",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Iterable<Battalion> getBattalionInfo(){
		return this.userService.getBattalionInfo();
	}
	@RequestMapping(value="/getRegionInfo",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Iterable<Region> getRegionInfo(){
		return this.userService.getRegionInfo();
	}
	@RequestMapping(value = "/submitUser", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody User saveUser(@RequestBody User user) {
		userService.saveUser(user);
		return user;
	}
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody void deleteUser(@RequestBody User user) {
		userService.deleteUser(user);
	}
	
	@RequestMapping(value="/getUsersByRole",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Iterable<User> getUsersByRole(@RequestBody User user){
		return this.userService.getUsersByRole(user);
	}
}
