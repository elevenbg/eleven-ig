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
          t: 0.05
          b: 0
        }
        width = pWidth * (1 - margin.l - margin.r)

        cutoff = d3.sum(data, (d)->d[1]) * 0.5
        data = _.map(data, (d)->
          if d[1] > cutoff
            d.realValue = d[1]
            d[1] = d3.max(_.without(data, d), (d)->d[1]) * 2
            d.cutoff = true
          return d
        )
                
        w = d3.scale.linear()
          .domain([0, d3.max(data, (d)->d[1])])
          .range([0, width])

        padding = 0.1
        barH = 20
        height = barH * (1 + padding) * data.length
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
            'transform': 'translate(' + (pWidth * margin.l) + ',' + (pHeight * margin.t) + ')'
          })

        color = d3.scale.ordinal()
          .range(@.options.palette)

        data.forEach((d)->
          d[1] = Math.abs(d[1])
        )

        wrap.selectAll('.bar')
          .data(data)
          .enter()
          .append('rect')
          .attr({
            x: 0
            y: (d, i)-> i * barH * (1+padding)
            width: (d)-> w(d[1])

            height: barH
            class: 'section-back'
          })
          .style({
            'stroke': '#fff'
            'stroke-width': 1
          })

        _.each(data, (d, i)->
          if d.cutoff? 
            wrap.append('line')
              .attr({
                x2: w(d[1]) / 2  - 10
                x1: w(d[1]) / 2  + 10
                y1: i * barH * (1+padding) - 5
                y2: i * barH * (1+padding) + barH + 5
              })
              .style({
                stroke: '#ffffff'
                'stroke-width': 10
              })

            wrap.append('line')
              .attr({
                x2: w(d[1]) / 2  - 16
                x1: w(d[1]) / 2  + 4
                y1: i * barH * (1+padding) - 5
                y2: i * barH * (1+padding) + barH + 5
                class: 'section-stroke'
              })
              .style({
                'stroke-width': 1
              })

            wrap.append('line')
              .attr({
                x2: w(d[1]) / 2  - 4
                x1: w(d[1]) / 2  + 16
                y1: i * barH * (1+padding) - 5
                y2: i * barH * (1+padding) + barH + 5
                class: 'section-stroke'
              })
              .style({
                'stroke-width': 1
              })
        )

        wrap.selectAll('.label')
          .data(data)
          .enter()
          .append('text')
          .attr({
            x: 0
            y: (d, i)->i * barH * (1+padding) + barH / 2
            dx: '-1em'
            dy: '0.4em'
            class: 'label'
          })
          .text((d)->d[0])
          .style({
            'text-anchor': 'end'
          })

        wrap.selectAll('.value-label')
          .data(data)
          .enter()
          .append('text')
          .attr({
            x: (d)->w(d[1])
            y: (d, i)->i * barH * (1+padding) + barH / 2
            dx: '0.3em'
            dy: '0.4em'
            class: 'value-label'
          })
          .text((d)-> if d.cutoff? then d.realValue + '%' else d[1] + '%')


      )
  })

)
