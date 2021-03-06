import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('pizzas');
  this.route('about');
  this.route('admin', function() {
    this.route('edit', { path: '/:pizza_id' });
    this.route('new');
  });
});

export default Router;
