define((require)->

  require('backbone.documentmodel')
  Backbone = require('backbone')

  return Backbone.DocumentModel.extend({

    initialize: ()->
      @.get('sections').last().set('showEarly', true)

  })  

)
