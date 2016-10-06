import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('order-overview', 'Integration | Component | order overview', {
  integration: true
});

test('it renders', function(assert) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{order-overview}}`);

  assert.equal(this.$().text().trim(), 'Order');

  // Template block usage:
  this.render(hbs`
    {{#order-overview}}
    {{/order-overview}}
  `);

  assert.equal(this.$().text().trim(), 'Order');
});
