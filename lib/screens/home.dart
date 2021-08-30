import 'package:flutter/material.dart';
import 'package:one_call/drawer/leftDrawer.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/widgets/SpacerWidget.dart';
import 'package:one_call/widgets/appBarWidget.dart';
import 'package:one_call/widgets/orderTypeWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(
          scaffoldState: _scaffoldKey,
          title: 'Plot 199',
          subtitle: 'Current Location',
        ),
      ),
      drawer: LeftDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.height * 5,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, rSearch),
              child: Card(
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: SizeConfig.width * 4,
                      ),
                      Text(
                        'Search for shops',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.height * 2,
            ),
            OrderTypeWidget(
              title: 'Food Delivery',
              subtitle: 'Order food you love',
              image: 'assets/1.png',
              color: int.parse('0xffD65D5D'),
              route: rRestaurants,
            ),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: OrderTypeWidget(
                    title: 'Food Delivery',
                    subtitle: 'Order food you love',
                    image: 'assets/1.png',
                    color: int.parse('0xffD65D5D'),
                    flex: 2,
                  ),
                ),
                SpacerWidget(
                  width: SizeConfig.width * 5,
                ),
                Flexible(
                  flex: 3,
                  child: OrderTypeWidget(
                    title: 'Food Delivery',
                    subtitle: 'Order food you love',
                    image: 'assets/1.png',
                    color: int.parse('0xff1f9A65'),
                    flex: 2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
