<!DOCTYPE html>
<html ng-app>
<head>
<meta charset="UTF-8">
<title>signUp</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="http://code.angularjs.org/angular-1.0.0rc10.min.js"></script>
	<script type="text/javascript">

	function checkPwd(){
		var pwd = document.getElementById("UserPassword").value;
		var repwd = document.getElementById("UserReEnterPassword").value;
		var flag=angular.equals(pwd, repwd);
		if(!flag){
			document.getElementById("rePassword").innerHTML="<div class='form-group has-error has-feedback'>"+
			"<label class='control-label' for='inputError'>"+"Passwords must match"+"</label>"+
			"<input type='password' class='form-control' id='UserReEnterPassword' aria-describedby='inputError2Status'>"+
			"<span class='glyphicon glyphicon-remove form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputError2Status' class='sr-only'>"+"(error)"+"</span>"+
			"</div>";
		}else{
			document.getElementById("rePassword").innerHTML="<div class='form-group has-success has-feedback'>"+
			"<label class='control-label' for='inputSuccess'>"+"Re-enter Passwords"+"</label>"+
			"<input type='password' class='form-control' id='UserReEnterPassword' aria-describedby='inputSuccess2Status' value='"+pwd+"'>"+
			"<span class='glyphicon glyphicon-ok form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputSuccess2Status' class='sr-only'>"+"(success)"+"</span>"+
			"</div>";
		}
	}
	</script>
</head>
<body>
<div style="margin-left: 30%;margin-right: 30%;">
	<div class="navbar navbar-default center-block" style="padding: 25px;">
		<form>
		  <div class="form-group">
		    <label for="InputName">Name</label>
		    <input type="text" class="form-control" id="UserName" placeholder="Insert your name">
		  </div>
		  <div class="form-group">
		    <label for="Email">E-mail</label>
		    <input type="email" class="form-control" id="UserEmail" placeholder="Insert your email">
		  </div>
		  <div class="form-group">
		    <label for="InputPassword">Password</label>
		    <input type="password" class="form-control" id="UserPassword" placeholder="Password">
		  </div>
		 <div class="form-group" id="rePassword">
		    <label for="Re-enterpassword">Re-enter password</label>
		    <input type="password" class="form-control" id="UserReEnterPassword" placeholder="Re-enter password">
		  </div>
		
		  <button type="button" onclick="checkPwd()" class="btn btn-warning center-block">Create Account</button>
		</form>
	</div>
</div>


</body>
</html>