import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    toIndex() {
      this.transitionToRoute('admin.index');
    }
  }
});
