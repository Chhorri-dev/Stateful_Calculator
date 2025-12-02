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

class MyHouseDependOnMyMoney extends StatelessWidget {
  final double currentMoney;
  const MyHouseDependOnMyMoney({super.key, required this.currentMoney});

  @override
  Widget build(BuildContext context) {
    const double imageWidth = 200.0;
    const double imageHeight = 150.0;

    switch (currentMoney) {
      case <= 5:
        return SizedBox(
          width: imageWidth,
          height: imageHeight,
          child: Image.network(
            'https://www.brookings.edu/wp-content/uploads/2024/07/homeless-person-sleeping-e1721124587851.jpg?quality=75',
            fit: BoxFit.cover,
          ),
        );
      case <= 10:
        return SizedBox(
          width: imageWidth,
          height: imageHeight,
          child: Image.network(
            'https://imagekit.io/blog/content/images/2019/12/image-optimization.jpg',
            fit: BoxFit.cover,
          ),
        );
      default:
        return SizedBox(
          width: imageWidth,
          height: imageHeight,
          child: Image.network(
            'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/b0/23/2b/caption.jpg?w=1200&h=-1&s=1',
            fit: BoxFit.cover,
          ),
        );
    }
  }
}
