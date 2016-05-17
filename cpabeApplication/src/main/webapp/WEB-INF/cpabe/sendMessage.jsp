<%@ include file="/WEB-INF/common/header.jsp" %>
<%@ include file="/WEB-INF/common/sidebar.jsp" %>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Dashboard<small>Control panel</small></h1>
      <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
     <div class="box box-success box-solid">
            <div class="box-header with-border">
             <h3 class="box-title">Message Information:</h3>
              <div class="box-tools pull-right">
                <a data-toggle="modal" href="#responsive" style="margin:5px;float:right"><b>Add New Message</b></a>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            	<div class="alert alert-success" id="messageSuccess-alert">
            	<button type="button" class="close" data-dismiss="alert">x</button>	<strong>Success! </strong><label id="messageSuccessmessage" />.
				</div>
				<table  class="table table-striped table-bordered table-advance table-hover ">
					<thead class="table-header-background">'								
					 <tr>	
					 <th> Sr.No.</th><th> Message Title</th><th>Description</th><th> Action</th>	
					 </tr>
					</thead>
					<tbody id="messageList">
					</tbody>
					</table>
					</div>
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
                <h4 class="modal-title"><b>Add Message</b></h4>
              </div>
              <div class="modal-body">
              <div class="alert alert-danger" id="messageError-alert">
										<button type="button" class="close" data-dismiss="alert">x</button>
										<strong>Error! </strong><label id="messageErrormessage" />.
			 </div>
             <form action="#" id="messageForm" class="form-horizontal">
			 <div class="form-body">
			<input type="hidden" id="messageId" name="messageId">
			<div class="form-group">
				<label class="label-control col-md-3">Message Title<span class="required"> * </span></label>
				<div class="col-md-9">
				<input type="text" name="messageTitle" id="messageTitle" data-required="1" class="form-control" required />
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Message Description<span	class="required"> * </span></label>
				<div class="col-md-9">
				<input type="text" name="messageDescription" id="messageDescription" data-required="1" class="form-control" required/>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Upload File<span	class="required"> * </span></label>
				<div class="col-md-9">
				<input type="file" name="messageData" id="messageData" data-required="1" class="form-control"  required/>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Secret Key<span class="required"> * </span></label>
				<div class="col-md-9">
				<input type="password" name="secretKey" id=""secretKey"" data-required="1" class="form-control" required />
				</div>
			</div>
			<!-- <div class="form-group">
				<label class="label-control col-md-3">Message<span	class="required"> * </span></label>
				<div class="col-md-9">
				<textarea rows="3" cols="5" name="messageData" id="messageData" class="form-control"  required></textarea>
				</div>
			</div> -->
			<div class="form-group">
			<div class="col-md-offset-3 col-md-9">
			<button type="button" class="btn btn-danger" >Request Key</button>
			</div>
			</div>
			<div class="form-group">
			<div class="col-md-offset-3 col-md-9">
			<button type="button" onClick="submitMesageForm()" class="btn btn-success">Submit</button>
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
		<div id="sendMessageModal" class="modal fade" tabindex="-1" aria-hidden="true">
		<div class="example-modal">
        <div class="modal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title"><b>Send Message</b></h4>
              </div>
              <div class="modal-body">
              <div class="alert alert-danger" id="sendMessageError-alert">
										<button type="button" class="close" data-dismiss="alert">x</button>
										<strong>Error! </strong><label id="sendMessageErrormessage" />.
			 </div>
             <form action="#" id="sendMessageForm" class="form-horizontal">
			 <div class="form-body">
			<input type="hidden" id="sendMessageId" name="messageId">
			<div class="form-group">
				<label class="label-control col-md-3">Message Title<span class="required"> * </span></label>
				<div class="col-md-9">
				<input type="text" name="messageTitle" id="messageTitle" data-required="1" class="form-control" required />
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Secret Key<span class="required"> * </span></label>
				<div class="col-md-9">
				<input type="password" name="secretKey" id=""secretKey"" data-required="1" class="form-control" required />
				</div>
			</div>
			<!-- <div class="form-group">
				<label class="label-control col-md-3">Message<span	class="required"> * </span></label>
				<div class="col-md-9">
				<textarea rows="3" cols="5" name="messageData" id="messageData" class="form-control"  required></textarea>
				</div>
			</div> -->
			<div class="form-group">
			<div class="col-md-offset-3 col-md-9">
			<button type="button" class="btn btn-danger" onClick="requestKey()">Request Key</button>
			</div>
			</div>
			<div class="form-group">
			<div class="col-md-offset-3 col-md-9">
			<button type="button" onClick="sendMesageForm()" class="btn btn-success">Send</button>
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
			<div id="requestKeyModal" class="modal fade" tabindex="-1" aria-hidden="true">
		<div class="example-modal">
        <div class="modal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title"><b>Request For Secret Key</b></h4>
              </div>
              <div class="modal-body">
              <div class="alert alert-danger" id="sendRequestKeyError-alert">
										<button type="button" class="close" data-dismiss="alert">x</button>
										<strong>Error! </strong><label id="sendRequestKeyErrormessage" />.
			 </div>
             <form action="#" id="sendRequestKeyForm" class="form-horizontal">
			 <div class="form-body">
			<input type="hidden" id="requestMessageId" name="messageId">
			
			<div class="form-group">
				<label class="label-control col-md-3">Select Battalion<span class="required"> * </span></label>
				<div class="col-md-9">
				<select name="battalionId" id="battalionId"  class="form-control"/>
					<option value="0">Select Battalion</option>
				</select>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Select User<span class="required"> * </span></label>
				<div class="col-md-9">
				<select name="userId" id="userId"  class="form-control"/>
					<option value="0">Select User</option>
				</select>
				</div>
			</div>
			<div class="form-group">
				<label class="label-control col-md-3">Select Key Authority<span class="required"> * </span></label>
				<div class="col-md-9">
				<select name="keyAuthorityId" id="keyAuthorityId"  class="form-control"/>
					<option value="0">Select Key Authority</option>
				</select>
				</div>
			</div>
			<div class="form-group">
			<div class="col-md-offset-3 col-md-9">
			<button type="button" onClick="sendRequestForm()" class="btn btn-success">Send Request</button>
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
			<div id="messageModal" class="modal fade" tabindex="-1" aria-hidden="true">
					<div class="modal-dialog" >
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true"></button>
								<h4 class="modal-title">
									<b>View Message</b>
								</h4>
							</div>
							<div class="modal-body" style="overflow-y: auto;height:400px">								
									<div id="ShowMessageData"></div>
							</div>
						</div>
					</div>
				</div>
    </section>
    <!-- /.content -->
  </div>
<%@ include file="/WEB-INF/common/footer.jsp" %>
<script>
getMessageInfo();
getBattalionInfo();
requestKeyAuthorityInfo();
$("#sendRequestKeyError-alert").hide();
$("#messageSuccess-alert").hide();
$("#messageError-alert").hide();
$("#sendMessageError-alert").hide();
function getMessageInfo(){
	$.ajax({
		type : "POST",
		url : "getMessageInfo",
		contentType : "application/json",
		dataType : 'json',
		success : function(data) {
			console.log(data);
			var messageList = '';
			 var count=1;
		        $.each(data, function (i, item) {
		        	messageList+= '<tr><td>' +count++ + '</td><td>' + item.messageTitle + 
		        	'</td><td>' + item.messageDescription + '</td>'+
		        	'<td><a class="btn btn-primary" data-toggle="modal" href="#" onclick="editMessage('+item.messageId+')">Edit</a> '+
		        	'<a class="btn btn-info" data-toggle="modal" href="#" onclick="viewMessage('+item.messageId+')" style="margin-left:5px">View</a>'+
		        	'<a	 class="btn btn-danger"  href="javascript:void(0)" style="margin-left:5px" onclick="deleteMessage('+item.messageId+')">Delete</a>'+
		        	'<a	 class="btn btn-success"  href="javascript:void(0)" style="margin-left:5px" onclick="sendMessage('+item.messageId+')">Send</a>	</td></tr>';
		        });
		      
		        $("#messageList").html(messageList);
		},
		error:function(response){
			alert("Unable to load messages..");
		}		
	});
}
function showMessageError(message){
	 $("#messageError-alert").alert();
	 $("#messageErrormessage").html(message);
    $("#messageError-alert").fadeTo(8000, 500).slideUp(1000);
}
function showMessageSuccess(message){
	 $("#messageSuccess-alert").alert();
	 $("#messageSuccessmessage").html(message);
   $("#messageSuccess-alert").fadeTo(8000, 500).slideUp(1000);
}
function editMessage(id){
	$.ajax({
		type : "POST",
		url : "getMessageIdInfo",
		contentType : "application/json",
		dataType : 'json',
		data: JSON.stringify({messageId:id}),
		success : function(data) {
			console.log("message");
			console.log(data);
			 $("#responsive").modal('show');
			 $("#messageId").val(data.messageId);
			 $("#messageTitle").val(data.messageTitle);
			 $("#messageDescription").val(data.messageDescription);
		},
		error:function(response){
			showMessageError("Unable to load edit modal..");
		}		
	});
	}
function viewMessage(id){
	$.ajax({
		type : "POST",
		url : "getMessageData",
		contentType : "application/json",
		dataType : 'text',
		data: JSON.stringify({messageId:id}),
		success : function(response) {
			$("#messageModal").modal('show');
			$("#ShowMessageData").text(response);
		},
		error:function(response){
			showMessageError("Unable to load Message.");
		}		
	});
	}
	function deleteMessage(id){
		$.ajax({
			type : "POST",
			url : "deleteMessage",
			dataType :"json",
			data: JSON.stringify({messageId:id}),
			contentType: "application/json",
			success : function(data) {
				displayMessageSuccessMessage('DELETE');				
			},
			error:function(response){
				showMessageError("Error occured to delete Message..");
			}		
		});	
	}
	function sendMessage(id){
		$.ajax({
			type : "POST",
			url : "getMessageIdInfo",
			contentType : "application/json",
			dataType : 'json',
			data: JSON.stringify({messageId:id}),
			success : function(response) {
				$("#sendMessageModal").modal('show');	
				$("#sendMessageId").val(id);	
				$("#requestMessageId").val(id);	
				$("#messageTitle").val(response.messageTitle);
			},
			error:function(response){
				showMessageError("Unable to load Message.");
			}		
		});
		}

	function displayMessageSuccessMessage(mode){
	var message=new Array();
	switch(mode){
	case 'EDIT':
		showMessageSuccess('Your changes have been successfully saved.');
		 break;
	case 'ADD':
		showMessageSuccess('The Message has been added successfully.');
		break;
	case 'DELETE':
		showMessageSuccess('The Message has been deleted successfully.');
		}
	getMessageInfo();
	}

	function submitMesageForm(){
		var formData = new FormData($("#messageForm")[0]);
		 	    $.ajax({
		 	        url:'submitMessage',
		 	        type: 'POST',
		 	        data: formData,
		 	       cache: false,
			        contentType: false,
			        processData: false,
			        enctype: 'multipart/form-data',
		 	        success: function (data) {
		 	        	$("#responsive").modal('hide');
		 	        	displayMessageSuccessMessage("ADD");
		 	        },
		 	        error:function(){
		 	        	showMessageError("Error occured to save Message..");
		 	        }
		 	        
		 	    });

		 	    return false;

	}
	function sendRequestForm(){
		var userRequestInformation=$("#sendRequestKeyForm").serializeArray();
		var userObject = '{';
		$(userRequestInformation).each(function(index, obj) {
			userObject += '"' + obj.name + '" : "' + obj.value + '",';
		});
		userObject += ' "" : "" ';
		userObject += '}';
		$.ajax({
			type:"POST",
			contentType : "application/json",
			dataType : 'json',
			url:"submitRequest",
			data:userObject,
			success:function(response){
				$('#requestKeyModal').modal('hide');
				alert("Request success");
			},
			error:function(response){
				alert("Request error");
				}
		});	
	}
	function requestKey(){
				$("#requestKeyModal").modal('show');
	}
	function getBattalionInfo(){
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
				$('#battalionId').append(userBattalionId);
			},
			error:function(response){
				alert("No Battalion Info found...");
			}		
		});
	}

	function requestKeyAuthorityInfo(){
		$.ajax({
			type : "POST",
			url : "requestKeyAuthorityInfo",
			dataType : 'json',
			contentType: "application/json",
			success : function(data) {
				console.log("key");
				console.log(data);
				var userKeyAuthorityId = '';
				$.each( data, function( key, value ) {
					userKeyAuthorityId += '<option value="'+value.userId+'">'
					+ value.userName
					+ '</option>';

				});
				$('#keyAuthorityId').append(userKeyAuthorityId);
			},
			error:function(response){
				alert("No key Authority Info found...");
			}		
		});
	}
	
	$("#battalionId").change(function(){
		var id=$("#battalionId").val();
		$.ajax({
			type : "POST",
			url : "requestUserInfo",
			dataType : 'json',
			contentType: "application/json",
			data: JSON.stringify({battalionId:id}),
			success : function(data) {
				console.log("Battalion");
				console.log(data);
				var user = '';
				$.each( data, function( key, value ) {
					user += '<option value="'+value.userId+'">'
					+ value.userName
					+ '</option>';

				});
				$('#userId').html(user);
			},
			error:function(response){
				alert("No Battalion Info found...");
			}		
		});		
	});
</script>