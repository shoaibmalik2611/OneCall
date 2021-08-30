import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/theme.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            bottom: TabBar(
              labelColor: pink,
              unselectedLabelColor: dark,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: pink,
              indicatorWeight: 2,
              labelPadding: EdgeInsets.symmetric(vertical: 5),
              unselectedLabelStyle: AppTheme.heading4BoldPink,
              labelStyle: AppTheme.heading4BoldPink,
              tabs: [Text('Restaurants'), Text('Shops')],
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                autofocus: true,
                cursorColor: Colors.pink,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: 'Search for shops & restaurants',
                  hintStyle: AppTheme.regularText,
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            key: Key("asd"),
            children: [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          )),
    );
  }
}
