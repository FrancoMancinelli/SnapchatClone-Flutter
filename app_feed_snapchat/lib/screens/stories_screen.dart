import 'package:app_snapchat2/widgets/popular_on_snapchat.dart';
import 'package:app_snapchat2/widgets/subscriptions.dart';
import 'package:app_snapchat2/widgets/top_bar.dart';
import 'package:app_snapchat2/widgets/trending_news.dart';
import 'package:flutter/material.dart';
import '../style.dart';

class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Style.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(text: 'Discover'),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Style.sectionTitle('Happening Now'),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Text(
                            'Sunday, May 24',
                            style: TextStyle(
                                color: Style.grayText, fontSize: 10.5),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 119, 119, 119),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/ghost.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 119, 119, 119),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/cloud.png',
                        height: 55,
                        width: 55,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.cloud_circle,
                                size: 16,
                                color: Style.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Weather",
                                style: TextStyle(
                                  color: Style.whiteText,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Local view",
                                style: TextStyle(
                                  color: Style.whiteText,
                                  fontSize: 12,
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                "1h",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 182, 182, 182)),
                              ))
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                            child: Text(
                              ' Today\'s high is 44º with a low of 39º',
                              style: TextStyle(
                                color: Style.whiteText,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Text(
                            ' Tap for your personalized forecast',
                            style: TextStyle(
                              color: Style.whiteText,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              Style.sectionTitle('Discover Subscriptions'),
              const Subscriptions(),
              const SizedBox(
                height: 20,
              ),
              Style.sectionTitle('Trending Now'),
              const Trendings(),
              const SizedBox(
                height: 20,
              ),
              Style.sectionTitle('Popular on Snapchat'),
              const Populars(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
