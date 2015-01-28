define((require)->

  Marionette = require('marionette')


  return Marionette.ItemView.extend({
    template: require('app/templates/disclaimer')
  })

)
