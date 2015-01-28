define((require)->

  d3 = require('d3')
  _ = require('underscore')
  Marionette = require('marionette')

  return Marionette.ItemView.extend({
    initialize: (options)->
      @.$el.attr('id', @.model.cid)
      @.options = options.options
    template: ()->''
    onRender: ()->
      setTimeout(()=>

        data = @.model.get('data').toJSON()

        parent = @.$el.parent()
        pWidth = parent.width()

        margin = {
          l: 0
          r: 0
          t: 0
          b: 0
        }
        width = pWidth * (1 - margin.l - margin.r)
        barH = 40
        height = barH * 4

        pHeight = height * (1 + margin.t + margin.b)
        parent.css('height', pHeight)

        w = d3.scale.linear()
          .domain([0, d3.sum(data, (d)->d[1])])
          .range([0, width])

        stack = _.reduce(data, (memo, d, i)->
          e = {}
          if i is 0 then e.x0 = 0 else e.x0 = _.last(memo).x1
          e.w = w(d[1])
          e.x1 = e.x0 + e.w
          e.value = d[1]
          e.label = d[0]
          memo.push(e)
          return memo
        , [])

        el = '#'+@.model.cid
        svg = d3.select(el)
          .append('svg')
          .attr({
            'width': pWidth
            'height': pHeight
          })
        wrap = svg.append('g')
          .attr({
            'class': 'wrap'
            'transform': 'translate(' + (pWidth * margin.l) + ',' + (pHeight / 2) + ')'
          })

        color = d3.scale.ordinal()
          .range(@.options.palette)

        data.forEach((d)->
          d[1] = Math.abs(d[1])
        )

        wrap.selectAll('.bar')
          .data(stack)
          .enter()
          .append('rect')
          .attr({
            x: (d)->
              d.x0
            y: -barH/2
            width: (d)-> d.w
            height: barH
            class: 'bar section-back'
          })
          .style({
            'stroke': '#fff'
            'stroke-width': 1
          })

        label = wrap.selectAll('.label')
          .data(stack)
          .enter()
          .append('text')
          .attr({
            y: barH
            class: 'label'
          })
          .style({
            'text-anchor': (d, i)-> 
              if i is 0 then 'left' 
              else if i is data.length-1 then 'end' 
              else 'middle'
          })

        label.append('tspan')
          .text((d)->d.label)
          .attr({
            x: (d, i)-> 
              if i is 0 then 0
              else if i is data.length-1 then width
              else (d.x0 + d.w/2)
          })

        label.append('tspan')
          .text((d)->d.value + '%')
          .attr({
            x: (d, i)-> 
              if i is 0 then 0
              else if i is data.length-1 then width
              else (d.x0 + d.w/2)
            dy: "1em"
            'font-weight': '300'
            'font-size': '3em'
          })

      )
  })

)
