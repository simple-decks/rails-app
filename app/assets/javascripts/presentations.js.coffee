app = angular.module("SimpleDecks", ["ngResource"])

app.factory "Presentation", ["$resource", ($resource) ->
  $resource("/presentations/:url_token", {id: "@url_token", format: 'json'})
]

@PresentationsCtrl = ["$scope", "Presentation", ($scope, Presentation) ->
  $scope.presentations = Presentation.query()

  $scope.addPresentation = ->
    presentation = Presentation.save($scope.newPresentation)
    $scope.presentations.push(presentation)
    $scope.newPresentation = {}
]