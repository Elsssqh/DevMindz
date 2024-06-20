import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Payment',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 39, 9, 11),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop(); // Handle the back button action
            },
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/logo.png',
                height: 70.0,
                width: 80.0,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'assets/banner.png',
                  height: 80,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Test Card Numbers',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const CardInfo(
                  logo: 'visa',
                  cardType: 'Visa',
                  cardNumber: '4916217501611292',
                ),
                const CardInfo(
                  logo: 'mastercard',
                  cardType: 'MasterCard',
                  cardNumber: '5307732125531191',
                ),
                const CardInfo(
                  logo: 'amex',
                  cardType: 'American Express',
                  cardNumber: '346781005510225',
                ),
                const SizedBox(height: 20),
                PaymentButton(
                  text: 'Pay And Bill',
                  onPressed: () {},
                ),
                PaymentButton(
                  text: 'Add New Payment',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final String logo;
  final String cardType;
  final String cardNumber;

  const CardInfo(
      {super.key,
      required this.logo,
      required this.cardType,
      required this.cardNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(
            'assets/$logo.png', // Assuming you have the logos saved in the assets folder
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardType,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                cardNumber,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PaymentButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50), // Button size
        ),
        child: Text(text),
      ),
    );
  }
}
