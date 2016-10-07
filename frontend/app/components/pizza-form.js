import Ember from 'ember';

export default Ember.Component.extend({
  actions: {
    save() {
      this.get('pizza').save();
      this.get('onSubmit')();
    }
  }
});
