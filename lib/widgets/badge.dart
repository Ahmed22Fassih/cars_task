import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(Icons.notifications, color: Colors.grey, size: 30,),
        Positioned(
          right: 0,
          child:  Container(
            padding: EdgeInsets.all(1),
            decoration:  BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child:Text(
              '12',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
