function TopController($scope, $http, $compile){
	console.log("TopController loaded")
	var rate=0;

	/* 유저 로그인 메소드들 : 함수들을 따로 구분하여 모아 보기 위해 merge 사용(lodash) */
	_.merge($scope, {
		inputId : '',
		inputPassword : '',
		enterdLogin : function($event){
			if ($event.which == 13)
			$scope.login();
		},
		login : function(){
			$http({
				method : 'POST',
				url : '/login',
				params : _.pick($scope, ['inputId', 'inputPassword'])
			}).success(function(data, status, headers, config) {
				if(!data){
					alert("fail");
					return;
				}
				$("#top").html($compile(data)($scope));
			}).error(console.error);
		},
		logout : function(){
			$http({method : 'POST', url : '/logout'})
			.success(function(data, status, headers, config) {
				if(!data){
					alert("fail");
					return;
				}
				window.location = "/main";
			}).error(console.error); 
		}
	})

	/*다음페이지*/
	$scope.Page = function(pageNumber){
		$http.get('/page')
		.success(function(data, status, headers, config) {
			if (!data){
				alert("fail");
				return;
			}
			window.location = "/main";
		})
		.error(console.error); 
	}

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
}
