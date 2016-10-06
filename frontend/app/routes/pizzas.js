import Ember from 'ember';
import RSVP from 'rsvp';

export default Ember.Route.extend({
  model() {
    return RSVP.hash({
      pizzas: this.get('store').findAll('pizza'),
      order: this.get('store').createRecord('order')
    });
  }
});
