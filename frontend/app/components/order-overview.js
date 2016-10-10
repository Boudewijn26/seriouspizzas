import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    placeOrder() {
      this.get('place')(this.get('order'));
    },
    clearPizzaOrder(pizzaOrder) {
      this.get('order.pizzaOrders').removeObject(pizzaOrder);
    }
  }
});
