import Ember from 'ember';
import config from 'frontend/config/environment';

export default Ember.Service.extend({
  cableService: Ember.inject.service('cable'),
  callbacks: [],
  init() {
    this._super(...arguments);
    let self = this;
    let consumer = this.get('cableService')
      .createConsumer(config.APP.websocketHost);

    consumer.subscriptions.create("PizzasChannel", {
      received() {
        self.get('callbacks').forEach(callback => callback());
      }
    });
  },

  subscribe(callback) {
    this.get('callbacks').push(callback);
  }
});
