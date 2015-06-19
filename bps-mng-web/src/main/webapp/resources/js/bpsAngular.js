var module = angular.module("bps-app", ['ui.router', 'ngDialog']);

// Routing
module.config(function ($stateProvider, $urlRouterProvider) {
	$stateProvider.state('app',
							{
								url: "/",
								views: {
									'logo' : {
										templateUrl : 'resources/dashboard/logo.jsp'
									},
									'content' : {
										templateUrl : 'resources/dashboard/login.jsp',
										controller : 'loginController'
									}
								}
							}
				  		)
				  .state('app.dboard',
							{
								url: "",
								views: {
									'userInfo@' : {
										templateUrl : 'resources/dashboard/userInfo.jsp',
										controller : 'userInfoController'
									},
									'menu@' : {
										templateUrl : 'resources/dashboard/menu.jsp',
										controller : 'menuController'
									},
									'content@' : {
										templateUrl : 'resources/home.jsp'
									}
								}
							}
					  	)
				  .state('app.dboard.home',
							{
								url: "",
								views: {
									'content@' : {
										templateUrl : 'resources/home.jsp'
									}
								}
							}
					  	)
				 .state('app.dboard.org',
							{
								url: "",
								views: {
									'content@' : {
										templateUrl : 'resources/organizations.jsp',
										controller : 'organizationController'
									}
								}
							}
					  	)
				  .state('app.dboard.org.orgs',
							{
								url: "",
								views: {
									 'orgs' : {
											templateUrl : 'resources/organization/organizationList.jsp',
											controller : 'organizationDataController'
									}
								}
							}
					  	)
				 .state('app.dboard.org.orgs.orgdata',
							{
								url: "",
								views: {
									 'orgData' : {
											templateUrl : 'resources/organization/organizationData.jsp',
											controller : 'organizationDataController'
									}
								}
							}
					  	)
				 .state('app.dboard.proc',
							{
								url: "",
								views: {
									'content@' : {
										templateUrl : 'resources/processes.jsp',
										controller : 'processController'
									}
								}
							}
					  	)
				 .state('app.dboard.proc.procs',
							{
								url: "",
								views: {
									 'procs' : {
											templateUrl : 'resources/process/processList.jsp',
											controller : 'processDataController'
									}
								}
							}
					  	)
				 .state('app.dboard.proc.procs.procdata',
							{
								url: "",
								views: {
									 'procData' : {
											templateUrl : 'resources/process/processVersions.jsp',
											controller : 'processDataController'
									}
								}
							}
					  	)
				 .state('app.dboard.log',
							{
								url: "",
								views: {
									'content@' : {
										templateUrl : 'resources/logs.jsp'
									}
								}
							}
					  	)
				 .state('app.dboard.sts',
							{
								url: "",
								views: {
									'content@' : {
										templateUrl : 'resources/settings.jsp'
									}
								}
							}
					  	)
				 .state('app.dboard.help',
							{
								url: "",
								views: {
									'content@' : {
										templateUrl : 'resources/help.jsp'
									}
								}
							}
					  	)				  	
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
module.controller("loginController", function ($scope, $state, transferService) {
	$scope.login = function() {
        $.ajax({
            url: '/bps-mng-web/mngLogin/validateLogin.do?userId=' + $scope.userId + '&password=' + $scope.userPass,
            type: 'POST',
            dataType: 'json',
            async: false,
            success: function(data) {
            	transferService.set(data);
                $state.transitionTo('app.dboard');
            }
        }).fail(function() {
        });
	}
});

module.controller("userInfoController", function ($scope, transferService) {
	$scope.profileData = transferService.get();
});

module.controller("menuController", function ($scope, $state, transferService) {
	$scope.home = function() {
        $state.transitionTo('app.dboard.home');
	}
	$scope.orgs = function() {
		 $.ajax({
	            url: '/bps-mng-web/mngOrg/getOrganizationData.do',
	            type: 'GET',
	            dataType: 'json',
	            async: false,
	            success: function(data) {
	            	transferService.set(data);
	            	$state.transitionTo('app.dboard.org.orgs');
	            }
	        }).fail(function() {
	    });
	}
	$scope.procs = function() {
		 $.ajax({
	            url: '/bps-mng-web/mngProcess/getProcessData.do',
	            type: 'GET',
	            dataType: 'json',
	            async: false,
	            success: function(data) {
	            	transferService.set(data);
	            	$state.transitionTo('app.dboard.proc.procs');
	            }
	        }).fail(function() {
	    });
	}
	$scope.logs = function() {
        $state.transitionTo('app.dboard.log');
	}
	$scope.stngs = function() {
        $state.transitionTo('app.dboard.sts');
	}
	$scope.help = function() {
        $state.transitionTo('app.dboard.help');
	}
	$scope.lgot = function() {
        $state.transitionTo('app');
	}
});

module.controller("processController", function ($scope, $state, transferService) {
	$scope.processList = transferService.get();
	$state.transitionTo('app.dboard.proc.procs');
});

module.controller("processDataController", function ($scope, $state) {
	$scope.getProcVersions = function(procId) {
		 $.ajax({
	            url: '/bps-mng-web/mngProcess/getProcessVersions.do?procId='+procId,
	            type: 'GET',
	            dataType: 'json',
	            async: false,
	            success: function(data) {
	            	$scope.procVersions = data;
	            	$state.transitionTo('app.dboard.proc.procs.procdata');
	            }
	        }).fail(function() {
	    });
	}
});

module.controller("organizationController", function ($scope, $state, transferService) {
	$scope.organizationList = transferService.get();
	$state.transitionTo('app.dboard.org.orgs');
});

module.controller("organizationDataController", function ($scope, $state, ngDialog) {
	$scope.selectOrganization = function () {
        ngDialog.open({
            template: 'selectOrgPopup',
            className: 'ngdialog-theme-default selectOrganization',
            preCloseCallback: function(value) {
            	return true;
            }
        });
    };
	$scope.getOrgData = function(org) {
		 $.ajax({
	            url: '/bps-mng-web/mngOrg/getOrganizationProcesses.do?orgId='+org.id,
	            type: 'GET',
	            dataType: 'json',
	            async: false,
	            success: function(data) {
	            	$scope.selectedOrg = org;
	            	$scope.orgProcs = data;
	            	$state.transitionTo('app.dboard.org.orgs.orgdata');
	            }
	        }).fail(function() {
	    });
	}
	$scope.removeOrganization = function(orgId) {
		 $.ajax({
	            url: '/bps-mng-web/mngOrg/deleteOrganization.do?orgId='+orgId,
	            type: 'GET',
	            dataType: 'json',
	            async: false,
	            success: function(data) {
	            	transferService.set(data);
	            	$state.transitionTo('app.dboard.org.orgs');
	            }
	        }).fail(function() {
	    });
	}
});
