# # Creates new Angular module called 'Blog'
# SimpleDecks = angular.module('SimpleDecks', [])

# # Sets up routing
# SimpleDecks.config(['$routeProvider', ($routeProvider) ->
#   # Route for '/post'
#   $routeProvider.when('/post', { templateUrl: '../assets/mainPost.html', controller: 'PostCtrl' } )

#   # Default
#   $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

# ])

app = angular.module("SimpleDecks", ["ngResource"])

# app.factory "Presentation", ["$resource", ($resource) ->
#   $resource("/presentations/:id", {id: "@id"})
# ]

# app.factory "Presentation", ["$resource", ($resource) ->
# $resource("/presentations/:id.json", {id: "@id"}, {query: {method: "GET"}})
# ]
# , 

@PresentationNavCtrl = ($scope, $resource) ->
  Presentation = $resource("/presentations/:id",{id: "@id"}, {'query': {method: 'GET', isArray: false}})
  
  $scope.presentations = Presentation.query()
  # [
  #   {title: "First Presentation"}
  #   {title: "Second Presentation"}
  #   {title: "Third Presentation"}
  # ]
