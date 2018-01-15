<!DOCTYPE html>
<html ng-app>
<head>
<meta charset="UTF-8">
<title>signUp</title>

	<script type="text/javascript">

	function checkPwd(){
		var pwd = document.getElementById("UserPassword").value;
		var repwd = document.getElementById("UserReEnterPassword").value;
		var flag=angular.equals(pwd, repwd);
		
		if(!flag){
			document.getElementById("rePassword_label").innerHTML="<div class='form-group has-error has-feedback' style='margin-bottom:0;'>"+
			"<label class='control-label' for='inputError'>"+"Passwords must match"+"</label>"+
			"<span class='glyphicon glyphicon-remove form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputError2Status' class='sr-only'>"+"(error)"+"</span>"+
			"</div>";
			document.getElementById("submit").disabled = true;
			
			
		}else{
			document.getElementById("rePassword_label").innerHTML="<div class='form-group has-success has-feedback' style='margin-bottom:0;'>"+
			"<label class='control-label' for='inputSuccess'>"+"Re-enter Passwords"+"</label>"+
			"<span class='glyphicon glyphicon-ok form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputSuccess2Status' class='sr-only'>"+"(success)"+"</span>"+
			"</div>";
			
			document.getElementById("submit").removeAttribute("disabled");
	
		}
	}
	</script>
</head>
<body>
<div>
	<div class="navbar navbar-default center-block" style="padding: 25px;">
		<form>
		  <div class="form-group">
		    <label for="InputName">Name</label>
		    <input type="text" class="form-control" id="UserName" name="userName" placeholder="Insert your name">
		  </div>
		  <div class="form-group">
		    <label for="Email">E-mail</label>
		    <input type="email" class="form-control" id="UserEmail" name="userId" placeholder="Insert your email">
		  </div>
		  <div class="form-group">
		    <label for="InputPassword">Password</label>
		    <input type="password" class="form-control" id="UserPassword" name="userPassword"  placeholder="Password">
		  </div>
		 <div class="form-group">
		 	<div id="rePassword_label">
		    <label for="Re-enterpassword">Re-enter password</label>
		    </div>
		    <input type="password" class="form-control" id="UserReEnterPassword" placeholder="Re-enter password" onkeyup="checkPwd()">
		    
		    <div id="repassword_span"></div>
		  </div>
		
		  <button type="button" onclick="" id="submit" class="btn btn-warning center-block" disabled="disabled">Create Account</button>
		</form>
	</div>
</div>
</body>
</html>