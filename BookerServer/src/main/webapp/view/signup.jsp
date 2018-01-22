<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>

	<script type="text/javascript">
	var check_id = false;
	var check_password = false;

	function SignController($scope, $http, $compile)
	{
		/* 아이디 체크 */
		$scope.checkId = function(){
			var InputId = document.getElementById("UserEmail").value;
		
 			$http({
    			method: 'POST', //방식
    			url: '/checkid', /* 통신할 URL */
    			params: {
    				InputId : InputId,
    			}, /* 파라메터로 보낼 데이터 */
    			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
    		})
    		.success(function(data, status, headers, config) {
    			if( data ) {
    				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
    				
    				if(data==1){
        				document.getElementById("check").innerHTML="<p class='text-danger'>"+"Duplicate ID."+"</p>";
        				document.getElementById("Email_label").innerHTML="<div class='form-group has-error has-feedback' style='margin-bottom:0;'>"+
        				"<label class='control-label' for='inputError'>"+"Passwords must match"+"</label>"+
        				"<span class='glyphicon glyphicon-remove form-control-feedback' aria-hidden='true'>"+
        				"</span>"+"<span id='inputError2Status' class='sr-only'>"+"(error)"+"</span>"+
        				"</div>";
        				check_id = false;

    				}else{
        				document.getElementById("check").innerHTML="<p class='text-success'>"+"You can use the ID."+"</p>";
        				document.getElementById("Email_label").innerHTML="<div class='form-group has-success has-feedback' style='margin-bottom:0;'>"+
        				"<label class='control-label' for='inputSuccess'>"+"Re-enter Passwords"+"</label>"+
        				"<span class='glyphicon glyphicon-ok form-control-feedback' aria-hidden='true'>"+
        				"</span>"+"<span id='inputSuccess2Status' class='sr-only'>"+"(success)"+"</span>"+
        				"</div>";
        				check_id = true;

    				}
    			}
    			else {
    				/* 통신한 URL에서 데이터가 넘어오지 않았을 때 처리 */
    				alert("fail");
    			}
    		})
    		.error(function(data, status, headers, config) {
    			/* 서버와의 연결이 정상적이지 않을 때 처리 */
    			alert("error");
    			console.log(status);
    		}); 

			};
			
			
			
			/* 가입! */
			$scope.signup = function(){
				
				if(!check_id){
					alert("Please edit your ID.");
					return false;
				}
				if(!check_password){
					alert("Please edit your password");
					return false;
				}
				
				var InputId = document.getElementById("UserEmail").value;
				var InputPassword = document.getElementById("UserPassword").value;
				
	 			$http({
	    			method: 'POST', //방식
	    			url: '/signup', /* 통신할 URL */
	    			params: {
	    				InputId : InputId,
	    				InputPassword : InputPassword
	    			}, /* 파라메터로 보낼 데이터 */
	    			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
	    		})
	    		.success(function(data, status, headers, config) {
	    			if( data ) {
	    				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
						alert("sing success");
						$('#exampleModalCenter').modal('hide');
	    		
	    			}
	    			else {
	    				/* 통신한 URL에서 데이터가 넘어오지 않았을 때 처리 */
	    				alert("fail");
	    			}
	    		})
	    		.error(function(data, status, headers, config) {
	    			/* 서버와의 연결이 정상적이지 않을 때 처리 */
	    			alert("error");
	    			console.log(status);
	    		}); 

				};
	}

	/* 비밀번호체크! */
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
			
			document.getElementById("Password_label").innerHTML="<div class='form-group has-error has-feedback' style='margin-bottom:0;'>"+
			"<label class='control-label' for='inputError'>"+"Passwords must match"+"</label>"+
			"<span class='glyphicon glyphicon-remove form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputError2Status' class='sr-only'>"+"(error)"+"</span>"+
			"</div>";
			
			check_password = false;
			document.getElementById("submit").disabled = true;
			
		}else{
			document.getElementById("rePassword_label").innerHTML="<div class='form-group has-success has-feedback' style='margin-bottom:0;'>"+
			"<label class='control-label' for='inputSuccess'>"+"Re-enter Passwords"+"</label>"+
			"<span class='glyphicon glyphicon-ok form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputSuccess2Status' class='sr-only'>"+"(success)"+"</span>"+
			"</div>";
			
			document.getElementById("Password_label").innerHTML="<div class='form-group has-success has-feedback' style='margin-bottom:0;'>"+
			"<label class='control-label' for='inputSuccess'>"+"Re-enter Passwords"+"</label>"+
			"<span class='glyphicon glyphicon-ok form-control-feedback' aria-hidden='true'>"+
			"</span>"+"<span id='inputSuccess2Status' class='sr-only'>"+"(success)"+"</span>"+
			"</div>";
			
			check_password = true;
			document.getElementById("submit").removeAttribute("disabled");
	
		}
	}
	</script>
</head>
<body>
<div ng-controller="SignController">
	<div class="navbar navbar-default center-block" style="padding: 25px;">
		<form>
		  <div class="form-group">
		  	<div id="Email_label">
		    <label for="Email">E-mail</label>
		    </div>
		    <input type="email" class="form-control" id="UserEmail" name="userId" ng-blur="checkId()" placeholder="Insert your email">
		  </div>
		  <div id="check">
		  
		  </div>
		  <div class="form-group">
		  	<div id="Password_label">
		    <label for="InputPassword">Password</label>
		    </div>
		    <input type="password" class="form-control" id="UserPassword" name="userPassword"  placeholder="Password">
		  </div>
		 <div class="form-group">
		 	<div id="rePassword_label">
		    <label for="Re-enterpassword">Re-enter password</label>
		    </div>
		    <input type="password" class="form-control" id="UserReEnterPassword" placeholder="Re-enter password" onkeyup="checkPwd()">
		    
		    <div id="repassword_span"></div>
		  </div>
		
		  <button type="button" ng-click="signup()" id="submit" class="btn btn-warning center-block" disabled="disabled">Create Account</button>
		</form>
	</div>
</div>
</body>
</html>