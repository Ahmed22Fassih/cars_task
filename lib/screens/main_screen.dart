import 'package:cars_task/pages/agents_page.dart';
import 'package:cars_task/pages/cost_page.dart';
import 'package:cars_task/pages/insurance_page.dart';
import 'package:cars_task/pages/services_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIcon = 1;

  List<Widget> pages;
  Widget currentPage;

  CostPage costPage;
  AgentsPage agentsPage;
  InsurancePage insurancePage;
  ServicesPage servicesPage;

  @override
  void initState() {

    costPage = CostPage();
    agentsPage = AgentsPage();
    insurancePage = InsurancePage();
    servicesPage = ServicesPage();
    pages = [insurancePage,costPage , servicesPage  , agentsPage ];

    currentPage = costPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF3949ab),
          onTap: (int index) {
            setState(() {
              currentTabIcon = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIcon,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("التامين"),

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), title: Text("الثمن")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text("الخدمات")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("الوكالات"))
          ],

        ),
        body: currentPage,
      ),
    );
  }
}
