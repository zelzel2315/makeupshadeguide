App.controller 'MakeupsCtrl', ['$scope', 'Makeup', ($scope, Makeup) ->
  $scope.makeups = Makeup.query()
  $scope.selectedMakeup = null

  $scope.showMakeup = (makeup) ->
  	$scope.selectedMakeup = makeup
]