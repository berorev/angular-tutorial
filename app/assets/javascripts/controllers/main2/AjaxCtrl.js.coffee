@AjaxCtrl = ($scope, $location, $http) ->

  $scope.data = 
    posts: [{title: 'Loading posts... (wait 1 second)', contents: ''}]

  loadPosts = ->
    $http.get('/main2/ajax').success( (data) ->
      $scope.data.posts = data
      console.log('Successfully loaded posts.')
    ).error( ->
      console.error('Failed to load posts.')
    )

  setTimeout loadPosts, 1000

  $scope.viewPost = (postId) ->
    $location.url('/post/'+postId)