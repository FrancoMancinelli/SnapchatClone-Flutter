import 'package:app_snapchat2/style.dart';
import 'package:flutter/cupertino.dart';

class Trending extends StatelessWidget {
  const Trending(
      {Key? key,
      required this.index,
      required this.description})
      : super(key: key);
  final int index;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 130,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: Style.trendingImages[(index + 5) % Style.trendingImages.length],
          ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Spacer(),
              Style.subscriptionDesc(description),
            ],
          ),
        ),
      ),
    );
  }
}
