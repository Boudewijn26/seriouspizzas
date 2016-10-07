import { currency, number } from "accounting/settings";

export default {
  name: 'accounting',
  initialize() {
    currency.symbol = "€";
    number.decimal = ".";
    number.thousand = ',';
  }
};
