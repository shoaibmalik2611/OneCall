import 'package:flutter/material.dart';
import 'package:one_call/utils/theme.dart';

class AddressTileWidget extends StatelessWidget {
  final String? address, riderNote;

  AddressTileWidget({this.riderNote, this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.home_outlined,
            color: Colors.pink,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: AppTheme.heading4Bold,
              ),
              SizedBox(height: 5),
              Text(
                address!,
                style: AppTheme.regularText,
              ),
              Text(
                'Note to rider: ${riderNote!}',
                style: AppTheme.regularText,
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.edit,
            color: Colors.pink,
          ),
          Icon(
            Icons.delete_outline,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
