import 'package:flutter/material.dart';
import 'package:one_call/modal/addressModal.dart';
import 'package:one_call/utils/constants.dart';
import 'package:one_call/utils/sizeConfig.dart';
import 'package:one_call/utils/theme.dart';
import 'package:one_call/widgets/addressTileWidget.dart';

class Address extends StatelessWidget {
  final List<AddressModal> addresses = [
    AddressModal(address: '44 Lahore', riderNote: 'none'),
    AddressModal(address: 'Cavalry Ground Lahore', riderNote: 'none'),
    AddressModal(address: 'Valencia Lahore', riderNote: 'none'),
    AddressModal(address: 'Johar Town Lahore', riderNote: 'none'),
    AddressModal(address: '44 Lahore', riderNote: 'none'),
    AddressModal(address: '44 Lahore', riderNote: 'none'),
    AddressModal(address: '44 Lahore', riderNote: 'none'),
    AddressModal(address: '44 Lahore', riderNote: 'none'),
    AddressModal(address: '44 Lahore', riderNote: 'none'),
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
          'Addresses',
          style: AppTheme.heading4Bold,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(children: [
          Expanded(
            flex: 9,
            child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Divider(),
                  );
                },
                itemCount: addresses.length,
                itemBuilder: (context, i) {
                  return AddressTileWidget(
                    address: addresses[i].address,
                    riderNote: addresses[i].riderNote,
                  );
                }),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: SizeConfig.width * 100,
              height: SizeConfig.height * 8,
              color: Colors.white,
              child: ButtonTheme(
                buttonColor: Colors.pink,
                minWidth: SizeConfig.width * 100,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: pink,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Text(
                        'Add new Address',
                        style: AppTheme.regularTextWhite,
                      )),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
