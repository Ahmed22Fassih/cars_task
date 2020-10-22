import 'package:cars_task/widgets/badge.dart';
import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .25,
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/images/car1.jpg', fit: BoxFit.cover),
        ),
        Positioned(
          left: 10.0,
          top: 20.0,
          right: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Badge(),
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dehaze,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
