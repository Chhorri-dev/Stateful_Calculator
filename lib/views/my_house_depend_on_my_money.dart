import 'package:flutter/material.dart';

class MyHouseDependOnMyMoney extends StatelessWidget {
  final double currentMoney;
  const MyHouseDependOnMyMoney({super.key, required this.currentMoney});

  @override
  Widget build(BuildContext context) {
    switch (currentMoney) {
      case <= 5:
        return Image.network(
          'https://www.brookings.edu/wp-content/uploads/2024/07/homeless-person-sleeping-e1721124587851.jpg?quality=75',
        );
      case <= 10:
        return Image.network(
          'https://contents.mediadecathlon.com/p2615349/k\$4dac7636c9e5afd4e1febbd5f96fdfa2/instant-3-person-camping-tent-2-seconds-fresh-black-quechua-8801561.jpg?f=1920x0&format=auto',
        );
      default:
        return Image.network(
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/b0/23/2b/caption.jpg?w=1200&h=-1&s=1',
        );
    }
  }
}
