import { moduleFor, test } from 'ember-qunit';

moduleFor('controller:pizzas', 'Unit | Controller | pizzas', {
  // Specify the other units that are required for this test.
  needs: ['service:pizza-cable', 'service:cable']
});

// Replace this with your real tests.
test('it exists', function(assert) {
  let controller = this.subject();
  assert.ok(controller);
});
