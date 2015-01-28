define((require)->

  d3 = require('d3')
  _ = require('underscore')
  Marionette = require('marionette')

  addLetterNames: (list, accessor)->
    checkAndAdd = (letter, original, letters)->
      duplicate = _.findWhere(letters, {letter: letter})
      if not duplicate
        letters.push({letter: letter, name: original})
      else

    letters = []
    _.each(list, (item)->
      if accessor? then name = accessor(item) else name = item
      l = name[0]
      checkAndAdd(l, name, letters)
    )

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

        bubble = [
          { 
            name: 'Lifestyle'
            value: 133 
            depth: 1 
            r: 43.733333665222005 
            x: 130.4104703141454 
            y: 130.9851452432557 
            subs: [7] 
          }  
          { 
            name: 'Productivity'
            value: 164 
            depth: 1 
            r: 48.56335553815644 
            x: 665 
            y: 150 
            subs: [9] 
          }  
          { 
            name: 'Social'
            value: 151 
            depth: 1 
            r: 46.598854054653685 
            x: 475 
            y: 155
            subs: [9] 
          }  
          { 
            name: 'Digital Media'
            value: 114 
            depth: 1 
            r: 40.48919933732211 
            x: 300 
            y: 125 
            subs: [7] 
          }  
          { 
            name: 'Games'
            value: 89 
            depth: 1 
            r: 35.77517496677567 
            x: 223 
            y: 270 
            subs: [5] 
          }  
          { 
            name: 'Hardware'
            value: 19 
            depth: 1 
            r: 16.52964641171233 
            x: 810 
            y: 95 
            subs: [1] 
          }  
          { 
            name: 'Engeneering'
            value: 75 
            depth: 1 
            r: 32.84107728473561 
            x: 360 
            y: 270 
            subs: [1] 
          }  
          { 
            name: 'Entertainment'
            value: 54 
            depth: 1 
            r: 27.86657813940965 
            x: 570 
            y: 275 
            subs: [2] 
          }  
          { 
            name: 'E-commerce'
            value: 143 
            depth: 1 
            r: 45.34764956536598 
            x: 840 
            y: 240 
            subs: [3] 
          } 
          { 
            name: 'Other*'
            value: 139 
            depth: 1 
            r: 44.70891837264013 
            x: 970 
            y: 120 
            subs: [2] 
          } 
        ]     
        rScaler = 1.9

        percentageSelected = (d)->d.subs[0] + ' selected'
        percentageApplied = (d)->d.value + ' applied'


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
          })

        color = d3.scale.ordinal()
          .range(@.options.palette)

        scale = (num)->width / 1140 * num

        node = wrap.selectAll(".node")
          .data(bubble)
          .enter().append("g")
          .attr("class", "node")
          .attr("transform", (d)-> "translate(" + scale(d.x) + "," + d.y + ")" )

        node.append("circle")
          .attr({
            "r": (d)-> scale(d.r * rScaler)
            "class": 'section-back'
          })
          .append('title')
          .text((d)->percentageApplied(d))

        node.append("circle")
          .attr({
            "r": (d)-> 
              shouldBeArea = d.value
              actualArea = Math.PI * d.r * d.r
              s = actualArea / shouldBeArea
              a = d.subs[0] * s
              scale(Math.sqrt(a / Math.PI) * rScaler)
            "class": 'normal-back'
          })
          .append('title')
          .text((d)->percentageSelected(d))

        node.append("text")
          .attr({
            "y": (d)->d.r / 2 * rScaler
            "dy": ".2em"
            "class": 'normal-color'
          })
          .style({
            "text-anchor": "middle"
          })
          .text((d)-> d.name)

        node.append("circle")
          .attr({
            "r": 20
            "cy": (d)->(-d.r * rScaler)
            "class": 'section-stroke'
          })
          .style('fill', '#ffffff')
          .append('title')
          .text((d)->percentageSelected(d))

        node.append("text")
          .attr({
            "y": (d)->(-d.r * rScaler)
            "dy": "0.8em"
            "class": 'normal-color'
          })
          .style({
            "text-anchor": "middle"
          })
          .text((d)-> d.subs[0])
          .append('title')
          .text((d)->percentageSelected(d))

        node.append("text")
          .attr({
            "y": (d)->(-d.r * rScaler)
            "dy": "-0.3em"
            "class": 'section-color'
          })
          .style({
            "text-anchor": "middle"
          })
          .text((d)-> d.value)
          .append('title')
          .text((d)->percentageApplied(d))
      )

  })

)

