import 'package:flutter/material.dart';
import 'package:one_call/screens/home.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/widgets/SpacerWidget.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(

        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Container(
        height: SizeConfig.height * 100,
        width: SizeConfig.width * 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wallet_giftcard_outlined,
              size: SizeConfig.height * 20,
            ),
            SpacerWidget(
              height: SizeConfig.height * 3,
            ),
            Text(
              'Hungry?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.textMultiplier * 3),
            ),
            SpacerWidget(
              height: SizeConfig.height * 2,
            ),
            Text(
              'You haven\'t added anything to your cart!',
            )
          ],
        ),
      ),
    );
  }
}
