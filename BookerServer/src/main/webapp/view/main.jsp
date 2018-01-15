<!DOCTYPE html>
<html lang="kr" ng-app>
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link href="/css/ihover.css" rel="stylesheet">
	<style type="text/css">
	body, html{
		height: 100%;
	}
	
	.top{
		height: 8%;
		
	}
	
	.middle{
		height: 80%;
	}
	
	.bottom{
		background-color: #D8D8D8;
		height: 12%;
	}
	
	</style>
    <title>TeamBook</title>
    <script src="http://code.angularjs.org/angular-1.0.0rc10.min.js"></script>
    <script type="text/javascript">
    
    	function display_login(){
    		
    		document.getElementById("top").innerHTML=
    			"<form class='form-inline'style='margin-top:10px;'>"+"<div class='form-group'>"+"<label for='InputID' style='margin-right:10px;'>"+
    			"<span class='glyphicon glyphicon-user' aria-hidden='true'>"+"</span>"+"</label>"
    			+"<input type='text' style='margin-right:10px;' class='form-control' id='InputId' name='InputId' placeholder='Insert Your ID'>"+
    			"</div>"+"<div class='form-group'>"+"<label for='InputPassword' style='margin-right:10px;'>"+
    			"<span class='glyphicon glyphicon-lock' aria-hidden='true'>"+"</span>"+"</label>"+
    			"<input type='password' class='form-control' id='inputPassword' name='inputPassword' placeholder='PassWord' style='margin-right:10px;'>"+
    			"</div>"+"<button type='button' class='btn btn-primary' style='margin-right:10px;' onclick='';>Login</button>"+"</form>";  		
    			  
    	}
    </script>
    
    
		
</head>
<body>
    <div class=container-fluid style="height:100%; padding-left: 0px;padding-right: 0px;">
    	<div class="top" id="top" style="float: right;">
    		<button type="button"  onclick="display_login()" class="btn btn-primary" style="margin: 10px;">Login</button>
    	</div>
    	
    	<div class="middle" style="clear: right;">
    	
    		<div>
    			<img class="center-block" src="/img/TB_title.png" style="width: 30%; padding-bottom: 5%; padding-top: 5%;">
    		</div>

	    	<div class="row center-block" style="width:40%;">
			  <div class="col-lg-6" style="width: 100%;">
			    <div class="input-group">
			      <input type="text" class="form-control" placeholder="Search for...">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			      </span>
			    </div>
			  </div>
			</div>
			
			
			<div style="margin-top:5%;">
				<center><h4>If you want to join us <a onclick="">SignUp</a></h4></center>
			</div>
			


    	</div>
    	
    	<div class="bottom">
    	
	    	<table style="width: 100%; height: 100%; padding: 0;">
	    		<tr>
	    			<td style="width: 20%;"><img src="/img/TB_title.png" style="width: 50%;"></td>
	    			<td style="width: 100%;">
		    			
			    		[16258] 경기도 수원시 장안구 조원로16번길 68(조원동)<br/>
						전화 : 031-789-4561 / 1990-3300 팩스 : 031-123-4567<br/>
						Copyright by 제주시 도서관사업소 All Right Reserved.<br/>
						
					</td>
	    		</tr>
	    	</table>
    		
    		
    	</div>
    </div>
</body>
</html>