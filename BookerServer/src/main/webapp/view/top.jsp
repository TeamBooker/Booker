<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html ng-app>
<head>
</head>
<body>
	<c:if test="${empty sessionScope.UserId }">
	    		<div id="login" style="float: right;">
	    			<button type="button"  onclick="display_login()" class="btn btn-primary" style="margin: 10px;">Login</button>
	    		</div>
	    		
	    		<c:if test="${Login_error == 1 }">
	    				<script type="text/javascript">alert("You are not subscribed. Please join us!");</script>

	    		</c:if>
	    		<c:if test="${Password_error == 1 }">
	    				<script type="text/javascript">alert("The password was wrong.");</script>
	    		</c:if>
	    			
	    		
	    		<div id="loginForm" style="display: none; float: right;">	    		
	    		    			<form class="form-inline"style="margin-top:10px;">
					    			<div class="form-group">
						    			<label for="InputID" style="margin-right:10px;">
							    			<span class="glyphicon glyphicon-user" aria-hidden="true">
							    			</span>
						    			</label>
						    			<input type="text" style="margin-right:10px;" class="form-control" id="InputId" name="InputId" placeholder="Insert Your ID">
						    		</div>
						    		<div class="form-group">
						    			<label for="InputPassword" style="margin-right:10px;">
						    			<span class="glyphicon glyphicon-lock" aria-hidden="true">
						    			</span>
						    			</label>
						    			<input type="password" class="form-control" id="InputPassword" name="inputPassword" placeholder="PassWord" style="margin-right:10px;">
					    			</div>
				    				<button type="button" class="btn btn-primary" style="margin-right:10px;" ng-click="login()">Login</button>
				    			</form>  	
				    			
	    		</div>
    </c:if>
    <c:if test="${not empty sessionScope.UserId }">
		    	<div id="userForm" style="width: 100%;height:100%;margin-top: 10px;">
		    		<div class="circle" style=" padding-top: 5px; margin-right:5px;"><font color="White" style="font-size: 20px; margin-left: 13px;">${sessionScope.Name_tag}</font></div>
		    		<img src="/img/Cart.ico" ng-click="reservation()" style="margin-right: 10px; width: 40px; float: right;">
		    		<img src="/img/Check.ico" ng-click="read()" style="margin-right: 10px; width: 40px; float: right;">
		    		<img src="/img/Contacts.ico" ng-click="rental()" style="margin-right: 10px; width: 40px; float: right;">
		    		<img src="/img/Heart.ico" ng-click="wish()" style="margin-right:10px; width: 40px; float: right;">
		    	</div>
	</c:if>
</body>
</html>