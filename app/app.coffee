define((require) ->

  require('jade')
  require('bootstrap')

  Backbone = require('backbone')
  Marionette = require('marionette')

  Controller = require('app/controller')
  Router = require('app/router')  

  # Set the Backbone model id attribute
  Backbone.Model.prototype.idAttribute = '_id'


  # Create the application

  app = new Marionette.Application()


  # Regions

  app.addRegions({
    main: '#main'
  })


  # Initializers

  app.addInitializer((options) ->
    @.router = new Router({
      app:@
      controller: new Controller({app:@})
    })
    Backbone.history.start()
  )


  # Return the application

  return app

)
