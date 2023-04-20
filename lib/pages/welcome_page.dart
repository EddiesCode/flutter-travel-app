import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Set<String> images = {
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/${images.elementAt(index)}"),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: "Trips"),
                AppText(text: "Mountain", size: 30),
                SizedBox(
                  width: 200,
                  child: AppText(
                      text:
                          "Mountain hikes give you an incredible sense of freedom along with endurance test"),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
