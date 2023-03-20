class PaymentMethod {
  final String name;
  final String icon;
  String number;

  PaymentMethod({required this.name, required this.icon, required this.number});
}

List<PaymentMethod> paymentMethods = [
  PaymentMethod(
      name: 'Visa',
      icon: 'assets/images/visa.png',
      number: '**** **** **** 1234'),
  PaymentMethod(
      name: 'PayPal',
      icon: 'assets/images/paypal.png',
      number: 'example@gmail.com'),
  PaymentMethod(
      name: 'Tmoney', icon: 'assets/images/tmoney.png', number: '90234987'),
  PaymentMethod(
      name: 'Flooz', icon: 'assets/images/flooz.jpeg', number: '91234567'),
];
