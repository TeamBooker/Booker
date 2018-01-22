<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	<img class="center-block" src="../img/TB_title.png" style="width: 30%; padding-bottom: 5%; padding-top: 5%;">
</div>
<div class="row center-block" style="width:40%;">
	<div class="col-lg-6" style="width: 100%;">
		<div class="input-group">
			<input type="text" id="search_text" class="form-control" placeholder="Search for..." value="">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button" ng-click="search()" ><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
			</span>
		</div>
	</div>
</div>
<div style="margin-top:5%;">
	<center><h4>If you want to join us <a onClick="$('#exampleModalCenter').modal();">SignUp</a></h4></center>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Sign UP</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<jsp:include page="signup.jsp"></jsp:include>
			</div>
		</div>
	</div>
</div>