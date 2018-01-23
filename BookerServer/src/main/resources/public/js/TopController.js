function TopController($scope, $http, $compile){
	console.log("TopController loaded")
	var rate=0;

	/* 유저 로그인 메소드들 : 함수들을 따로 구분하여 모아 보기 위해 merge 사용(lodash) */
	_.merge($scope, {
		inputId : '',
		inputPassword : '',
		loginKeyPressed : function($event){
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
	});

	/* 네비게이터 메뉴 관련 메소드 및 필드 */
	$scope.navigetionList = [
		{ title: 'Reservation book', ico : '/img/Cart.ico', href : 'reservation'},
		{ title: 'Reading book', ico : '/img/Check.ico', href : 'read'},
		{ title: 'Rental book', ico : '/img/Contacts.ico', href : 'rental'},
		{ title: 'My study', ico : '/img/Heart.ico', href : 'wish'}
	];

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
