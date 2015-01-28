define((require)->

  require('bootstrap')
  require('waypoints')
  $ = require('jquery')
  _ = require('underscore')
  Marionette = require('marionette')

  CHART_TYPES = {
    donut: require('app/views/item/chart/donut')
    bar: require('app/views/item/chart/bar')
    horStack: require('app/views/item/chart/horStack')
    # dotCount: require('app/views/item/chart/dotCount')
    scale: require('app/views/item/chart/scale')
    bubble: require('app/views/item/chart/bubble')
  }

  DefaultTemplate = require('app/templates/item/chart/default')
  SplitWidthTemplate = require('app/templates/item/chart/splitWidth')
  CHART_TEMPLATES = {
    bar: DefaultTemplate
    donut: SplitWidthTemplate
    horStack: DefaultTemplate
    # dotCount: DefaultTemplate
    scale: DefaultTemplate
    bubble: DefaultTemplate
  }

  return Marionette.Layout.extend({
    attributes: {
      class: 'chart item hid clearfix'
    }
    regions: {
      chart: '.chart-region'
    }
    ui:{
      labels: '.labels-region'
    }
    initialize: (options)->
      @.options = {
        palette: options.theme.toJSON().palette
      }
      if @.model.get('options')? 
        $.extend(true, @.options, @.model.get('options').toJSON())
      @.$el.addClass(@.model.get('chartType'))
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
        , {offset: '60%'})
      )
    getTemplate: ()->
      return CHART_TEMPLATES[@.model.get('chartType')]
    onRender: ()->
      renderer = new CHART_TYPES[@.model.get('chartType')]({
        model: @.model
        options: @.options
      })
      @.chart.show(renderer)
    animate: (alpha)->
      @.$el.css('opacity', alpha)
  })

)
