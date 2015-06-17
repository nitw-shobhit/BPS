var module = angular.module("bps-app", ['ui.router']);

// Routing
module.config(function ($stateProvider, $urlRouterProvider) {
	$stateProvider.state('base', {url: "",
								 views: {"logo": {templateUrl: "resources/dashboard/logo.jsp", controller: "loginController"}, 
									 	 "content": {templateUrl: "resources/dashboard/login.jsp", controller: "loginController"}}})
				  .state('dashboard', {url : "/dashboard", 
								 views: {"content": {templateUrl: "resources/home.jsp", controller: "loginController"},
									 	 "menu": {templateUrl: "resources/dashboard/menu.jsp", controller: "menuController"},
									 	 "userInfo": {templateUrl: "resources/dashboard/userInfo.jsp", controller: "userInfoController"}}})
	$urlRouterProvider.otherwise("/");
});

module.factory('transferService', function() {
	 var savedData = {}
	 function set(data) {
		 savedData = data;
	 }
	 function get() {
		 return savedData;
	 }

	 return {
		 set: set,
		 get: get
	 }
});

// Controllers
module.controller("loginController", function ($scope, $state, $timeout, transferService) {
	$scope.login = function() {
        $.ajax({
            url: '/bps-mng-web/mngLogin/validateLogin.do?userId=' + $scope.userId + '&password=' + $scope.userPass,
            type: 'POST',
            dataType: 'json',
            async: false,
            success: function(data) {
            	transferService.set(data);
            	var params = angular.extend({}, $state.params, { trigger: $state.params.trigger ? undefined : 'x' });
                $state.transitionTo('dashboard', params, { location: false, reload: false })
            }
        }).fail(function() {
        });
	}
});

module.controller("userInfoController", function ($scope, transferService) {
	$scope.profileData = transferService.get();
});

module.controller("menuController", function ($scope, $state, $timeout, transferService) {
	$scope.login = function() {
	}
});
