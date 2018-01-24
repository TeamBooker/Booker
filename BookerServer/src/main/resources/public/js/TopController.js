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


}
