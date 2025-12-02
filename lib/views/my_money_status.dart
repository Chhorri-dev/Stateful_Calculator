import 'package:flutter/material.dart';

class MyMoneyStatus extends StatelessWidget {
  final double currentMoney;
  const MyMoneyStatus({super.key, required this.currentMoney});

  @override
  Widget build(BuildContext context) {
    String message;

    if (currentMoney < 5) {
      message = 'I am broke!';
    } else if (currentMoney < 10) {
      message = 'Yike! I have some money now!';
    } else if (currentMoney < 15) {
      message = 'I have a lot of money now!';
    } else {
      message = 'I am RICH!';
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
