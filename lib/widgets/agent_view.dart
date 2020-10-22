import 'package:flutter/material.dart';


class AgentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*.2,
              width: MediaQuery.of(context).size.width *.75,
              child: Image.asset('assets/images/car2.jpg' , fit: BoxFit.cover),
            ),
            Container(
              height: 30.0,
              width: MediaQuery.of(context).size.width *.75,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("درهم" , style: TextStyle(fontSize: 10),),
                        Text("12000" , style: TextStyle(fontSize: 10),),
                        SizedBox(width: 2,),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text("تبدأ من" , style: TextStyle(fontSize: 10),)),
                      ],
                    ),
                    Text("Audi A2 " , style: TextStyle(fontSize: 15 , fontWeight:  FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
