@AnonymousSlideCtrl = ["$scope", "Presentation", "$location", "$http", "$resource", ($scope, Presentation, $location, $http, $resource) ->
  $scope.presentations = Presentation.query()
  returns_qty = 0

  $scope.addPresentation = ->
    presentation = Presentation.save($scope.newPresentation)
    $scope.presentations.push(presentation)
    $scope.newPresentation = {}
    console.log("presentation:" + presentation.url_token)
    
    # read in the newly saved presentation
    # redirect to the presentation edit view
    # later: display the newly created first slide (not actually done yet)
    # create a new empty slide
 
  $scope.submitOnDoubleReturn = (keyCode) ->
    if keyCode == 13
      returns_qty+= 1

      if returns_qty == 2
        console.log("returns_qty is 2")
        $scope.addPresentation()
        returns_qty = 0
        console.log("returns_qty: " + returns_qty)

    else
      returns_qty = 0

  loadPresentation = ->
    $http.get('./presentations.json').success( (data) ->
      $scope.data.posts = data
      console.log('Successfully loaded posts.')
    ).error( ->
      console.error('Failed to load posts.')
    )

  loadPosts()

]