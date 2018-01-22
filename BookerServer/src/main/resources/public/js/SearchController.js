function SearchController($scope, $http, $compile){
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
				// $("#middle").html($compile(data)($scope)); 
				$("#middle").html(data); 
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