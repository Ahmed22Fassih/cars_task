import 'package:cars_task/widgets/agent_view.dart';
import 'package:cars_task/widgets/badge.dart';
import 'package:cars_task/widgets/car_kind.dart';
import 'package:cars_task/widgets/cars_categorys.dart';
import 'package:cars_task/widgets/same_text.dart';
import 'package:cars_task/widgets/top_screen.dart';
import 'package:flutter/material.dart';

class CostPage extends StatelessWidget {

 final Divider div =  Divider(
    height: 5,
    thickness: 5,
  );
  final List<Widget> _listCarsAgent = [
    AgentView(),
    AgentView(),
    AgentView(),
    AgentView(),
    AgentView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopScreen(),
            div,
            CarKind(),
            Divider(
              height: 5,
              thickness: 5,
            ),
            SameText('تصفح حسب الماركة'),
            CarsCategory(),
            div,
            Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SameText('جديد الوكالات')),
            Container(
              height: MediaQuery.of(context).size.height * .25,
              child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: _listCarsAgent),
            ),
            SizedBox(
              height: 5,
            ),
           div,
            SameText('فيديو'),
            Container(
              height: MediaQuery.of(context).size.height * .25,
              child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: _listCarsAgent),
            ),
          ],
        ),
      ),
    );
  }
}
