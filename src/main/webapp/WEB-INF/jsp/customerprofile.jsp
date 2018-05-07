<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
    
<style>
.fancy-select {
  position: absolute;
  left: 5000px;
}

.newSelect {
  position: relative;
  display: block;
  max-width: 300px;
  margin: 100px auto;
}
.newSelect:hover {
  height: auto;
}
.newSelect .selectedOption {
  background: white;
  padding: 20px;
  font-size: 18px;
  line-height: 18px;
  height: 58px;
  border: 1px solid #a9cdcf;
  color: #a9cdcf;
  cursor: pointer;
  position: relative;
  border-radius: 3px 3px 0 0;
}
.newSelect .selectedOption:after {
  content: '\f0dc';
  position: absolute;
  right: 20px;
  color: #af0606;
}
.newSelect .selectedOption.selected {
  color: #134b4e;
}
.newSelect .newOptions {
  position: absolute;
  width: 100%;
}
.newSelect .newOptions .newOption {
  display: none;
  top: 0;
  left: 0;
  font-size: 18px;
  line-height: 18px;
  height: 58px;
  padding: 20px;
  background: #ffe100;
  color: white;
  cursor: pointer;
}
.newSelect .newOptions .newOption:hover {
  background: #f80046;
}
.newSelect.clicked .newOption {
  display: block;
}
.newSelect.closed .newOption {
  display: none;
}

.panel-danger>.panel-heading
{
    background-color: #2f4cb5 !important;
    color: white !important;
}

.arrow_box {
    position: relative;
    background: none;
}
.arrow_box:hover {
    background: #262672;
}
.arrow_box:after {
    left: 100%;
    top: 50%;
    border: none;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: #fff;
    border-left-color: #fff;
    border-width: 26px;
    margin-top: -26px;
    transition: all 0.3s ease 0s;
}
.arrow_box:hover:after,
.arrow_box.active:after {
    left: 100%;
    top: 50%;
    border: none;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: transparent;
    border-left-color: #C21010;
    border-width: 0;
    margin-top: -26px;
}
.arrow_box:hover span,
.arrow_box.active span {
    height: 8px;
    width: 8px;
    line-height: 8px;
    border-radius: 50%;
    background: #fff;
    display: block;
    position: absolute;
    right: 0;
    top: 25px;
}
.list-items {
    border-bottom: none !important; width: 86%;
}
.list-items li {
    list-style: none;
    text-align: right;
    display: block;
    border-bottom: 1px solid #e7e7e7;
    position: relative;
    width: 100%;
    border-left: none !important; transition: all 0.4s ease 0s;
    border-radius: 3px;
}
.list-items li a {
	font-size:12px;
    color: #000;
    margin: 0;
    display: block;
    padding: 13px 25px 14px 0px;
    transition: none;
    border: 1px solid #e7e7e7 !important; border-left: none !important; transition: all 0.4s ease 0s;
}
.list-items li a:hover {
	font-size:12px;
    color: #fff;
    text-decoration: none;
    border-right: none;
    border-left: none !important;
}
.list-items li.active a {
	font-size:12px;
    background: #013950 !important;
    color: #fff;
    border: none;
    border-right-color: #013950 !important; border: 1px solid #013950 !important;
}
.nav.list-items > li > a:focus,
.nav.list-items > li > a:hover {
    background: #166eaf;
    color: #FFF;
    border: none;
    padding: 13px 25px 14px 0px;
    border-right-color: #013950 !important; outline-color: #013950 !important;
}
.nav-tabs > li > a {
    border-radius: 0;
    border: none;
}
.ser-list {
    padding: 100px 0;
}
.tab-data-info h5 {
    font-size: 24px;
    font-weight: 700;
    color: #C21010;
    font-weight: 700;
    margin: 35px 0 15px;
}
.tab-data-info p {
    font-size: 14px;
    font-weight: 400;
    color: #000;
    width: 78%;
}
.tab-data-info p {
    font-size: 16px ;
    font-weight: 300 ;
    color: #000 ;
    width: 100% !important;
}
.ulimagecss{
list-style-image:url(images/Right-pointer.png);
}
.col-md-6 h3 {
color:#ea8080 !important;
}
</style>
    

    <%@include file="abheeheader.jsp" %>
    
    <div class="container">
      <div>
        <div class="">
          <div class="row">
            <div class="col-sm-2">
              <ul class="nav nav-tabs list-items">
                <li class="arrow_box active"><a data-toggle="tab" href="#1_1">Personal Information</a> </li>
                <li class="arrow_box"><a data-toggle="tab" href="#1_2">Email</a> </li>
                <li class="arrow_box"><a data-toggle="tab" href="#1_3">Mobile Number</a> </li>
                <li class="arrow_box"><a data-toggle="tab" href="#1_4">Change Password</a> </li>
                <li class="arrow_box"><a data-toggle="tab" href="#1_5">My Orders</a> </li>
              </ul>
            </div>
            <div class="col-sm-10">
              <!-- Tab panes -->
              <div class="tab-content">
                <div class="tab-pane fade active in" id="1_1">
                  <div class="tab-data-info">
                  	<div style="margin-top:-20px;" class="pinfo">
                  		<div class="col-md-6">
                  			<h3>Personal Information</h3>
                  		</div>
                  		<div class="col-md-6">
                  			<h4 style="float:right; margin-top:20px;" id="editpersnolinfo"><a href="#"><i class="glyphicon glyphicon-edit"></i> Edit</a></h4>
                  			<h4 style="float:right; margin-top:20px;" id="savepersnolinfo"><a href="#"><i class="glyphicon glyphicon-save"></i> Save</a></h4>
                  		</div><div class="clearfix"></div>
                  	</div>
                  	<div class="edata">
                  		<div class="col-sm-6">
                  			<div class="col-md-3">
                  				<label style="margin-top:18px;">First Name: </label>
                  			</div>
                  			<div class="col-md-5">
                  				<input class="form-control" id="firstname" type="text" placeholder="First Name">
                  			</div>
                  			<div class="4">
                  			</div><div class="clearfix"></div>
                  		</div>
                  		<div class="col-sm-6">
                  			<div class="col-md-3">
                  				<label style="margin-top:18px;  margin-left:5px;">Last Name: </label>
                  			</div>
                  			<div class="col-md-5">
                  				<input class="form-control" type="text" id="lastname"  placeholder="Last Name" >
                  			</div>
                  			<div class="4">
                  			</div><div class="clearfix"></div>
                  		</div><div class="clearfix"></div>
                  		<div class="ainfo">
                  			<div class="col-md-1">
                  				<label style="margin-top:25px;">Address: </label>
                  			</div>
                  			<div class="col-md-11">
                  				<textarea  class="form-control" id="address" type="text" placeholder="Address"></textarea>
                  			</div><div class="clearfix"></div>
                  		</div>
                  	</div>
                  </div>
                </div>
                <div class="tab-pane fade" id="1_2">
                  <div class="tab-data-info">
                  	<div style="margin-top:-20px;" class="cinfo">
                  		<div class="col-md-6">
                  			<h3>Email Information</h3>
                  		</div>
                  		<div class="col-md-6">
                  			<h4 style="float:right; margin-top:20px;" id="editemailinfo"><a href="#"><i class="glyphicon glyphicon-edit"></i> Edit</a></h4>
                  			<h4 style="float:right; margin-top:20px;" id="saveemailinfo"><a href="#"><i class="glyphicon glyphicon-save"></i> Save</a></h4>
                  		</div><div class="clearfix"></div>
                  	</div>
                  	<div class="cdata">
                  		<div class="col-sm-6">
                  			<div class="col-md-2">
                  				<label style="margin-top:18px;">Email : </label>
                  			</div>
                  			<div class="col-md-6">
                  				<input style="float:left;" id="pemail" class="form-control emailOnly validate" type="text"  placeholder="Email" disabled="true">
                  			</div>
                  			<div class="col-md-4">
                  			</div><div class="clearfix"></div>
                  		</div>
                  		<div class="col-md-6">
                  		</div><div class="clearfix"></div>
                  	</div>
                  </div>
                </div>
                <div class="tab-pane fade" id="1_3">
                  <div class="tab-data-info">
                  	<div style="margin-top:-20px;" class="cinfo">
                  		<div class="col-md-6">
                  			<h3>Mobile Number</h3>
                  		</div>
                  		<div class="col-md-6">
                  			<h4 style="float:right; margin-top:20px;" id="editmobileno"><a href="#"><i class="glyphicon glyphicon-edit"></i> Edit</a></h4>
                  			<h4 style="float:right; margin-top:20px;" id="savemobileno"><a href="#"><i class="glyphicon glyphicon-save"></i> Save</a></h4>
                  		</div><div class="clearfix"></div>
                  	</div>
                  	<div class="cdata">
                  		<div class="col-sm-6">
                  			<div class="col-md-3">
                  				<label style="margin-top:18px; margin-left:5px;">Mobile Number : </label>
                  			</div>
                  			<div class="col-md-9">
                  				<input class="form-control numericOnly2 validate " maxlength="10" type="text"  id="pmobilenumber" placeholder="Mobile Number" disabled="true">
                  				<input class="form-control" type="hidden"  id="customerid" placeholder="Mobile Number">
                  				<input class="form-control" type="hidden"  id="checkpass">
                  			</div>
                  			<div class="col-md-4">
                  			</div><div class="clearfix"></div>
                  		</div>
                  		<div class="col-md-6">
                  		</div><div class="clearfix"></div>
                  	</div>
                  </div>
                </div>
                <div class="tab-pane fade" id="1_4">
                  <div class="tab-data-info">
                  	<div style="margin-top:-20px;" class="ainfo">
                  		<div class="col-md-6">
                  			<h3>Change Password</h3>
                  		</div>
                  		<div class="col-md-6">
                  			<h4 style="float:right; margin-top:20px;" id="editProfilePassword"><a href="#"><i class="glyphicon glyphicon-edit"></i> Edit</a></h4>
                  			<h4 style="float:right; margin-top:20px;" id="saveProfilePassword"><a href="#"><i class="glyphicon glyphicon-save"></i> Save</a></h4>
                  		</div><div class="clearfix"></div>
                  	</div>
                  	<div class="pdata">
                  		<div class="col-sm-6">
                  			<div class="col-md-4">
                  				<label style="margin-top:-5px;">Current Password: </label>
                  			</div>
                  			<div class="col-md-8">
                  				<input style="float:left;" id="pcurrentpassword" class="form-control" maxlength="4" type="password" placeholder="*****" disabled="true">
                  			</div><div class="clearfix"></div>
                  		</div>
                  		<div class="col-sm-6">
                  		</div><div class="clearfix"></div>
                  		<div class="col-sm-6">
                  			<div class="col-md-4">
                  				<label style="margin-top:-5px;">New Password: </label>
                  			</div>
                  			<div class="col-md-8">
                  				<input style="float:left;" id="pnewpassword" class="form-control" maxlength="4" type="password" placeholder="*****" disabled="true">
                  			</div><div class="clearfix"></div>
                  		</div>
                  		<div class="col-sm-6">
                  		</div><div class="clearfix"></div>
                  		<div class="col-sm-6">
                  			<div class="col-md-4">
                  				<label style="margin-top:-5px;">Confirm Password: </label>
                  			</div>
                  			<div class="col-md-8">
                  				<input style="float:left;" id="pconfirmpassword" class="form-control" maxlength="4" type="password" placeholder="*****" disabled="true">
                  			</div><div class="clearfix"></div>
                  		</div>
                  		<div class="col-sm-6">
                  		</div><div class="clearfix"></div>
                  	</div>
                  </div>
                </div>
                <div class="tab-pane fade" id="1_5">
                  <div class="tab-data-info">
                  	<div style="margin-top:-20px;" class="oinfo">
                  		<div class="col-md-6">
                  			<h3>My Orders</h3>
                  		</div>
                  		<div class="col-md-6">
                  		</div><div class="clearfix"></div>
                  	</div>
                  	<div class="odata">
    					<div class="table-responsive">
							<table class="table table-bordered priority prioritybg"	style="border: 1px solid #0460a4;" id="customerOrderTable">
								<thead>
									<tr style="background-color: #0460a4; color: #fff; text-align: center;">
										<th>OrderId</th>
										<th>Product(s)</th>
										<th>Date of Purchased</th>
										<th>Warranty Expired Date</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
                  	</div>
                  </div>
                </div>
              </div>
			  
              <br />
            </div>
          </div>
        </div>
		</div>



<script type="text/javascript">


$( document ).ready(function() {
	
	$('#savepersnolinfo').hide();
	$('#saveProfilePassword').hide();
	$('#saveemailinfo').hide();
	$('#savemobileno').hide();
	
	$("#firstname").prop('disabled',true);
	$("#lastname").prop('disabled',true);
	$("#address").prop('disabled',true);
});

var customerProfile1 =${customerProfile1};
console.log(customerProfile1);
displayTable(customerProfile1);

function displayTable(listOrders) {
	$.each(listOrders,function(i, orderObj) {
		$("#firstname").val(orderObj.firstname);
		$("#lastname").val(orderObj.lastname);
		$("#pemail").val(orderObj.email);
		$("#address").val(orderObj.address);
		$("#pmobilenumber").val(orderObj.mobilenumber);
		$("#customerid").val(orderObj.id);
		$("#checkpass").val(orderObj.id);
	});
	}


var productWarrantyOrdersList = ${ordersList};
if (productWarrantyOrdersList != "") {
	displayTable2(productWarrantyOrdersList);
}
function displayTable2(listOrders) {
	$('#tableId').html('');
	var tableHead = '<table id="customerOrderTable" class="table table-striped table-bordered datatables">'
			+ '<thead><tr><th>orderId</th><th>Products</th><th>Date of Purchased</th><th>Warranty Expired Date</th><th>Price</th></tr></thead><tbody></tbody></table>';
	$('#tableId').html(tableHead);
	serviceUnitArray = {};
	$.each(listOrders,function(i, orderObj) {
	serviceUnitArray[orderObj.id] = orderObj;
		var tblRow = "<tr>"
			+ "<td title='"+orderObj.order_id+"'>"+ orderObj.order_id + "</td>"
			+ "<td title='"+orderObj.productmodelid+"'>"+ orderObj.productmodelid + "</td>"
			+ "<td title='"+orderObj.purchaseddate+"'>"+ orderObj.purchaseddate + "</td>" 
			+ "<td title='"+orderObj.expireddate+"'>"+ orderObj.expireddate + "</td>" 		
			+ "</tr>";
		$(tblRow).appendTo("#tableId table tbody");
	});
	
}

$('#customer').blur(function() {
	var customer=$(this).val();

	$.ajax({
				type : "POST",
				url : "editCustomerProfile",
				data : {"customer":customer},
				dataType : "text",
				beforeSend : function() {
		             $.blockUI({ message: 'Please wait' });
		          }, 
				success : function(data) {
					if(data ==='true')
						{
						//alert("username already exists")
	 					$('#customer').css('border-color', 'red');
						 $('#submit1').prop('disabled', true);
						}
					else
						{
						$('#customer').css('border-color', 'none');
						$('#edit').prop('disabled', false);
						}
					
				},
				complete: function () {
		            
		            $.unblockUI();
		       },
				error :  function(e){$.unblockUI();console.log(e);}
				
			});

		}); 
		$(".acc").addClass("active");
		
$('#editpersnolinfo').click(function (){
	
	
	$('#savepersnolinfo').show();
	$('#editpersnolinfo').hide();
	
	$("#firstname").prop('disabled',false);
	$("#lastname").prop('disabled',false);
	$("#address").prop('disabled',false);
	
});


$('#savepersnolinfo').click(function (){
var firstname=	$("#firstname").val();
var lastname =	$("#lastname").val();
var address =$("#address").val();
var pemail =$("#pemail").val();
var pmobilenumber=$("#pmobilenumber").val();
var customerid=$("#customerid").val();
	
	alert(customerid);
	
	
	
	$.ajax({
		type : "POST",
		url : "editprofilecustomer",
		data :"firstname="+firstname+"&lastname="+lastname+"&address="+address+"&pemail="+pemail+"&pmobilenumber="+pmobilenumber+"&customerid="+customerid,
		dataType : "text",
		beforeSend : function() {
             $.blockUI({ message: 'Please wait' });
          }, 
		success : function(data) {
			//alert(data);
			
			if(data ==='true')
			{
				$("#firstname").prop('disabled',true);
				$("#lastname").prop('disabled',true);
				$("#address").prop('disabled',true);
				$("#pemail").prop('disabled',true);
				$("#pmobilenumber").prop('disabled',true);
				$('#savepersnolinfo').hide();
				$('#editpersnolinfo').show();
				alert(" Profile Updated Successfully ");
			}
			else
				{
				alert(data);
				}
			
		},
		complete: function () {
            
            $.unblockUI();
       },
		error :  function(e){$.unblockUI();console.log(e);}
		
	});
	
	
});

$('#editProfilePassword').click(function (){
	
	
	$('#saveProfilePassword').show();
	$('#editProfilePassword').hide();
	
	$("#pcurrentpassword").prop('disabled',false);
	$("#pnewpassword").prop('disabled',false);
	$("#pconfirmpassword").prop('disabled',false);
	
});


$('#saveProfilePassword').click(function (){
	
	var pconfirmpassword=$("#pconfirmpassword").val();
	var customerid=$("#customerid").val();
	
	var checkpass=$("#checkpass").val();
	if(checkpass!=pconfirmpassword)
		{
		alert("Enter Valid Password");
		return false;
		}
	
		
	var pnewpassword=$("#pnewpassword").val();
	
	if( pnewpassword !=pconfirmpassword)
		{
		alert("New Password and Confirm Password Not Matched");
		}
	else
		{
		
		$.ajax({
			type : "POST",
			url : "saveProfilePassword",
			data :"pconfirmpassword="+pconfirmpassword+"&customerid="+customerid,
			dataType : "text",
			beforeSend : function() {
	             $.blockUI({ message: 'Please wait' });
	          }, 
			success : function(data) {
				
				if(data ==='true')
				{
					$("#firstname").prop('disabled',true);
					$("#lastname").prop('disabled',true);
					$("#address").prop('disabled',true);
					$("#pemail").prop('disabled',true);
					$("#pmobilenumber").prop('disabled',true);
					$("#pcurrentpassword").prop('disabled',true);
					$("#pnewpassword").prop('disabled',true);
					$("#pconfirmpassword").prop('disabled',true);
					$("#pcurrentpassword").val();
					$("#pnewpassword").val();
					$("#pconfirmpassword").val("");
					$('#saveProfilePassword').hide();
					$('#editProfilePassword').show();
					
					alert(" Profile Password  Updated Successfully ");
				}
				else
					{
					alert(data);
					}
				
			},
			complete: function () {
	            
	            $.unblockUI();
	       },
			error :  function(e){$.unblockUI();console.log(e);}
			
		});
		
		}
		
		
	});
$('#editemailinfo').click(function (){
	
	
	$('#saveemailinfo').show();
	$('#editemailinfo').hide();
	
	$("#pemail").prop('disabled',false);
	
	
});	
$('#saveemailinfo').click(function (){
	var pemail =$("#pemail").val();
	var customerid=$("#customerid").val();
	
	alert(customerid);
	$.ajax({
		type : "POST",
		url : "editprofileemail",
		data :"pemail="+pemail+"&customerid="+customerid,
		dataType : "text",
		beforeSend : function() {
             $.blockUI({ message: 'Please wait' });
          }, 
          success : function(data) {
  			
  			if(data ==='true')
  			{     
				$("#pemail").prop('disabled',true);
  				$('#saveemailinfo').hide();
				$('#editemailinfo').show();
  				alert(" Email Updated Successfully ");
			}
			else if(data ==='false')
			{
				alert("Email already exists");
				
			}
			else
				{
				alert("Email Updation failed");
				}
			
		},
		complete: function () {
          
          $.unblockUI();
     },
		error :  function(e){$.unblockUI();console.log(e);}
		
		});	
	});	
$('#editmobileno').click(function (){
	
	
	$('#savemobileno').show();
	$('#editmobileno').hide();
	
	$("#pmobilenumber").prop('disabled',false);
	
	
});	
$('#savemobileno').click(function (){
	var pmobilenumber =$("#pmobilenumber").val();
	var customerid=$("#customerid").val();
	
	alert(customerid);
	$.ajax({
		type : "POST",
		url : "editprofilemobileno",
		data :"pmobilenumber="+pmobilenumber+"&customerid="+customerid,
		dataType : "text",
		beforeSend : function() {
             $.blockUI({ message: 'Please wait' });
          }, 
          success : function(data) {
  			
  			if(data ==='true')
  			{     
				$("#pmobilenumber").prop('disabled',true);
  				$('#savemobileno').hide();
				$('#editmobileno').show();
  				alert(" Mobilenumber Updated Successfully ");
			}
  			else if(data === 'false')
  				{
  				alert("MobileNumber already exists");
  				}
			else
			{
				alert("MobileNumber Updation Failed");
			}
			
		},
		complete: function () {
          
          $.unblockUI();
     },
		error :  function(e){$.unblockUI();console.log(e);}
		
	});
});	
/* function validateMobile(evt) {
	  var theEvent = evt || window.event;
	  var key = theEvent.keyCode || theEvent.which;
	  key = String.fromCharCode( key );
	  var regex = /[0-9]/;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	} */
	
	
/* function validateEmail(evt) {
	  var theEvent = evt || window.event;
	  var key = theEvent.keyCode || theEvent.which;
	  key = String.fromCharCode( key );
	  var regex =/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	}  */
	
</script>
<%@include file="abheefooter.jsp" %>