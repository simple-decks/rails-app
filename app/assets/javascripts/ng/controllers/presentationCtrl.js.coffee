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
#  