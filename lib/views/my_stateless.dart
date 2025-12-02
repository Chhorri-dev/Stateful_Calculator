import 'package:flutter/material.dart';
import './my_money_status.dart';
import './my_house_depend_on_my_money.dart';

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

    /// call function on render complete
    _calculateMoneyColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateless Widget')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My Money Now: ', style: TextStyle(fontSize: 20)),
                Text(
                  '$myMoney',
                  style: TextStyle(
                    color: moneyColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          MyMoneyStatus(currentMoney: myMoney),
          MyHouseDependOnMyMoney(currentMoney: myMoney),
          SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: () {
              /// check if can decrease
              if (myMoney == 0) {
                return;
              }

              /// decrease
              setState(() {
                myMoney -= 1;
              });

              /// calculate
              _calculateMoneyColor();
            },
            label: Text('Withdraw'),
            icon: Icon(Icons.remove_circle),
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              /// increase
              setState(() {
                myMoney += 1;
              });

              /// calculate
              _calculateMoneyColor();
            },
            label: Text('Deposit', style: TextStyle(color: Colors.white)),
            icon: Icon(Icons.add_circle),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
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
