import 'package:flutter/material.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/utils/theme.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key}) : super(key: key);

  Widget getRow(type, String text, String screen, context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, screen);
          },
          child: Row(
            children: <Widget>[
              Icon(
                type,
                color: Colors.pink,
              ),
              SizedBox(
                width: 20,
              ),
              Text(text, style: AppTheme.regularText),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.pink,
            height: SizeConfig.height * 25,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.person_pin,
                      size: 80,
                    ),
                    Spacer(),
                    Text(
                      "John Doe",
                      style: AppTheme.heading4BoldLight,
                    ),
                    Text("john@email.com", style: AppTheme.regularTextWhite),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                getRow(Icons.favorite_border, "Favourites", rFav, context),
                getRow(Icons.bookmark_border, "Orders", rOrder, context),
                getRow(Icons.person, "Profile", rProfile, context),
                getRow(Icons.location_city, "Address", rAddress, context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
