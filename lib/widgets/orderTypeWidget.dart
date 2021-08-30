import 'package:flutter/material.dart';
import 'package:one_call/utils/sizeConfig.dart';

class OrderTypeWidget extends StatelessWidget {
  final String? title, subtitle, image, route;
  final int? color, flex;

  OrderTypeWidget(
      {this.title,
      this.subtitle,
      this.image,
      this.color,
      this.flex = 1,
      this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route!),
      child: Container(
        height: SizeConfig.height * 20,
        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Color(color!), borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                image!,
                height: SizeConfig.height * 15,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                ),
                Text(subtitle!)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
