# app = angular.module("SimpleDecks", ["ngResource"])

# app.factory "Presentation", ["$resource", ($resource) ->
#   $resource("/presentations/:id", {id: "@id", format: 'json'})
# ]

# @PresentationsCtrl = ["$scope", "Presentation", ($scope, Presentation) ->
#   $scope.presentations = Presentation.query()

#   # $scope.addEntry = ->
#   #   entry = Entry.save($scope.newEntry)
#   #   $scope.entries.push(entry)
#   #   $scope.newEntry = {}

#   # $scope.drawWinner = ->
#   #   entry = $scope.entries[Math.floor(Math.random()*$scope.entries.length)]
# ]
 
# @PresentationNavCtrl = ($scope, $resource) ->
#   Presentation = $resource("/presentations/:id",{id: "@id"}, {'query': {method: 'GET', isArray: false}})
  
#   $scope.presentations = Presentation.query()
 
# @RaffleCtrl = ["$scope", "Entry", ($scope, Entry) ->
#   $scope.entries = Entry.query()

#   $scope.addEntry = ->
#     entry = Entry.save($scope.newEntry)
#     $scope.entries.push(entry)
#     $scope.newEntry = {}

#   $scope.drawWinner = ->
#     entry = $scope.entries[Math.floor(Math.random()*$scope.entries.length)]
# ]