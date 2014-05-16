app = angular.module("SimpleDecks", ["ngResource"])

app.factory "Presentation", ["$resource", ($resource) ->
  $resource("/presentations/:id", {id: "@id", format: 'json'})
]

@PresentationsCtrl = ["$scope", "Presentation", ($scope, Presentation) ->
  $scope.presentations = Presentation.query()

]