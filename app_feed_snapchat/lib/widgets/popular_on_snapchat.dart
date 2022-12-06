import 'package:app_snapchat2/data/data.dart';
import 'package:app_snapchat2/widgets/popular.dart';
import 'package:flutter/cupertino.dart';

class Populars extends StatelessWidget {
  const Populars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List.generate(
        Data.trending.length,
        (index) => Popular(
            index: index,
            description: Data.popular[index].description));

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