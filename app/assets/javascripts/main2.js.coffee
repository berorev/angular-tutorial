# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./controllers/main2

# Creates new Angular module called 'Blog'
Blog = angular.module('Blog', ['ngRoute'])

# Sets up routing
Blog.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/post/:postId', { templateUrl: '/assets/main2/post.html', controller: 'PostCtrl' })
  
  # Route for '/ajax'
  $routeProvider.when('/ajax', { templateUrl: '/assets/main2/ajax.html', controller: 'AjaxCtrl' })
  
  # Default
  $routeProvider.otherwise({ templateUrl: '/assets/main2/index.html', controller: 'IndexCtrl' })
  
])