define((require)->

  require('bootstrap')
  require('flippy')
  require('waypoints')
  $ = require('jquery')
  _ = require('underscore')
  Marionette = require('marionette')

  return Marionette.ItemView.extend({
    attributes: {
      class: 'item flip-grid hid clearfix'
    }
    template: require('app/templates/item/flipGrid')
    onRender: ()->
      setTimeout(()=>
        thumb = $('.flipbox-container')
        w = thumb.width()
        setTimeout( () =>
          flipbox = thumb.find('.flipbox').css('height', w)
          img = flipbox.find('img').each(()->
            mt = (w - $(this).height()) / 2 + 'px'
            ml = (w - $(this).width()) / 2 + 'px'
            $(this).css({'top': mt, 'left': ml})
          )
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
        @.$el.find('.flipbox').one('click', _.bind(@.flip, @))
      )
    flip: (e)->
      $target = $(e.currentTarget)
      itemId = $target.data('itemId')
      backs = _.map(@.model.get('items').toJSON(), (item)->'<div class="flipbox-back section-color">'+item.back+'</div>')
      $target.flippy({
        duration: "200"
        verso: backs[itemId]
        depth: 0.5
        light: 0
        onReverseFinish:()=>
          $target.one('click', _.bind(@.flip, @))
      })
      setTimeout(()->
        $target.flippyReverse()
      , 10000)
    animate: (alpha)->
      @.$el.css('opacity', alpha)
  })

)
