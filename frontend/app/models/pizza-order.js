import DS from 'ember-data';

export default DS.Model.extend({
  pizza: DS.belongsTo('pizza'),
  order: DS.belongsTo('order'),
  amount: DS.attr('number')
});
