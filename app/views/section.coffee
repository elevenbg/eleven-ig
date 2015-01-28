define((require)->

  require('bootstrap')
  $ = require('jquery')
  Marionette = require('marionette')

  ItemView = require('app/views/item/default')
  ChartView = require('app/views/item/chart')
  MapView = require('app/views/item/map')
  FlipGridView = require('app/views/item/flipGrid')

  ITEM_VIEWS = {
    h1: ItemView
    figure: ItemView
    image: ItemView
    body: ItemView
    list: ItemView
    chart: ChartView
    map: MapView
    flipGrid: FlipGridView
    custom: ItemView
    svg: ItemView
  }

  return Marionette.CompositeView.extend({
    attributes: {
      class: 'section container full-width'
    }
    template: require('app/templates/section')
    itemViewContainer: '#items'
    initialize: (options)->
      @.heading = options.heading
      @.theme = options.theme
      @.options = $.extend(true, {showArrow: true}, options.options)
    onRender: ()->
      @.$el.addClass(@.model.get('type'))
    getItemView: (item)->ITEM_VIEWS[item.get('type')]
    itemViewOptions: ()->{theme: @.theme}
    serializeData: ()->
      if @.collection? and @.collection.length > 0 then showItems = true
      else showItems = false
      return {
        options: @.options
        heading: @.heading
        showItems: showItems
      }
  })

)

