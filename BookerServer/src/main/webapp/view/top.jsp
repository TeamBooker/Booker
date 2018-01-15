<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<c:if test="${empty sessionScope.UserId }">
	    		<div id="login" style="float: right;">
	    			<button type="button"  onclick="display_login()" class="btn btn-primary" style="margin: 10px;">Login</button>
	    		</div>
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
		    <c:if test="${not empty sessionScope.UserId}">
		    	<div style="width: 100%;height:100%; padding : 10px; float: right;">
		    		<div class="circle" style=" padding-top: 5px; padding-right:5px;"><font color="White" style="font-size: 20px; margin-left: 15px;">${Name_tag}</font></div>
		    	</div>
		    </c:if>
