import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    destroy(pizza) {
      pizza.deleteRecord();
      pizza.save();
    }
  }
});
