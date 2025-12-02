import 'package:flutter/material.dart';

class MyMoneyStatus extends StatelessWidget {
  final double currentMoney;
  const MyMoneyStatus({super.key, required this.currentMoney});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (currentMoney < 5) Text('I am broke!'),
        if (currentMoney >= 5 && currentMoney < 10)
          Text('Yike! I have some money now!'),
        if (currentMoney >= 10 && currentMoney < 15)
          Text('I have a lot of money now!'),
        if (currentMoney >= 15) Text('I am RICH!'),
      ],
    );
  }
}
