import 'package:app_snapchat2/data/data.dart';
import 'package:app_snapchat2/widgets/subscription.dart';
import 'package:flutter/cupertino.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List.generate(
        Data.subscriptions.length,
        (index) => Subscription(
            index: index,
            description: Data.subscriptions[index].description));

    return SizedBox(
      height: 200,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => children[index],
          separatorBuilder: (context, index) => const SizedBox(
                width: 1,
              ),
          itemCount: children.length),
    );
  }
}
