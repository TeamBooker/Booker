function SearchController($scope, $http, $compile,$routeParams){
	console.log("searchcontroller loaded");
	var bookId = $routeParams.bookId;
	var word = $scope.keyword;
	var keywords=$routeParams.keywords;
	
	
	/* 검색 */

	
	$scope.search_list = function(){
		/* AJAX 통신 처리 */
		
		$http({
			method: 'POST', //방식
			url: '/search_list', /* 통신할 URL */
			params: {keyword: keywords}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if(!data){
				alert("fail");
				return;
			}
				/* 성공적으로 결과 데이터가 넘어 왔을 때 처리 */
				$scope.bookList =data;
				
		})
		.error(console.error);

	};
	
	/*상세페이지*/
	$scope.bookDetail = function(){
		$http({
			method: 'GET',
			url: '/bookDetail_Content',
			params: {bookId : bookId},
			headers: {'Content-Type': 'application/json; charset=utf-8'}
		}).success(function(data, status, headers, config) {
			if(!data) {
				alert("fail");
				return;
			}
			console.log(data);
			$scope.book=data[0];
			$scope.commentList=data[1];
			$scope.wishNo=data[2];
		})
		.error(console.error);
	};
	

	/*후기 작성*/
	$scope.comment = function(){

		var bookComment=document.getElementById("commentContents").value;
		var rate = document.getElementById("rate").value;
		$http({
			method: 'POST', //방식
			url: '/commentAdd', /* 통신할 URL */
			params: {
				bookId : bookId,
				rate : rate,
				bookComment : bookComment
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if(!data){
				alert("fail");
				return;
			}

				$scope.commentList=data;
				console.log(data);
				$("#commentContents").val("");
		})
		.error(console.error); 

	};


	/*후기 삭제*/
	$scope.dropComment = function(Comment_No,book){
		if(confirm("Are you sure you want to delete?"))
		var commentNo = Comment_No;
		var bookId = book;
		$http({
			method: 'POST', //방식
			url: '/commentDel', /* 통신할 URL */
			params: {
				commentNo : commentNo,
				bookId : bookId
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if(!data){
				alert("fail");
				return;
			}
			$scope.commentList=data;		
		})
		.error(console.error); 
	};
	
	/*위시추가*/
	$scope.wishIn = function(book,user){
		
		var bookId = book;
		var userId = user;
		$http({
			method: 'POST', //방식
			url: '/wishIn', /* 통신할 URL */
			params: {
				bookId : bookId,
				userId : userId
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if(!data){
				alert("fail");
				return;
			}
			console.log(data);
			$scope.wishNo=data;		
		})
		.error(console.error); 
	};
	
	/*위시삭제*/
	$scope.wishOut = function(book,user){

		var bookId = book;
		var userId = user;
		$http({
			method: 'POST', //방식
			url: '/wishOut', /* 통신할 URL */
			params: {
				bookId : bookId,
				userId : userId
			}, /* 파라메터로 보낼 데이터 */
			headers: {'Content-Type': 'application/json; charset=utf-8'} //헤더
		})
		.success(function(data, status, headers, config) {
			if(!data){
				alert("fail");
				return;
			}
			
			console.log(data);
			$scope.wishNo=null;		
		})
		.error(console.error); 
	};
	
	
	

}