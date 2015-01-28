define((require)->

  d3 = require('d3')
  topojson = require('d3.topojson')
  world = require('app/data/world-110m')
  names = require('app/data/world-country-names')
  Marionette = require('marionette')

  return Marionette.ItemView.extend({
    initialize: (options)->
      @.$el.attr('id', @.model.cid)
      @.options = options.options
    template: ()->''
    round: (num)->Math.round(num*10)/10
    onRender: ()->
      setTimeout(()=>

        data = @.model.get('data').toJSON()

        parent = @.$el.parent()
        width = parent.width()
        height = parent.height()
        interval = 1600
        
        projection = d3.geo.orthographic()
          .scale(Math.min(width, height) * 2)
          .clipAngle(90)
          .translate([width/2, height/2])

        el = '#'+@.model.cid
        svg = d3.select(el)
          .append('svg')
          .attr({
            'width': width
            'height': height + 40
          })

        path = d3.geo.path()
          .projection(projection)

        globe = {type: "Sphere"}
        land = topojson.feature(world, world.objects.land)
        countries = topojson.feature(world, world.objects.countries).features
        borders = topojson.mesh(world, world.objects.countries, (a, b) -> a isnt b )
        i = -1
        activeCountryNames = _.map(data, (d)->d[0])
        activeCountries = []

        countries = countries.filter((d) ->
          name = names[d.id]
          if name?
            d.name = name
            if _.indexOf(activeCountryNames, name) isnt -1 
              d.value = _.findWhere(data, {0: name})[1]
              activeCountries.push(d)
            return d
        )
        activeCountries = _.sortBy(activeCountries, (c)->c.value).reverse()

        n = activeCountries.length

        l = svg.append('path')
          .datum(land)
          .attr({
            'd': path
            'fill': @.options.palette[0]
            'stroke-width': 1
          })

        b = svg.append('path')
          .datum(borders)
          .attr({
            'd': path
            'fill': 'none'
            'stroke': '#fff'
            'stroke-width': 1
          })

        a = svg.append('path')
          .datum(activeCountries[0])
          .attr({
            'd': path
            'class': 'section-back'
          })

        titleText = (country)=>@.round(country.value)+'% came from '+country.name

        title = $(el).parent().parent().find('.title .content')

        transition = ()=> 
          d3.transition()
            .duration(interval)
            .each("start", () ->
              i = (i + 1) % n
            )
            .tween("rotate", () =>
              p = d3.geo.centroid(activeCountries[i])
              r = d3.interpolate(projection.rotate(), [-p[0], -p[1]])
              return (t) =>
                projection.rotate(r(t))
                l.attr({
                  'd': path
                  'fill': @.options.palette[0]
                })
                b.attr('d', path)
                a.datum(activeCountries[i]).attr('d', path)
                title.html(titleText(activeCountries[i]))
            )
            .transition()
            .each("end", transition)
        setTimeout(()->
          transition()
        , interval)
        
      )
  })

)
