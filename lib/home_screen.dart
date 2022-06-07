import 'package:flutter/material.dart';
import 'config.dart';
import 'main.dart';

import 'theme/colors.dart';
import 'theme/gradients.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> items = <String>[
    'An early-morning walk is a blessing for the whole day.',
    'Life is what we make it, always has been, always will be.',
    'It does not matter how slowly you go as long as you do not stop.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon:
              Icon(Icons.menu, color: appBarTitleColor), // set your color here
          onPressed: () {},
        ),
        elevation: 0.0,
        title: Text(
          "Do or just Don't",
          style: TextStyle(
            color: appBarTitleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: backgroundLinearGradient),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              Text(
                'You look lovely today! :) Smile!',
                textAlign: TextAlign.left,
                style: TextStyle(color: primaryTextColor, fontSize: 44),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'The best and most beautiful things in the world cannot be seen or even touched – they must be felt with the heart.',
                textAlign: TextAlign.left,
                style: TextStyle(color: secondaryTextColor, fontSize: 16),
              ),
              const SizedBox(
                height: 35,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: listItemBackground,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: accentColor,
                          ),
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.check,
                            color: primaryTextColor,
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            items[index],
                            maxLines: 3,
                            style: TextStyle(
                                color: primaryTextColor, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          MyApp.of(context)
                              .changeCurrentColorMode(ColorMode.light);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            gradient: primaryButtonLinearGradient,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Set Light'.toUpperCase(),
                            style: TextStyle(
                                color: primaryTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () {
                          MyApp.of(context)
                              .changeCurrentColorMode(ColorMode.dark);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            gradient: secondaryButtonLinearGradient,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Set Dark'.toUpperCase(),
                            style: TextStyle(
                                color: primaryTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
