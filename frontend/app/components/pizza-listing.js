import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    addToOrder: function() {
      let pizzaOrder = this.get('order.pizzaOrders').findBy('pizza.id', this.get('pizza.id'));

      if (pizzaOrder) {
        pizzaOrder.incrementProperty('amount');
      } else {
        pizzaOrder = this.get('pizza.store').createRecord('pizza-order', {
          pizza: this.get('pizza'),
          amount: 0,
          order: this.get('order')
        });
        this.get('order.pizzaOrders').pushObject(pizzaOrder);
      }
    }
  }
});
