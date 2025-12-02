import 'package:flutter/material.dart';
import './my_money_status.dart';

class MyStateless extends StatefulWidget {
  const MyStateless({super.key});

  @override
  State<MyStateless> createState() => _MyStatelessState();
}

class _MyStatelessState extends State<MyStateless> {
  double myMoney = 10;
  Color moneyColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _calculateMoneyColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Money'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          /// MONEY DISPLAY CARD
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Column(
                children: [
                  Text(
                    'My Money Now',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '$myMoney',
                    style: TextStyle(
                      color: moneyColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          /// CHILD WIDGETS
          MyMoneyStatus(currentMoney: myMoney),
          MyHouseDependOnMyMoney(currentMoney: myMoney),

          SizedBox(height: 40),

          /// WITHDRAW BUTTON
          ElevatedButton.icon(
            onPressed: myMoney == 0
                ? null
                : () {
                    setState(() => myMoney -= 1);
                    _calculateMoneyColor();
                  },
            icon: Icon(Icons.remove_circle),
            label: Text(
              'Withdraw',
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
          ),

          SizedBox(height: 15),

          /// DEPOSIT BUTTON
          ElevatedButton.icon(
            onPressed: () {
              setState(() => myMoney += 1);
              _calculateMoneyColor();
            },
            icon: Icon(Icons.add_circle),
            label: Text(
              'Deposit',
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 15),
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  void _calculateMoneyColor() {
    switch (myMoney) {
      case <= 5:
        moneyColor = Colors.red;
        break;
      case <= 10:
        moneyColor = Colors.orange;
        break;
      default:
        moneyColor = Colors.green;
        break;
    }
  }
}
