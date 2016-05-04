
	getUserInfo();
	$("#success-alert").hide();
	$("#error-alert").hide();
	/* ----------Get Role Info -------------*/
	$.ajax({
		type : "POST",
		url : "getUserRoleInfo",
		dataType : 'json',
		contentType: "application/json",
		success : function(data) {
			console.log("Role");
			console.log(data);
			var userRole = '';
			$.each( data, function( key, value ) {
				userRole += '<option value="'+value.userRoleId+'">'+ value.userRoleDescription+ '</option>';

			});
			$('#userRoleId').append(userRole);
			var userHeaderList='';
			var usersTabContent='';
			$.each( data, function( key, value ) {
				console.log(value.userRoleId);
				if(value.userRoleId=='1'){
					getUserByRole(value.userRoleId);
					userHeaderList+=' <li class="active"><a href="#tab_'+value.userRoleId+'" data-toggle="tab" aria-expanded="true" onclick="getUserByRole('+value.userRoleId+')">'+value.userRoleName+'</a></li>';
					usersTabContent='<div class="tab-pane active" id="tab_'+value.userRoleId+' "><b>'+value.userRoleName+'  Details:</b>'
					+'<table  class="table table-striped table-bordered table-advance table-hover ">'
					+'<thead class="table-header-background">'								
					   +'<tr>	<th> Sr.No.	</th>	<th> First Name</th><th> Last Name</th><th> Username</th><th> Action	</th>	</tr>'
					+'</thead>'
					+'<tbody id="userList_'+value.userRoleId+' ">'
					+'</tbody>'
					+'</table>'
					+'</div>';
					
				}else{
					userHeaderList+='   <li class=""><a href="#tab_'+value.userRoleId+'" data-toggle="tab" aria-expanded="false" onclick="getUserByRole('+value.userRoleId+')">'+value.userRoleName+'</a></li>';
					usersTabContent='<div class="tab-pane active" id="tab_'+value.userRoleId+' ">'
					+'<b>'+value.userRoleName+'  Details:</b>'
					+'<table  class="table table-striped table-bordered table-advance table-hover ">'
					+'<thead class="table-header-background">'								
					   +'<tr>	<th> Sr.No.	</th>	<th> First Name</th><th> Last Name</th><th> Username</th><th> Action	</th>	</tr>'
					+'</thead>'
					+'<tbody id="userList_"'+value.userRoleId+'>'
					+'</tbody>'
					+'</table>'
					+'</div>';
					
				}
				
			});
			$("#usersHeader").append(userHeaderList);
			$("#usersTabContent").append(usersTabContent);
		},
		error:function(response){
			alert("No Role Info found...");
		}		
	});
	
	/*List of user according to role*/
	function getUserByRole(id){
		alert(id);
		$.ajax({
			type : "POST",
			url : "getUsersByRole",
			contentType : "application/json",
			dataType : 'json',
			data: JSON.stringify({userRoleId:id}),
			success : function(data) {
				console.log("User By Role");
				console.log(data);
				var userList = '';
				 var count=1;
			        $.each(data, function (i, item) {
			        	userList += '<tr><td>' +count++ + '</td><td>' + item.firstName + 
			        	'</td><td>' + item.lastName + '</td>'+ '<td>' + item.userName+
			        	'</td>'+ '<td><a class="btn btn-primary registration" data-toggle="modal" href="#" onclick="editUser('+item.userId+')">Edit</a>'+
			        	'<a	 class="btn btn-danger"  href="javascript:void(0)" style="margin-left:5px" onclick="deleteUser('+item.userId+')">Delete</a></td></tr>';
			        });
			        $("#userList_"+id).append(userList);
			},
			error:function(response){
				alert("Unable to load edit modal..");
			}		
		});
		}
	/* ----------Get Battalion Info -------------*/
	$.ajax({
		type : "POST",
		url : "getBattalionInfo",
		dataType : 'json',
		contentType: "application/json",
		success : function(data) {
			console.log("Battlion");
			console.log(data);
			var userBattalionId = '';
			$.each( data, function( key, value ) {
				userBattalionId += '<option value="'+value.battalionId+'">'
				+ value.battalionName
				+ '</option>';

			});
			$('#userBattalionId').append(userBattalionId);
		},
		error:function(response){
			alert("No Battalion Info found...");
		}		
	});
	/*Get Region Info*/
	$.ajax({
		type : "POST",
		url : "getRegionInfo",
		dataType : 'json',
		contentType: "application/json",
		success : function(data) {
			console.log("Region");
			console.log(data);
			var userRegionId = '';
			$.each( data, function( key, value ) {
				userRegionId += '<option value="'+value.regionId+'">'
				+ value.regionName
				+ '</option>';

			});
			$('#userRegionId').append(userRegionId);
		},
		error:function(response){
			alert("No Region  Info found...");
		}		
	});
	/*------------submit form------------*/
	$("#submitForm")
		.click(
				function() {
					var email = $("#email").val();
					if ($("#firstName").val() == "") {
						showError("Please enter First Name.");
					} else {
						if ($("#lastName").val() == "") {
							showError("Please enter Last Name.");
						} else {
							if ($("#userName").val() == "") {
								showError("Please enter an User Name.");
							} else {
								if ($("#password").val() == "") {
									showError("Please enter password.");
								} else {
									if (email == "") {
										showError("Please enter an email address.");
									} else {
										if($("#userBattalionId").val()==""){
											showError("Please select Battalion.");
										}else{
											if($("#userRegionId").val()==""){
												showError("Please select Region.");
											}else{
												if ($("#userRoleId").val() != "") {
													submitForm();
												} else {
													showError("Please select a User Role from the list");
												}
											}
										}
									}
								}
							}
						}
					}
				}); 	
function getUserInfo(){
	/*----------List of users--------------*/
	$.ajax({
	type : "POST",
	url : "getUserInfo",
	dataType : 'json',
	contentType: "application/json",
	success : function(data) {
		console.log("user info");
		console.log(data);
		 var userList = '';
		 var count=1;
	        $.each(data, function (i, item) {
	        	userList += '<tr><td>' +count++ + '</td><td>' + item.firstName + 
	        	'</td><td>' + item.lastName + '</td>'+ '<td>' + item.userName+
	        	'</td>'+ '<td><a class="btn btn-primary registration" data-toggle="modal" href="#" onclick="editUser('+item.userId+')">Edit</a>'+
	        	'<a	 class="btn btn-danger"  href="javascript:void(0)" style="margin-left:5px" onclick="deleteUser('+item.userId+')">Delete</a></td></tr>';
	        });
	        $('#userList').html(userList);
	},
	error:function(response){
		alert("No records found...");
	}		
});
}
function submitForm(){
	var userInformation=$("#userForm").serializeArray();
	var userObject = '{';
	$(userInformation).each(function(index, obj) {
		userObject += '"' + obj.name + '" : "' + obj.value + '",';
	});
	userObject += ' "" : "" ';
	userObject += '}';
	$.ajax({
		type:"POST",
		contentType : "application/json",
		dataType : 'json',
		url:"submitUser",
		data:userObject,
		success:function(response){
			$('#responsive').modal('hide');
			displaySuccessMessage('ADD');
			getUserInfo();
		},
		error:function(response){
			showError("Error has been occured while submitting the data.");
			}
	});	
}
function showError(message){
	 $("#error-alert").alert();
	 $("#errormessage").html(message);
     $("#error-alert").fadeTo(2000, 500).slideUp(1000);
}
function showSuccess(message){
	 $("#success-alert").alert();
	 $("#successmessage").html(message);
    $("#success-alert").fadeTo(2000, 500).slideUp(1000);
}

function displaySuccessMessage(mode){
	var message=new Array();
	switch(mode){
	case 'EDIT':
		showSuccess('Your changes have been successfully saved.');
		 break;
	case 'ADD':
		showSuccess('The user registration successfully completed.');
		break;
	case 'DELETE':
		showSuccess('The user has been deleted successfully.');
		}
	getUserInfo();
	}
function editUser(id){
	$.ajax({
		type : "POST",
		url : "getUserInfoById",
		contentType : "application/json",
		dataType : 'json',
		data: JSON.stringify({userId:id}),
		success : function(data) {
			 $("#responsive").modal('show');
			 $("#firstName").val(data.firstName);
			 $("#lastName").val(data.lastName);
			 $("#userName").val(data.userName);
			 $("#email").val(data.email);
			 $("#userRoleId").val(data.userRoleId);
			 $("#userId").val(data.userId);
			 $("#userBattalionId").val(data.battalionId);
			 $("#userRegionId").val(data.regionId)
			 $("#showUserName").html(data.firstName);
		},
		error:function(response){
			alert("Unable to load edit modal..");
		}		
	});
	}
	function deleteUser(id){
		$.ajax({
			type : "POST",
			url : "deleteUser",
			data: JSON.stringify({userId:id}),
			contentType: "application/json",
			success : function(data) {
				displaySuccessMessage('DELETE');				
			},
			error:function(response){
				alert("Error occured to delete user..");
			}		
		});	
	}