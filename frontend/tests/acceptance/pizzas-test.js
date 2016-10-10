import { test } from 'qunit';
import moduleForAcceptance from 'frontend/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | pizzas');

test('should redirect to pizzas', function(assert) {
  visit('/');

  andThen(function() {
    assert.equal(currentURL(), '/pizzas', 'should redirect');
  });
});

test('should link to admin page', function(assert) {
  visit('/');
  click('a:contains("Admin")');
  andThen(function() {
    assert.equal(currentURL(), '/admin', 'should navigate to admin');
  });
});

test('should link to about', function(assert) {
  visit('/');
  click('a:contains("About")');
  andThen(function() {
    assert.equal(currentURL(), '/about', 'should navigate to about');
  });
});

test('should add pizza to order', function(assert) {

});

test('should finish order', function(assert) {

});
