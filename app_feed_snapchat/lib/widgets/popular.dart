import 'package:app_snapchat2/style.dart';
import 'package:flutter/cupertino.dart';

class Popular extends StatelessWidget {
  const Popular(
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
          image: Style.popularImages[(index + 5) % Style.popularImages.length],
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
