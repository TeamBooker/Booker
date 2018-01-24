<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	<img class="center-block" src="../img/TB_title.png" style="width: 30%; padding-bottom: 5%; padding-top: 5%;">
</div>
<div class="row center-block" style="width:40%;">
	<div class="col-lg-6" style="width: 100%;">
		<div class="input-group">
			<input type="text" id="search_text" class="form-control" placeholder="Search for..." value="" ng-model="word">
			<span class="input-group-btn">
				<a href="#/search/{{word}}">
					<button class="btn btn-default" type="button">
						<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
					</button>
				</a>
			</span>
		</div>
	</div>
</div>

<div style="margin-top:5%;">
	<center><h4>If you want to join us <a onClick="$('#exampleModalCenter').modal();">SignUp</a></h4></center>
</div>