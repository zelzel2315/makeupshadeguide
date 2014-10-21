App.factory 'Makeup', ['$resource', ($resource) ->
  $resource '/api/makeups/:id', id: '@id'
]