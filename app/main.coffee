require.config({
  baseUrl: 'js'
  paths: {
    backbone: 'lib/backbone/backbone'
    'backbone.documentmodel': 'lib/backbone-documentmodel/backbone-documentmodel'
    bootstrap: 'lib/bootstrap/dist/js/bootstrap'
    d3: 'lib/d3/d3.min'
    'd3.topojson': 'lib/topojson/topojson'
    flippy: 'lib/flippy/jquery.flippy'
    jade: 'lib/jade/runtime'
    jquery: 'lib/jquery/dist/jquery'
    waypoints: 'lib/jquery-waypoints/waypoints'
    lodash: 'lib/lodash/dist/lodash'
    marionette: 'lib/marionette/lib/backbone.marionette'
    snap: 'lib/Snap.svg/dist/snap.svg'
    underscore: 'lib/underscore/underscore'
  }
  shim: {
    'backbone.documentmodel': {
      deps: ['backbone']
    }
    backbone: {
      deps: ['underscore']
      exports: 'Backbone'
    }
    bootstrap: {
      deps: ['jquery']
    }
    d3: {
      exports: 'd3'
    }
    'd3.topojson': {
      exports: 'topojson'
    }
    flippy: {
      deps: ['jquery']
    }
    jquery: {
      exports: '$'
    }
    lodash: {
      exports: '_'
    }
    marionette: {
      deps: ['backbone', 'jquery']
      exports: 'Backbone.Marionette'
    }
    snap: {
      exports: 'Snap'
    }
    underscore: {
      exports: '_'
    }
  }
})

require(['app/app'], (app) ->
  app.start()
)
