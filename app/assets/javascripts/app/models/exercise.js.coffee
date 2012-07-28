WZ.Exercise = WZ.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  group: DS.belongsTo('WZ.Group', {key: 'group', embedded: true})

  isArms: ( ->
          @get('group.name' == 'Arms')
         ).property('group')

  isAbs: ( ->
          @get('group.name' == 'Abs')
         ).property('group')

  isBack: ( ->
          @get('group.name' == 'Back')
         ).property('group')

  isChest: ( ->
          @get('group.name' == 'Chest')
         ).property('group')

  isLegs: ( ->
          @get('group.name' == 'Legs')
         ).property('group')
