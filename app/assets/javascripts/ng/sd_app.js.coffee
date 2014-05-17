@sd_app = angular.module("SimpleDecks", ["ngResource"])

# # Sets up routing
# @sd_app.config(['$routeProvider', ($routeProvider) ->
#   # Route for '/post'
#   $routeProvider.when('/presentations', { templateUrl: '../templates/presentations/index.html', controller: 'PresentationsCtrl' } )

#   # Default
#   $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

# ])

@sd_app.factory "Presentation", ["$resource", ($resource) ->
  $resource("/presentations/:url_token", {id: "@url_token", format: 'json'})
]

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

# sd_app = angular.module("SimpleDecks", ["ngResource"])

# sd_app.factory "Presentation", ["$resource", ($resource) ->
#   $resource("/presentations/:url_token", {id: "@url_token", format: 'json'})
# ]


# todoApp = angular.module('todoApp', ['ngResource'])

# todoApp = angular.module('todoApp', ['ngResource', 'mk.editablespan', 'ui.sortable'])

# todoApp.config ($httpProvider) ->
#   authToken = $("meta[name=\"csrf-token\"]").attr("content")
#   $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

# todoApp.config ($routeProvider, $locationProvider) ->
#   $locationProvider.html5Mode true
#   $routeProvider.when '/', redirectTo: '/dashboard'
#   $routeProvider.when '/dashboard', templateUrl: '/templates/dashboard.html', controller: 'DashboardController'
#   $routeProvider.when '/task_lists/:list_id', templateUrl: '/templates/task_list.html', controller: 'TodoListController'   

# # Makes AngularJS work with turbolinks.
# $(document).on 'page:load', ->
#   $('[ng-app]').each ->
#     module = $(this).attr('ng-app')
#     angular.bootstrap(this, [module])