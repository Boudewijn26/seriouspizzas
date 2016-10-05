# for more details see: http://emberjs.com/guides/models/defining-models/

Seriouspizzas.Order = DS.Model.extend
  user: DS.belongsTo 'user'
  pizza: DS.belongsTo 'pizza'
  createdAt: DS.attr 'date'
