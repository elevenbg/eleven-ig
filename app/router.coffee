define((require) ->

  require('bootstrap')
  Marionette = require('marionette')

  return Marionette.AppRouter.extend({
    initialize: (options) ->
      @.app = options.app
    appRoutes: {
      '': 'root'
      'disclaimer': 'disclaimer'
    }
  })
 
)
