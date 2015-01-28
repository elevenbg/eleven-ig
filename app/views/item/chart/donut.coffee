define((require)->

  d3 = require('d3')
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
        width = parent.width()
        height = parent.height()
        radius = Math.min(width, height) / 2
        donutSize = 0.32

        el = '#'+@.model.cid
        svg = d3.select(el)
          .append('svg')
          .attr({
            'width': width
            'height': height
          })
        wrap = svg.append('g')
          .attr({
            'class': 'wrap'
            'transform': 'translate(' + width / 2 + ',' + height / 2 + ')'
          })


        color = d3.scale.ordinal()
          .range(@.options.palette)

        arc = d3.svg.arc()
          .outerRadius(radius - 10)
          .innerRadius(radius * (1 - donutSize))

        pie = d3.layout.pie()
          .sort(null)
          .value((d)-> 
            d[1]
          )

        data.forEach((d)->
          d[1] = Math.abs(d[1])
        )

        g = wrap.selectAll(".arc")
          .data(pie(data))
          .enter()
          .append("g")
          .attr("class", "arc")

        g.append("path")
          .attr({
            "d": arc
            "class": 'section-back'
          })
          .style({
            'stroke': '#fff'
            'stroke-width': 1
          })

        labelCoords = (d)->
          c = arc.centroid(d)
          ax = c[0]
          ay = c[1]
          h = Math.sqrt(ax*ax + ay*ay)
          x = ax / h * radius * (1 - donutSize * 2)
          y = ay / h * radius * (1 - donutSize * 2)
          return [x, y]

        label = g.append('text')
          .attr({
            y: (d)->labelCoords(d)[1]
            class: 'label'
          })
          .style({
            'text-anchor': 'middle'
          })

        label.append('tspan')
          .text((d)->d.data[0])
          .attr({
            x: (d)->labelCoords(d)[0]
          })

        label.append('tspan')
          .text((d)->d.data[1] + '%')
          .attr({
            x: (d)->labelCoords(d)[0]
            dy: "1em"
            'font-weight': '300'
            'font-size': '3em'
          })


      )
  })

)
