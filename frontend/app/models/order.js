import Ember from 'ember';
import DS from 'ember-data';

export default DS.Model.extend({
  pizzaOrders: DS.hasMany('pizza-order'),
  total: Ember.computed('pizzaOrders', 'pizzaOrders.@each.amount', function() {
    return this.get('pizzaOrders').reduce(
      (previous, pizzaOrder) => previous + pizzaOrder.get('amount') * pizzaOrder.get('pizza.price'),
      0
    );
  })
});
