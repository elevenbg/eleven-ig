define((require)->

  d3 = require('d3')
  Marionette = require('marionette')

  return Marionette.ItemView.extend({
    initialize: (options)->
      @.options = options.options
      @.$el.attr('id', @.model.cid)
    template: ()->''
    onRender: ()->
      setTimeout(()=>

        data = @.model.get('data').toJSON()

        parent = @.$el.parent()
        pWidth = parent.width()

        margin = {
          l: 0.1
          r: 0.1
          t: 0
          b: 0
        }
        width = pWidth * (1 - margin.l - margin.r)

        x = d3.scale.linear()
          .domain(d3.extent(data, (d)->d[1]))
          .range([0, width])

        padding = 0.1
        dotSize = 20
        height = dotSize * 6
        pHeight = height * (1 + margin.t + margin.b)
        parent.css('height', pHeight)

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
            'transform': 'translate(' + (pWidth * margin.l) + ',' + (pHeight / 3) + ')'
          })

        color = d3.scale.ordinal()
          .range(@.options.palette)

        wrap.append('line')
          .attr({
            x0: x(0)
            x1: x(d3.max(data, (d)->d[1]))
            y0: 0
            y1: 0
          })
          .style({
            stroke: '#cccccc'
            'stroke-width': 2
          })

        wrap.selectAll('.dot')
          .data(data)
          .enter()
          .append('circle')
          .attr({
            cx: (d)->x(d[1])
            cy: 0
            r: dotSize
            class: 'section-back'
          })

        wrap.selectAll('.dot')
          .data(data)
          .enter()
          .append('circle')
          .attr({
            cx: (d)->x(d[1])
            cy: 0
            r: dotSize * 1.5
          })
          .style({
            'stroke-width': 2
            'fill': 'none'
            'opacity': 0.2
          })

        label = wrap.selectAll('.label')
          .data(data)
          .enter()
          .append('text')
          .attr({
            x: (d)->x(d[1])
            y: dotSize
            dy: '1em'
            class: 'label'
          })
          .style({
            'text-anchor': 'middle'
          })

        label.append('tspan')
          .text((d)->d[0])
          .attr({
            x: (d)->x(d[1])
          })

        label.append('tspan')
          .text((d)->d[1])
          .attr({
            x: (d)->x(d[1])
            dy: "1em"
            'font-weight': '300'
            'font-size': '3em'
          })


      )
  })

)
