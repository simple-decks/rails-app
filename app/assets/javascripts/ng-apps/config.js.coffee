@presentation_editor = angular.module('presentationEditor', [])

@presentation_editor.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'presEditorCtrl'
    }) 
])

