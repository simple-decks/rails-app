@AnonymousSlideCtrl = ["$scope", "Presentation", ($scope, Presentation) ->
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