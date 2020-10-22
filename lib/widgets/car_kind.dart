import 'package:flutter/material.dart';

class CarKind extends StatefulWidget {
  @override
  _CarKindState createState() => _CarKindState();
}

class _CarKindState extends State<CarKind> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'تصفح حسب نوع السيارة',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: Column(
                children: [
                  Image.asset(
                    'assets/cars_kinds/carKind.png',
                    color: Colors.blue,
                  ),
                  Text(
                    "Hatchback",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: Column(
                children: [
                  Image.asset(
                    'assets/cars_kinds/carKind.png',
                    color: Colors.blue,
                  ),
                  Text(
                    "Sedan",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: Column(
                children: [
                  Image.asset(
                    'assets/cars_kinds/carKind.png',
                    color: Colors.blue,
                  ),
                  Text(
                    "SUV",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: Column(
                children: [
                  Image.asset(
                    'assets/cars_kinds/carKind.png',
                    color: Colors.blue,
                  ),
                  Text(
                    "Wegon",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
