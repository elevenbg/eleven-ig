define((require)->

  d3 = require('d3')
  Marionette = require('marionette')

  return Marionette.ItemView.extend({
    initialize: ()->
      @.$el.attr('id', @.model.cid)
    template: ()->''
    onRender: ()->
      setTimeout(()=>

        data = @.model.get('data').toJSON()

        parent = @.$el.parent()
        width = parent.width()
        height = parent.height()

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
          .range(["#98abc5", "#8a89a6", "#7b6888", "#6b486b", "#a05d56", "#d0743c", "#ff8c00"])

        
        radius = Math.floor(d3.max(data, (d)->d[1]) / 4)


      )
  })

)
