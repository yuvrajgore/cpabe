<%@ include file="/WEB-INF/common/header.jsp" %>
<%@ include file="/WEB-INF/common/sidebar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>User Profile</h1>
      <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
     <div class="box box-success box-solid">
            <div class="box-header with-border">
             <h3 class="box-title">Profile Information</h3>    
              <div class="box-tools pull-right">
                <a data-toggle="modal" href="#responsive" style="margin:5px;float:right" id="eventUserId"><b>Update User</b></a>
              </div> 
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <form action="#" id="userForm" class="form-horizontal">
			 <div class="form-body">
			<input type="hidden" id="userId" name="userId">
			<div class="form-group">
				<label class="label-control col-md-3">First Name<span class="required"> * </span></label>				
				<label class="label-control col-md-9" id="labelFirstName"></label>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Last Name<span	class="required"> * </span></label>
				<label class="label-control col-md-9" id="labelLaststName"></label>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">User Name<span	class="required"> * </span></label>
				<label class="label-control col-md-9" id="labelUserName"></label>
			</div>
			<div class="form-group">
				<label class="col-md-3 label-control">Email Address<span class="required"> *</span></label>
				<div class="col-md-9">
				<label class="label-control col-md-9" id="labelEmail"></label>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">User Role<span	class="required"> * </span></label>
				<label class="label-control col-md-9" id="labelUserRoleId"></label>
			</div>
			
			<div class="form-group">
				<label class="label-control col-md-3">User Battalion<span	class="required"> * </span></label>
				<label class="label-control col-md-9" id="labelUserBattalionId"></label>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">User Region<span	class="required"> * </span></label>
				<label class="label-control col-md-9" id="labelUserRegionId"></label>
			</div>
			</div>
			</form>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        <div id="responsive" class="modal fade" tabindex="-1" aria-hidden="true">
		<div class="example-modal">
        <div class="modal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title"><b>User Registration Form</b></h4>
              </div>
              <div class="modal-body">
              <div class="alert alert-danger" id="error-alert">
										<button type="button" class="close" data-dismiss="alert">x</button>
										<strong>Error! </strong><label id="errormessage" />.
			 </div>
             <form action="#" id="userForm" class="form-horizontal">
			 <div class="form-body">
			<input type="hidden" id="userId" name="userId">
			<div class="form-group">
				<label class="label-control col-md-3">First Name<span class="required"> * </span></label>
				<div class="col-md-9">
				<input type="text" name="firstName" id="firstName" data-required="1" class="form-control" required />
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Last Name<span	class="required"> * </span></label>
				<div class="col-md-9">
				<input type="text" name="lastName" id="lastName" data-required="1" class="form-control" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">User Name<span	class="required"> * </span></label>
				<div class="col-md-9">
				<input type="text" name="userName" id="userName" data-required="1" class="form-control"  required/>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Password<span	class="required"> * </span></label>
				<div class="col-md-9">
				<input type="password" name="password" id="password" data-required="1" class="form-control"  required/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 label-control">Email Address<span class="required"> *</span></label>
				<div class="col-md-9">
				<div class="input-group">
			    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
			    <input type="email" id="email" 	name="email" class="form-control"	placeholder="Email Address">
				</div>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">User Role<span	class="required"> * </span></label>
				<div class="col-md-9">
				<select name="userRoleId" class="form-control" id="userRoleId">
			 		<option value="">Select Role</option>
				</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="label-control col-md-3">User Battalion<span	class="required"> * </span></label>
				<div class="col-md-9">
				<select name="battalionId" class="form-control" id="userBattalionId">
			 		<option value="">Select Battalion</option>
				</select>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">User Region<span	class="required"> * </span></label>
				<div class="col-md-9">
				<select name="regionId" class="form-control" id="userRegionId">
			 		<option value="">Select Region</option>
				</select>
				</div>
			</div>
			
			<div class="form-group">
			<div class="col-md-offset-3 col-md-9">
			<button type="button" id="submitForm" class="btn btn-success">Submit</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	
			</div>
			</div>
			</div>
			</form>
	        </div>
	        </div>
	            <!-- /.modal-content -->
	          </div>
	          <!-- /.modal-dialog -->
	        </div>
        <!-- /.modal -->
        </div>
		</div>

    </section>
    <!-- /.content -->
  </div>


<%@ include file="/WEB-INF/common/footer.jsp" %>
  <script>
  $(document).ready(function(){
	  alert("In document");
	  $.ajax({
			type : "POST",
			url : "getUserInfoById",
			contentType : "application/json",
			dataType : 'json',
			data: JSON.stringify({userId:id}),
			success : function(data) {
				 //$("#responsive").modal('show');
				 $("#labelFirstName").html(data.firstName);
				 $("#labelLastName").html(data.lastName);
				 $("#labelUserName").html(data.userName);
				 $("#labelEmail").html(data.email);
				 $("#labelUserRoleId").html(data.userRoleId);
				 $("#labelUserBattalionId").val(data.battalionId);
				 $("#labelUserRegionId").val(data.regionId)
				 $("#eventUserId").prop("id",editUser(data.userId));
			},
			error:function(response){
				alert("Unable to load User Information..");
			}		
		});
  });
  </script>
