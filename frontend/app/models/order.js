import DS from 'ember-data';

export default DS.Model.extend({
  pizzas: DS.hasMany('pizza')
});
