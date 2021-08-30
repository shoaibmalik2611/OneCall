import 'package:flutter/material.dart';
import 'package:one_call/modal/ordersModal.dart';
import 'package:one_call/utils/theme.dart';
import 'package:one_call/widgets/orderTileWidget.dart';

class Orders extends StatelessWidget {
  List<OrdersModal> ordersList = [
    OrdersModal(
        orderedMealDate: '28 Jul, 01:54',
        orderedMealName: 'BroadWay Pizza',
        orderedMealPrice: 'Rs. 329.00',
        orderedMealType: 'Crazy Deal 2'),
    OrdersModal(
        orderedMealDate: '28 Jul, 01:54',
        orderedMealName: 'BroadWay Pizza',
        orderedMealPrice: 'Rs. 329.00',
        orderedMealType: 'Crazy Deal 2'),
    OrdersModal(
        orderedMealDate: '28 Jul, 01:54',
        orderedMealName: 'BroadWay Pizza',
        orderedMealPrice: 'Rs. 329.00',
        orderedMealType: 'Crazy Deal 2'),
    OrdersModal(
        orderedMealDate: '28 Jul, 01:54',
        orderedMealName: 'BroadWay Pizza',
        orderedMealPrice: 'Rs. 329.00',
        orderedMealType: 'Crazy Deal 2'),
    OrdersModal(
        orderedMealDate: '28 Jul, 01:54',
        orderedMealName: 'BroadWay Pizza',
        orderedMealPrice: 'Rs. 329.00',
        orderedMealType: 'Crazy Deal 2'),
    OrdersModal(
        orderedMealDate: '28 Jul, 01:54',
        orderedMealName: 'BroadWay Pizza',
        orderedMealPrice: 'Rs. 329.00',
        orderedMealType: 'Crazy Deal 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15))),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.pink,
            size: 25,
          ),
        ),
        title: Text(
          'Orders',
          style: AppTheme.heading4Bold,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: ordersList.length,
            itemBuilder: (context, i) {
              return OrderedTileWidget(
                orderedMealName: ordersList[i].orderedMealName,
                orderedMealPrice: ordersList[i].orderedMealPrice,
                orderedMealType: ordersList[i].orderedMealType,
                orderedMealDate: ordersList[i].orderedMealDate,
              );
            }),
      ),
    );
  }
}
