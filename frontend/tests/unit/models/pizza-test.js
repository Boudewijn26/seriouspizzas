import { moduleForModel, test } from 'ember-qunit';

moduleForModel('pizza', 'Unit | Model | pizza', {
  // Specify the other units that are required for this test.
  needs: ['model:pizza-order']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
