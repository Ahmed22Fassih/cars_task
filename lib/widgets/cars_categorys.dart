import 'package:cars_task/data/categories.dart';
import 'package:cars_task/models/car_category.dart';
import 'package:cars_task/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarsCategory extends StatelessWidget {

  final List<CarCategory> _categories = categories ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .08,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context , int  index ){
          return CarCard(
            imagePath: _categories[index].imagePath,
          );
        },
      ),
    ) ;
  }
}
