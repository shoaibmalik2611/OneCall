import 'package:flutter/material.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/widgets/appBarWidget.dart';
import 'package:one_call/widgets/mealWidget.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(
          title: 'Restaurant Delivery',
          subtitle: 'Work',
        ),
      ),
      body: Container(
        height: SizeConfig.height * 100,
        width: SizeConfig.width * 100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Nothing Here'),
              MealWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
