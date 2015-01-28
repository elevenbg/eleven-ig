define((require) ->

  Marionette = require('marionette')

  Infographic = require('app/models/infographic')
  InfographicView = require('app/views/infographic')
  DisclaimerView = require('app/views/disclaimer')

  return Marionette.Controller.extend({
    initialize: (options) ->
      @.app = options.app
    root: ()->
      infographic = new Infographic(require('app/data/ig'))
      @.app.main.show(new InfographicView({
        collection: infographic.get('sections')
        theme :infographic.get('theme')
        credit: infographic.get('credit')
      })) 
    disclaimer: ()->
      @.app.main.show(new DisclaimerView()) 
    
  })

)
