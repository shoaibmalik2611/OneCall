import 'package:flutter/material.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/utils/theme.dart';

class OrderedTileWidget extends StatelessWidget {
  final String? orderedMealName,
      orderedMealType,
      orderedMealDate,
      orderedMealPrice;

  OrderedTileWidget({
    this.orderedMealType,
    this.orderedMealPrice,
    this.orderedMealName,
    this.orderedMealDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: SizeConfig.width * 50,
                  child: Text(
                    orderedMealName!,
                    style: AppTheme.heading4Bold,
                  ),
                ),
                Text(
                  orderedMealPrice!,
                  style: AppTheme.heading4Bold,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              orderedMealType!,
              style: AppTheme.regularText,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  orderedMealDate!,
                  style: AppTheme.regularText,
                ),
                ButtonTheme(
                  buttonColor: Colors.pink,
                  minWidth: SizeConfig.width * 100,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: pink,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Text(
                        'Reorder',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
