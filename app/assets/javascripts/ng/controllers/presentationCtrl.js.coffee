@sd_app = angular.module("SimpleDecks", ["ngResource"])

# Sets up routing
@sd_app.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/presentations', { templateUrl: '../templates/presentations/index.html', controller: 'PresentationsCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])

@sd_app.factory "Presentation", ["$resource", ($resource) ->
  $resource("/presentations/:url_token", {id: "@url_token", format: 'json'})
]

@PresentationsCtrl = ["$scope", "Presentation", ($scope, Presentation) ->
  $scope.presentations = Presentation.query()
  returns_qty = 0

  $scope.addPresentation = ->
    presentation = Presentation.save($scope.newPresentation)
    $scope.presentations.push(presentation)
    $scope.newPresentation = {}

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
]