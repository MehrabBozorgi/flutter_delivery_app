import 'package:flutter/material.dart';
import 'package:flutter_pizza_delivery_ui/tools/radius.dart';

import '../tools/colors.dart';
import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        color: darkColor,
                        size: width * 0.08,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(width * 0.01),
                            decoration: BoxDecoration(
                              color: Colors.lightGreen.shade900,
                              borderRadius: getBorderRadiusWidget(context, 1),
                            ),
                            child: Image.asset(
                              'pic0.png',
                              width: width * 0.08,
                            ),
                          ),
                          SizedBox(width: width * 0.03),
                          Container(
                            padding: EdgeInsets.all(width * 0.02),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: getBorderRadiusWidget(context, 1),
                            ),
                            child: const Icon(
                              Icons.notifications_none_outlined,
                              color: darkColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.005,
                  ),
                  child: const Text(
                    'PIZZA',
                    style: textStyle1,
                  ),
                ),
                Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: const Text(
                    'For lightning fast ordering experience',
                    style: textStyle6,
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        width: width * 0.75,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                          boxShadow: [
                            BoxShadow(
                              color: greyColor,
                              offset: const Offset(3, 3),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                              size: width * 0.08,
                            ),
                            SizedBox(width: width * 0.03),
                            const Text(
                              'Restaurant, items or more',
                              style: textStyle8,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: width * 0.13,
                        height: height * 0.065,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: getBorderRadiusWidget(context, 0.03),
                          boxShadow: [
                            BoxShadow(
                              color: greyColor,
                              offset: const Offset(4, 4),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.filter_alt_outlined,
                          color: whiteColor,
                          size: width * 0.08,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.005),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: getBorderRadiusWidget(context, 1),
                          boxShadow: [
                            BoxShadow(
                              color: greyColor,
                              offset: const Offset(2, 2),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: const Text(
                          'All',
                          style: textStyle11,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.005),
                        child: const Text(
                          'Veg',
                          style: textStyle6,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.005),
                        child: const Text(
                          'Non-Veg',
                          style: textStyle6,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05, vertical: height * 0.005),
                        child: const Text(
                          'Spicy',
                          style: textStyle6,
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.03,
                      top: height * 0.03,
                      bottom: height * 0.01,
                    ),
                    child: Row(
                      children: [
                        PizzaWidget(
                          width: width,
                          height: height,
                          name: 'Exclusive Cheese Pizza',
                          image: 'pic1.png',
                          price: '10.00',
                        ),
                        PizzaWidget(
                          width: width,
                          height: height,
                          name: 'Peperoni Cheese Pizza',
                          image: 'pic2.png',
                          price: '12.95',
                        ),
                        PizzaWidget(
                          width: width,
                          height: height,
                          name: 'Exclusive Cheese Pizza',
                          image: 'pic1.png',
                          price: '10.00',
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Explore Categories',
                        style: textStyle3,
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: darkColor,
                        size: width * 0.09,
                      ),
                    ],
                  ),
                ),
                ExploreFoodWidget(
                  width: width,
                  height: height,
                  image: 'pic3.png',
                  name: '8 Veg Fiesta Cheese Pizza',
                  price: '17.00',
                ),ExploreFoodWidget(
                  width: width,
                  height: height,
                  image: 'pic4.png',
                  name: '8 Veg Fresh Onion Pizza',
                  price: '17.00',
                ),
                SizedBox(height: height*0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExploreFoodWidget extends StatelessWidget {
  const ExploreFoodWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);

  final double width;
  final double height;
  final String name;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 0.1,
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.01,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.01,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: getBorderRadiusWidget(context, 0.04),
        boxShadow: [
          BoxShadow(
            color: greyColor,
            blurRadius: 10,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(image),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: width * 0.06,
                      ),
                      Text(
                        'BESTSELLER',
                        style: textStyle12,
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    name,
                    style: textStyle4,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Text(
              '\$ $price',
              style: textStyle4,
            ),
          ),
        ],
      ),
    );
  }
}

class PizzaWidget extends StatelessWidget {
  const PizzaWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);

  final double width;
  final double height;
  final String name;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.48,
      height: height * 0.4,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: width * 0.45,
            height: height * 0.35,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(
              bottom: height * 0.06,
              left: width * 0.04,
              right: width * 0.04,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: getBorderRadiusWidget2(context, 1),
              boxShadow: [
                BoxShadow(
                  color: greyColor,
                  offset: const Offset(3, 3),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(width * 0.01),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green.shade900,
                          width: 2,
                        ),
                        borderRadius: getBorderRadiusWidget(context, 0.02),
                      ),
                      child: Icon(
                        Icons.circle,
                        color: Colors.green.shade900,
                        size: width * 0.03,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                      size: width * 0.07,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Text(
                  name,
                  style: textStyle4,
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ $price',
                      style: textStyle4,
                    ),
                    Container(
                      padding: EdgeInsets.all(width * 0.015),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: getBorderRadiusWidget(context, 0.02),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: primaryColor,
                        size: width * 0.04,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              image,
              width: width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
