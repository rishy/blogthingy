'use strict'

angular.module('angularApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/ondway',
        templateUrl: 'views/ondway.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
