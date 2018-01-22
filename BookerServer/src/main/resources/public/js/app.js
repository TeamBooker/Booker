var app = angular.module('booker',['ngRoute']);
app.config(function($routeProvider, $locationProvider, $httpProvider) {
	$routeProvider
	.when('/', {controller:'SearchController', templateUrl:'/mainSearch'})
	.when('/myProfile', {controller:'MyProfileController', templateUrl:'/myProfile'})
	.otherwise({redirectTo : '/'})
});

app.controller('MyProfileController', function(){
	console.log('MyProfileController');
});
app.controller('TopController', TopController);
app.controller('SearchController', SearchController);

function display_login(){
	document.getElementById("login").style.display="none";
	document.getElementById("loginForm").style.display="block";
}
