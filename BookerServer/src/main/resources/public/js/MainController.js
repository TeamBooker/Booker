var app = angular.module('booker',[]);
app.controller('MainController', function($scope, $http, $compile){
	var rate=0;
	$scope.enterdLogin = function($event){
		console.log($event);
		if ($event.which == 13)
			$scope.login();
	}
	/* 로그인 */
	$scope.login = function(){
		var InputId = document.getElementById("InputId").value;
		var InputPassword = document.getElementById("InputPassword").value;

		$http({
			method: 'POST', //방식
			url: '/login', /* 통신할 URL */
			params: {
				InputId : InputId,
				InPutPassword : InputPassword
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
			.success(function(data, status, headers, config) {
				if( data ) {
					/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
					$("#top").html($compile(data)($scope)); 
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



	/* 검색 */
	$scope.search = function(){
		/* AJAX 통신 처리 */
		var keyword = document.getElementById("search_text").value;

		$http({
			method: 'POST', //방식
			url: '/search', /* 통신할 URL */
			params: {keyword: keyword}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#middle").html($compile(data)($scope)); 

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

	$scope.test = function(){
		alert('성공');
	};


	/* 예약 */
	$scope.reservation = function(){
		$http({
			method: 'POST', //방식
			url: '/reservation', /* 통신할 URL */
			params: {}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#middle").html($compile(data)($scope)); 

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

	/* 열람 */
	$scope.read = function(){

		$http({
			method: 'POST', //방식
			url: '/read', /* 통신할 URL */
			params: {}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#middle").html($compile(data)($scope)); 

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

	/* 대출 */
	$scope.rental = function(){

		$http({
			method: 'POST', //방식
			url: '/rental', /* 통신할 URL */
			params: {}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#middle").html($compile(data)($scope)); 

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

	/* 위시 */
	$scope.wish = function(){
		$http({
			method: 'POST', //방식
			url: '/wish', /* 통신할 URL */
			params: {}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#middle").html($compile(data)($scope)); 

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


	/*로그아웃 */   			
	$scope.logout = function(){

		$http({
			method: 'POST', //방식
			url: '/logout', /* 통신할 URL */
			params: {}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				window.location = "/main";

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

	/*다음페이지*/
	$scope.Page = function(pageNumber){


		$http({
			method: 'GET', //방식
			url: '/page', /* 통신할 URL */
			params: {}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				window.location = "/main";
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



	/*상세페이지*/
	$scope.bookDetail = function(book){

		var bookId;
		$http({
			method: 'GET', //방식
			url: '/bookDetail', /* 통신할 URL */
			params: {bookId : book}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#middle").html($compile(data)($scope)); 

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


	/*후기 작성*/
	$scope.comment = function(book){
		var bookId=book;
		var bookRate = rate;
		var bookComment=document.getElementById("commentContents").value;

		$http({
			method: 'POST', //방식
			url: '/commentAdd', /* 통신할 URL */
			params: {
				bookId : book,
				rate : rate,
				bookComment : bookComment
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#commentList").html($compile(data)($scope)); 
				$("#commentContents").val("");
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


	/*후기 삭제*/
	$scope.dropComment = function(CommentNo,bookId){


		var commentNo;
		var bookId;
		$http({
			method: 'POST', //방식
			url: '/commentDel', /* 통신할 URL */
			params: {
				commentNo : CommentNo,
				bookId : bookId
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if( data ) {
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$("#commentList").html($compile(data)($scope)); 

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

	$scope.myProfile = function(){
		$http({url: '/myProfile', method: 'POST'})
		.success(function(data, status, headers, config) {
			if (!data)
				throw "no data"; /* 통신한 URL에서 데이터가 넘어오지 않았을 때 처리 */
			$("#middle").html($compile(data)($scope)); 
		})
		.error(console.error); 
	}
});

function display_login(){
	document.getElementById("login").style.display="none";
	document.getElementById("loginForm").style.display="block";
}
