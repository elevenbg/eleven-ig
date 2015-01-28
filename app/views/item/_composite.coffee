define((require)->

  require('bootstrap')
  $ = require('jquery')
  Marionette = require('marionette')


  return Marionette.ItemView.extend({

    template: require('app/templates/item/composite')

  })


)
