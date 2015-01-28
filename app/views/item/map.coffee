define((require)->

  require('bootstrap')
  require('waypoints')
  $ = require('jquery')
  Marionette = require('marionette')

  MAP_TYPES = {
    worldTour: require('app/views/item/map/worldTour')
  }

  return Marionette.Layout.extend({
    attributes: {
      class: 'map item hid clearfix'
    }
    regions: {
      'map': '.map-region'
    }
    initialize: (options)->
      @.$el.addClass(@.model.get('mapType'))
      @.options = {
        palette: options.theme.toJSON().palette
      }
    template: require('app/templates/item/map')
    onRender: ()->
      @.renderer = new MAP_TYPES[@.model.get('mapType')]({
        model: @.model
        options: @.options
      })
      setTimeout(()=>
        @.$el.waypoint(()=>
          @.animate('0.1') 
        , {offset: '90%'})
        @.$el.waypoint(()=>
          @.animate('0.3') 
        , {offset: '80%'})
        @.$el.waypoint(()=>
          @.animate('0.7') 
        , {offset: '70%'})
        @.$el.waypoint(()=>
          @.animate('1')
          @.map.show(@.renderer)
        , {offset: '60%'})
      )
    animate: (alpha)->
      @.$el.css('opacity', alpha)
  })

)
