import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {


  final String imagePath ;



  CarCard({ this.imagePath });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        elevation: 1,
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage(imagePath),
              height: 60.0,
              width: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
