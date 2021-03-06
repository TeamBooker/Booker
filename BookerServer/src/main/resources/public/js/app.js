var app = angular.module('booker',['ngRoute']);

app.config(function($routeProvider, $locationProvider, $httpProvider) {
	$routeProvider
		.when('/', {controller:'SearchController', templateUrl:'/mainSearch'})
		.when('/search/:keywords', {controller:'SearchController', templateUrl:'/search'})
		.when('/myProfile', {controller:'MyProfileController', templateUrl:'/myProfile'})
		.when('/reservation', {controller:'MyProfileController', templateUrl:'/reservation'})
		.when('/read', {controller:'MyProfileController', templateUrl:'/read'})
		.when('/rental', {controller:'MyProfileController', templateUrl:'/rental'})
		.when('/wish', {controller:'MyProfileController', templateUrl:'/wish'})
		.when('/bookDetail/:bookId',{controller:'SearchController', templateUrl:'/bookDetail'})
		.otherwise({redirectTo : '/'})
});

app.controller('MyProfileController', MyProfileController);
app.controller('TopController', TopController);
app.controller('SearchController', SearchController);

function display_login(){
	document.getElementById("login").style.display="none";
	document.getElementById("loginForm").style.display="block";
}
		