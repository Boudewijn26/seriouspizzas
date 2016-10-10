import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    placeOrder(order) {
      this.set('model.order', this.get('store').createRecord('order'));
      order.save().then(function(order) {
        // Save all pizza orders sequentially
        order.get('pizzaOrders').reduce(function(promise, pizzaOrder) {
          return promise.then(function() {
            return pizzaOrder.save();
          });
        }, Ember.RSVP.resolve("Test"));
      });
    }
  }
});
