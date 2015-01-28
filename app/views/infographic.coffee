define((require)->

  $ = require('jquery')
  Marionette = require('marionette')

  SectionView = require('app/views/section')

  return Marionette.CompositeView.extend({
    itemView: SectionView 
    template: require('app/templates/infographic')
    itemViewContainer: '#sections'
    initialize: (options)->
      @.theme = options.theme
      @.credit = options.credit
    itemViewOptions: (item)-> 
      r = {
        collection: item.get('items')
        theme: @.theme
        heading: item.get('heading')
      }
      opts = item.get('options')
      if opts? then r.options = opts.toJSON()
      return r
    serializeData: ()->{credit:@.credit}
  })

)
