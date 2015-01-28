define((require)->

  require('bootstrap')
  $ = require('jquery')
  require('waypoints')
  Marionette = require('marionette')
  Snap = require('snap')

  TEMPLATES = {
    h1: require('app/templates/item/h1')
    figure: require('app/templates/item/figure')
    image: require('app/templates/item/image')
    quote: require('app/templates/item/quote')
    list: require('app/templates/item/list')
    body: require('app/templates/item/body')
    custom: require('app/templates/item/custom')
    svg: ()->'<svg></svg>'
  }

  return Marionette.ItemView.extend({
    attributes: {
      class: 'item hid clearfix'
    }
    initialize: ()->
      @.$el.addClass(@.model.get('type'))
    onRender: ()->
      @.$el.find('svg').attr('id', @.cid)
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

        if @.model.get('type') is 'svg'
          s = Snap('#'+@.cid)
          Snap.load(@.model.get('src'), (el)=>
            s.append(el)
            svg = el.paper.select('svg')
            pw = @.$el.width() * 0.8
            w = parseInt(svg.attr("width"))
            r = pw / w
            h = parseInt(svg.attr("height")) * r
            @.$el.css({'width': pw, 'height': h + 60})
            @.$el.find('svg').css({'width': pw, 'height': h})
            g = s.g(svg)
            g.transform('scale('+r+')')
            # svg.attr('class', 'section-back')
            # hack
            svg.selectAll('text, tspan').forEach((t)->
              # inner = t.innerSVG()
              style = t.attr('style') 
              style ?= ''
            #   whiteList = 'BULGARIA SERBIA ROMANIA ARMENIA SOUTH AFRICA LATVIA'
            #   if whiteList.indexOf(inner) > -1
            #     style += "stroke: #ffffff;"
              style += "font-family:'Open Sans', sans-serif;"
              t.attr({'style': style})
            )
            # f = svg.select('rect').attr('fill')
            # svg.selectAll('circle').attr({'stroke':f})
          )
      )
    getTemplate: ()->TEMPLATES[@.model.get('type')]
    animate: (alpha)->
      @.$el.css('opacity', alpha)
  })

)
