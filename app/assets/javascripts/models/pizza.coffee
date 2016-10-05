# for more details see: http://emberjs.com/guides/models/defining-models/

Seriouspizzas.Pizza = DS.Model.extend
  name: DS.attr 'string'
  price: DS.attr 'BigDecimal'
  description: DS.attr 'string'
