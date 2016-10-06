import DS from 'ember-data';

export default DS.Model.extend({
  pizzaOrders: DS.hasMany('pizza-order')
});
