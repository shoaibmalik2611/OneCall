import 'package:flutter/material.dart';
import 'package:one_call/utils/sizeConfig.dart';

class MealWidget extends StatelessWidget {
  const MealWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.height * 30,
      width: SizeConfig.width * 100,
      child: Column(
        children: [
          Image.asset('joker'),
          Container(
            child: Image.asset( 'Pioneer the road raga'),
          )
        ],
      ),
    );
  }
}
