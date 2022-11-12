import 'package:flutter/material.dart';
import 'package:flutter_pizza_delivery_ui/tools/colors.dart';
import 'package:flutter_pizza_delivery_ui/tools/radius.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String desc =
        'The text states that a tenant of certain\nproperty is to give the bishop of Gaeta\nduodecim pizza';
    return Scaffold(
      backgroundColor: darkColor,
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('background.jpg'),
              fit: BoxFit.cover,
              opacity: 0.8),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'logo.png',
                width: width * 0.5,
              ),
              SizedBox(height: height * 0.01),
              Text(
                desc,
                style: textStyle9,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height * 0.08),
              Image.asset(
                'pic2.png',
                width: width * 0.7,
              ),
              SizedBox(height: height * 0.05),
              Container(
                width: width * 0.2,
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: getBottomBorderRadiusWidget2(context, 0.1),
                ),
                child: Column(
                  children: const [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: whiteColor,
                    ),
                    Text(
                      'Skip',
                      style: textStyle10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
